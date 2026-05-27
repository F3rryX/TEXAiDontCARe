package com.google.firebase.appindexing.builders;

import com.google.firebase.appindexing.internal.zzae;
import java.util.Calendar;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class StopwatchBuilder extends IndexableBuilder<StopwatchBuilder> {
    public static final String PAUSED = "Paused";
    public static final String STARTED = "Started";
    public static final String UNKNOWN = "Unknown";

    StopwatchBuilder() {
        super("Stopwatch");
    }

    public StopwatchBuilder setElapsedTime(long j) {
        put("elapsedTime", j);
        return this;
    }

    public StopwatchBuilder setLaps(StopwatchLapBuilder... stopwatchLapBuilderArr) {
        put("laps", stopwatchLapBuilderArr);
        return this;
    }

    public StopwatchBuilder setStartTime(Calendar calendar) {
        put("startTime", zzae.zza(calendar));
        return this;
    }

    public StopwatchBuilder setStopwatchStatus(String str) {
        if ("Started".equals(str) || "Paused".equals(str) || "Unknown".equals(str)) {
            put("stopwatchStatus", str);
            return this;
        }
        String strValueOf = String.valueOf(str);
        throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid stopwatch status ".concat(strValueOf) : new String("Invalid stopwatch status "));
    }
}
