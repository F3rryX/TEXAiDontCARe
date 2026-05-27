package com.texa.care.eco_driving.events.drivingevents;

import com.texa.care.eco_driving.score.ParkedEngineOnScore;

/* JADX INFO: loaded from: classes.dex */
public class ParkedEngineOnEvent extends DrivingEvent {
    public ParkedEngineOnEvent(ParkedEngineOnScore parkedEngineOnScore) {
        super(parkedEngineOnScore);
    }

    @Override // com.texa.care.eco_driving.events.drivingevents.DrivingEvent
    public DrivingEventType getType() {
        return DrivingEventType.PARKED_ENGINE_ON;
    }
}
