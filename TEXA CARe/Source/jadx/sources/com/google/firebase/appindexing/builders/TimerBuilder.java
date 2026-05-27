package com.google.firebase.appindexing.builders;

import com.google.firebase.appindexing.internal.zzae;
import com.texa.careapp.Constants;
import java.util.Calendar;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class TimerBuilder extends IndexableBuilder<TimerBuilder> {
    public static final String EXPIRED = "Expired";
    public static final String MISSED = "Missed";
    public static final String PAUSED = "Paused";
    public static final String RESET = "Reset";
    public static final String STARTED = "Started";
    public static final String UNKNOWN = "Unknown";

    TimerBuilder() {
        super("Timer");
    }

    public TimerBuilder setExpireTime(Calendar calendar) {
        put("expireTime", zzae.zza(calendar));
        return this;
    }

    public TimerBuilder setIdentifier(String str) {
        put("identifier", str);
        return this;
    }

    public TimerBuilder setLength(long j) {
        put("length", j);
        return this;
    }

    public TimerBuilder setMessage(String str) {
        put(Constants.GCM_EXTRA_MESSAGE, str);
        return this;
    }

    public TimerBuilder setRemainingTime(long j) {
        put("remainingTime", j);
        return this;
    }

    public TimerBuilder setRingtone(String str) {
        put("ringtone", str);
        return this;
    }

    public TimerBuilder setTimerStatus(String str) {
        if ("Started".equals(str) || "Paused".equals(str) || EXPIRED.equals(str) || "Missed".equals(str) || RESET.equals(str) || "Unknown".equals(str)) {
            put("timerStatus", str);
            return this;
        }
        String strValueOf = String.valueOf(str);
        throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid timer status ".concat(strValueOf) : new String("Invalid timer status "));
    }

    public TimerBuilder setVibrate(boolean z) {
        put("vibrate", z);
        return this;
    }
}
