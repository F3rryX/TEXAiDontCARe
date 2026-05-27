package com.texa.carelib.profile.taskexecutor;

import android.os.Handler;
import android.os.Looper;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.utils.TimeoutCallback;
import com.texa.carelib.utils.internal.TimeoutCallbackHandler;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TaskSynchronizer {
    public static final String TAG = "TaskSynchronizer";
    private static TaskSynchronizer _Instance;
    private final CareExecutor executor;
    private SynchronizedTask mActiveRunnable;
    private final Object mLock = new Object();
    private TimeoutCallback mTimeoutCallback = new TimeoutCallbackHandler(new Handler(Looper.getMainLooper()));
    private final TaskRequestQueue mTaskRequestQueue = new TaskRequestQueue();

    public static void createInstance(CareExecutor careExecutor) {
        if (_Instance == null) {
            _Instance = new TaskSynchronizer(careExecutor);
        }
    }

    public static TaskSynchronizer getInstance() {
        TaskSynchronizer taskSynchronizer = _Instance;
        if (taskSynchronizer != null) {
            return taskSynchronizer;
        }
        throw new IllegalStateException("Instance not yet created. Call createInstance() before!");
    }

    private TaskSynchronizer(CareExecutor careExecutor) {
        this.executor = careExecutor;
    }

    public void clear(boolean z) {
        this.mTaskRequestQueue.clear();
        this.mTimeoutCallback.cancel();
        this.executor.interruptAll();
        synchronized (this.mLock) {
            this.mActiveRunnable = null;
        }
    }

    public void execute(SynchronizedTask synchronizedTask) {
        boolean z;
        synchronized (this.mLock) {
            z = this.mActiveRunnable == null;
        }
        CareLog.v(TAG, "Enqueue task: %s", synchronizedTask.getName());
        this.mTaskRequestQueue.add(synchronizedTask);
        if (z) {
            executeNext();
        }
    }

    public SynchronizedTask executeNext() {
        SynchronizedTask synchronizedTaskPoll;
        this.mTimeoutCallback.cancel();
        SynchronizedTask synchronizedTask = this.mActiveRunnable;
        if (synchronizedTask != null) {
            CareLog.v(TAG, "Task: %s [END]", synchronizedTask.getName());
        }
        synchronized (this.mLock) {
            synchronizedTaskPoll = this.mTaskRequestQueue.poll();
            this.mActiveRunnable = synchronizedTaskPoll;
        }
        if (synchronizedTaskPoll != null) {
            CareLog.v(TAG, "Task: %s [BEGIN]", synchronizedTaskPoll.getName());
            this.executor.execute(this.mActiveRunnable);
            this.mTimeoutCallback.set(new Runnable() { // from class: com.texa.carelib.profile.taskexecutor.TaskSynchronizer$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onTaskTimeout();
                }
            }, this.mActiveRunnable.getTimeout());
        }
        return synchronizedTaskPoll;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTaskTimeout() {
        synchronized (this.mLock) {
            SynchronizedTask synchronizedTask = this.mActiveRunnable;
            if (synchronizedTask == null) {
                CareLog.wtf(TAG, "Null task requires too much time for execution!!!!!", new Object[0]);
            } else {
                CareLog.w(TAG, "Task %s [TIMEOUT]", synchronizedTask.getName());
                this.mActiveRunnable = null;
            }
        }
        executeNext();
    }

    private static class TaskRequestQueue {
        private final Object mLock;
        private final List<SynchronizedTask> mTaskQueue;

        public TaskRequestQueue() {
            Object obj = new Object();
            this.mLock = obj;
            synchronized (obj) {
                this.mTaskQueue = new ArrayList();
            }
        }

        public boolean add(SynchronizedTask synchronizedTask) {
            boolean zAdd;
            synchronized (this.mLock) {
                zAdd = this.mTaskQueue.add(synchronizedTask);
                Collections.sort(this.mTaskQueue);
            }
            return zAdd;
        }

        public void clear() {
            synchronized (this.mLock) {
                this.mTaskQueue.clear();
            }
        }

        public SynchronizedTask poll() {
            SynchronizedTask synchronizedTask;
            synchronized (this.mLock) {
                if (this.mTaskQueue.size() > 0) {
                    synchronizedTask = this.mTaskQueue.get(0);
                    this.mTaskQueue.remove(0);
                } else {
                    synchronizedTask = null;
                }
            }
            return synchronizedTask;
        }
    }
}
