package com.texa.carelib.utils.internal;

import android.os.CountDownTimer;
import android.os.Looper;
import com.texa.carelib.utils.TimeoutCallback;

/* JADX INFO: loaded from: classes2.dex */
public class TimeoutCallbackCountdownTimer implements TimeoutCallback {
    private CountDownTimer mCountDownTimer;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.texa.carelib.utils.internal.TimeoutCallbackCountdownTimer$1] */
    @Override // com.texa.carelib.utils.TimeoutCallback
    public boolean set(final Runnable runnable, long j) {
        if (this.mCountDownTimer != null) {
            throw new IllegalStateException("Callback already set.");
        }
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        CountDownTimer countDownTimerStart = new CountDownTimer(j, 1000L) { // from class: com.texa.carelib.utils.internal.TimeoutCallbackCountdownTimer.1
            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                runnable.run();
                TimeoutCallbackCountdownTimer.this.mCountDownTimer = null;
            }
        }.start();
        this.mCountDownTimer = countDownTimerStart;
        return countDownTimerStart != null;
    }

    @Override // com.texa.carelib.utils.TimeoutCallback
    public boolean cancel() {
        CountDownTimer countDownTimer = this.mCountDownTimer;
        if (countDownTimer == null) {
            return true;
        }
        countDownTimer.cancel();
        this.mCountDownTimer = null;
        return true;
    }
}
