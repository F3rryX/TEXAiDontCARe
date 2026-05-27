package com.texa.carelib.profile.taskexecutor;

import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import java.beans.PropertyChangeEvent;

/* JADX INFO: loaded from: classes2.dex */
public class SynchronizedTask extends ObservableObjectBase implements Runnable, Comparable<SynchronizedTask> {
    private static final int DEFAULT_TIMEOUT = 900000;
    public static final int MAX_PRIORITY = 100;
    public static final int MIN_PRIORITY = 1;
    public static final int NORM_PRIORITY = 50;
    public static final String PROPERTY_STATUS = "com.texa.carelib.profile.taskexecutor.SynchronizedTask#PROPERTY_STATUS";
    public static final String TAG = "SynchronizedTask";
    final Runnable mCommand;
    private final String mName;
    final int mPriority;
    final int mTimeout;
    private final ReentrantLockWrapper mStatusLock = new ReentrantLockWrapper(TAG, "mStatusLock");
    private SynchronizedTaskStatus mStatus = SynchronizedTaskStatus.InQueue;

    public int getPriority() {
        return this.mPriority;
    }

    public int getTimeout() {
        return this.mTimeout;
    }

    public String getName() {
        return this.mName;
    }

    SynchronizedTask(String str, Runnable runnable, int i, int i2) {
        this.mName = str;
        this.mCommand = runnable;
        this.mPriority = i;
        this.mTimeout = i2;
    }

    @Override // java.lang.Comparable
    public int compareTo(SynchronizedTask synchronizedTask) {
        int i = this.mPriority;
        int i2 = synchronizedTask.mPriority;
        if (i > i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    public SynchronizedTaskStatus getStatus() {
        this.mStatusLock.lock("getEnumValue");
        try {
            return this.mStatus;
        } finally {
            this.mStatusLock.unlock("getEnumValue");
        }
    }

    private void setStatus(SynchronizedTaskStatus synchronizedTaskStatus) {
        this.mStatusLock.lock("setStatus");
        try {
            SynchronizedTaskStatus synchronizedTaskStatus2 = this.mStatus;
            this.mStatus = synchronizedTaskStatus;
            this.mStatusLock.unlock("setStatus");
            firePropertyChange(new PropertyChangeEvent(this, PROPERTY_STATUS, synchronizedTaskStatus2, synchronizedTaskStatus));
        } catch (Throwable th) {
            this.mStatusLock.unlock("setStatus");
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                setStatus(SynchronizedTaskStatus.Running);
                this.mCommand.run();
                CareLog.d(TaskSynchronizer.TAG, "Task %s has started successfully.", this.mName);
            } catch (Exception e) {
                CareLog.e(TaskSynchronizer.TAG, e, "Could not start the task: %s.", this.mName);
            }
        } finally {
            setStatus(SynchronizedTaskStatus.Completed);
        }
    }

    public static class Builder {
        private final Runnable mCommand;
        private final String mName;
        private int mPriority = 50;
        private int mTimeout = SynchronizedTask.DEFAULT_TIMEOUT;

        public Builder(String str, Runnable runnable) {
            this.mName = str;
            this.mCommand = runnable;
        }

        public Builder setPriority(int i) {
            if (i < 1 || i > 100) {
                throw new IllegalArgumentException("priority must be in the range 1 to 100.");
            }
            this.mPriority = i;
            return this;
        }

        public Builder setTimeout(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("timeout cannot be less than 0.");
            }
            this.mTimeout = i;
            return this;
        }

        public SynchronizedTask build() {
            return new SynchronizedTask(this.mName, this.mCommand, this.mPriority, this.mTimeout);
        }
    }
}
