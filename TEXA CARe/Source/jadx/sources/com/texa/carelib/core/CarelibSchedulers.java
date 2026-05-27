package com.texa.carelib.core;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class CarelibSchedulers {
    private static Scheduler _mainThread;

    public interface Scheduler {
        void schedule(Runnable runnable);

        void schedule(Runnable runnable, long j, TimeUnit timeUnit);
    }

    private CarelibSchedulers() {
    }

    public static Scheduler mainThread() {
        if (_mainThread == null) {
            _mainThread = new MainThreadScheduler2();
        }
        return _mainThread;
    }

    static class MainThreadScheduler implements Scheduler {
        private final ScheduledExecutorService mScheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
        private final Thread mUIThread = Thread.currentThread();

        MainThreadScheduler() {
        }

        @Override // com.texa.carelib.core.CarelibSchedulers.Scheduler
        public void schedule(Runnable runnable) {
            schedule(runnable, 0L, TimeUnit.MILLISECONDS);
        }

        @Override // com.texa.carelib.core.CarelibSchedulers.Scheduler
        public void schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (j == 0 && Thread.currentThread() == this.mUIThread) {
                runnable.run();
            } else {
                this.mScheduledExecutorService.schedule(runnable, j, timeUnit);
            }
        }
    }

    static class MainThreadScheduler2 implements Scheduler {
        private Handler mHandler;
        private final Thread mUIThread = Thread.currentThread();

        MainThreadScheduler2() {
        }

        @Override // com.texa.carelib.core.CarelibSchedulers.Scheduler
        public void schedule(Runnable runnable) {
            if (isUIThread()) {
                runnable.run();
                return;
            }
            if (this.mHandler == null) {
                this.mHandler = initHandler();
            }
            this.mHandler.post(runnable);
        }

        @Override // com.texa.carelib.core.CarelibSchedulers.Scheduler
        public void schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            if (isUIThread() && j == 0) {
                runnable.run();
                return;
            }
            if (this.mHandler == null) {
                this.mHandler = initHandler();
            }
            this.mHandler.postDelayed(runnable, timeUnit.toMillis(j));
        }

        private Handler initHandler() {
            return new Handler(Looper.getMainLooper());
        }

        private boolean isUIThread() {
            return Thread.currentThread() == this.mUIThread;
        }
    }

    static class MainThreadScheduler3 implements Scheduler {
        private final Handler mMainHandler;
        private final Thread mUiThread = Thread.currentThread();

        MainThreadScheduler3(Context context) {
            this.mMainHandler = new Handler(context.getMainLooper());
        }

        @Override // com.texa.carelib.core.CarelibSchedulers.Scheduler
        public void schedule(Runnable runnable) {
            if (Thread.currentThread() != this.mUiThread) {
                this.mMainHandler.post(runnable);
            } else {
                runnable.run();
            }
        }

        @Override // com.texa.carelib.core.CarelibSchedulers.Scheduler
        public void schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            this.mMainHandler.postAtTime(runnable, TimeUnit.MILLISECONDS.convert(j, timeUnit));
        }
    }
}
