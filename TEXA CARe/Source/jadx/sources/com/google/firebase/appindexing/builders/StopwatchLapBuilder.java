package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public class StopwatchLapBuilder extends IndexableBuilder<StopwatchLapBuilder> {
    StopwatchLapBuilder() {
        super("StopwatchLap");
    }

    public StopwatchLapBuilder setAccumulatedTime(long j) {
        return put("accumulatedTime", j);
    }

    public StopwatchLapBuilder setElapsedTime(long j) {
        return put("elapsedTime", j);
    }
}
