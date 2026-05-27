package com.texa.care.eco_driving;

import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;

/* JADX INFO: loaded from: classes.dex */
public interface EcoDrivingCallback {
    void drivingEventCall(DrivingEvent drivingEvent, boolean z);

    void scoreUpdateCall(ScoreUpdateEvent scoreUpdateEvent);
}
