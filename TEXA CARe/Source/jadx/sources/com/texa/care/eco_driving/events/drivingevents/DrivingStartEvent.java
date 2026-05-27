package com.texa.care.eco_driving.events.drivingevents;

import com.texa.care.eco_driving.score.BaseScore;

/* JADX INFO: loaded from: classes.dex */
public class DrivingStartEvent extends DrivingEvent {
    public DrivingStartEvent(BaseScore baseScore) {
        super(baseScore);
    }

    @Override // com.texa.care.eco_driving.events.drivingevents.DrivingEvent
    public DrivingEventType getType() {
        return DrivingEventType.DRIVING_START;
    }
}
