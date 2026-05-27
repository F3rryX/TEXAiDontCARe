package com.texa.care.eco_driving.events.drivingevents;

import com.texa.care.eco_driving.score.BaseScore;

/* JADX INFO: loaded from: classes.dex */
public class ParkedEngineOnColdEvent extends DrivingEvent {
    @Override // com.texa.care.eco_driving.events.drivingevents.DrivingEvent
    public DrivingEventType getType() {
        return DrivingEventType.PARKED_ENGINE_ON_COLD;
    }

    public ParkedEngineOnColdEvent(BaseScore baseScore) {
        super(baseScore);
    }
}
