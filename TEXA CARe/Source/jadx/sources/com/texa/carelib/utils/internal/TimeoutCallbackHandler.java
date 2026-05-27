package com.texa.carelib.utils.internal;

import android.os.Handler;
import com.texa.carelib.utils.TimeoutCallback;

/* JADX INFO: loaded from: classes2.dex */
public class TimeoutCallbackHandler implements TimeoutCallback {
    private boolean mCancel;
    private final Handler mHandler;
    private Runnable mScheduledRunnable;

    public TimeoutCallbackHandler(Handler handler) {
        this.mHandler = handler;
    }

    @Override // com.texa.carelib.utils.TimeoutCallback
    public synchronized boolean set(final Runnable runnable, long j) {
        boolean zPostDelayed;
        if (this.mScheduledRunnable != null) {
            throw new IllegalStateException("Callback already set!");
        }
        this.mCancel = false;
        zPostDelayed = this.mHandler.postDelayed(new Runnable() { // from class: com.texa.carelib.utils.internal.TimeoutCallbackHandler$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m772x2178a38b(runnable);
            }
        }, j);
        this.mScheduledRunnable = runnable;
        return zPostDelayed;
    }

    /* JADX INFO: renamed from: lambda$set$0$com-texa-carelib-utils-internal-TimeoutCallbackHandler, reason: not valid java name */
    public /* synthetic */ void m772x2178a38b(Runnable runnable) {
        if (this.mCancel) {
            return;
        }
        runnable.run();
    }

    @Override // com.texa.carelib.utils.TimeoutCallback
    public synchronized boolean cancel() {
        this.mHandler.removeCallbacks(this.mScheduledRunnable);
        this.mScheduledRunnable = null;
        this.mCancel = true;
        reset();
        return this.mScheduledRunnable == null;
    }

    public void reset() {
        this.mHandler.removeCallbacksAndMessages(null);
    }
}
