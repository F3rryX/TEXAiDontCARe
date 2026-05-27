package com.texa.careapp.app.sos.countdown;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractCountdownTimer {
    private static final int MSG = 1;
    private final long mCountdownInterval;
    private Handler mHandler = new Handler() { // from class: com.texa.careapp.app.sos.countdown.AbstractCountdownTimer.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (AbstractCountdownTimer.this) {
                long jUptimeMillis = AbstractCountdownTimer.this.mStopTimeInFuture - SystemClock.uptimeMillis();
                if (jUptimeMillis <= 0) {
                    AbstractCountdownTimer.this.onFinish();
                } else {
                    AbstractCountdownTimer.this.onTick(jUptimeMillis);
                    long jUptimeMillis2 = SystemClock.uptimeMillis();
                    do {
                        AbstractCountdownTimer abstractCountdownTimer = AbstractCountdownTimer.this;
                        AbstractCountdownTimer.access$114(abstractCountdownTimer, abstractCountdownTimer.mCountdownInterval);
                    } while (jUptimeMillis2 > AbstractCountdownTimer.this.mNextTime);
                    if (AbstractCountdownTimer.this.mNextTime < AbstractCountdownTimer.this.mStopTimeInFuture) {
                        sendMessageAtTime(obtainMessage(1), AbstractCountdownTimer.this.mNextTime);
                    } else {
                        sendMessageAtTime(obtainMessage(1), AbstractCountdownTimer.this.mStopTimeInFuture);
                    }
                }
            }
        }
    };
    private final long mMillisInFuture;
    private long mNextTime;
    private long mStopTimeInFuture;

    public abstract void onFinish();

    public abstract void onTick(long j);

    static /* synthetic */ long access$114(AbstractCountdownTimer abstractCountdownTimer, long j) {
        long j2 = abstractCountdownTimer.mNextTime + j;
        abstractCountdownTimer.mNextTime = j2;
        return j2;
    }

    public AbstractCountdownTimer(long j, long j2) {
        this.mMillisInFuture = j;
        this.mCountdownInterval = j2;
    }

    public void cancel() {
        this.mHandler.removeMessages(1);
    }

    public synchronized AbstractCountdownTimer start() {
        if (this.mMillisInFuture <= 0) {
            onFinish();
            return this;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.mNextTime = jUptimeMillis;
        this.mStopTimeInFuture = this.mMillisInFuture + jUptimeMillis;
        this.mNextTime = jUptimeMillis + this.mCountdownInterval;
        Handler handler = this.mHandler;
        handler.sendMessageAtTime(handler.obtainMessage(1), this.mNextTime);
        return this;
    }
}
