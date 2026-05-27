package com.texa.careapp.app.sos.countdown;

import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class CountdownTimerImpl extends AbstractCountdownTimer {
    protected static int COUNT_INITIAL_VALUE = 15;
    private static final int INTERVAL = 1000;
    private static final int MILLIS_IN_FUTURE = 15 * 1000;
    private static final String TAG = "CountdownTimerImpl";
    private int mCount;
    private CountdownFinishedEvent mCountdownFinishedEvent;
    private CountdownUpdateEvent mCountdownUpdateEvent;

    @Override // com.texa.careapp.app.sos.countdown.AbstractCountdownTimer
    public /* bridge */ /* synthetic */ void cancel() {
        super.cancel();
    }

    public CountdownTimerImpl() {
        super(MILLIS_IN_FUTURE, 1000L);
        this.mCount = COUNT_INITIAL_VALUE;
        this.mCountdownUpdateEvent = new CountdownUpdateEvent();
        this.mCountdownFinishedEvent = new CountdownFinishedEvent();
    }

    public CountdownTimerImpl(int i) {
        super(i * 1000, 1000L);
        this.mCount = COUNT_INITIAL_VALUE;
        this.mCountdownUpdateEvent = new CountdownUpdateEvent();
        this.mCountdownFinishedEvent = new CountdownFinishedEvent();
        COUNT_INITIAL_VALUE = i;
    }

    @Override // com.texa.careapp.app.sos.countdown.AbstractCountdownTimer
    public synchronized CountdownTimerImpl start() {
        super.start();
        postUpdate();
        return this;
    }

    protected CountdownUpdateEvent postUpdate() {
        CountdownUpdateEvent countdownUpdateEvent = this.mCountdownUpdateEvent;
        int i = this.mCount;
        this.mCount = i - 1;
        countdownUpdateEvent.setCount(i);
        EventBus.getDefault().post(this.mCountdownUpdateEvent);
        return this.mCountdownUpdateEvent;
    }

    @Override // com.texa.careapp.app.sos.countdown.AbstractCountdownTimer
    public void onTick(long j) {
        postUpdate();
    }

    @Override // com.texa.careapp.app.sos.countdown.AbstractCountdownTimer
    public void onFinish() {
        EventBus.getDefault().post(this.mCountdownFinishedEvent);
    }

    public void reset() {
        this.mCount = COUNT_INITIAL_VALUE;
    }
}
