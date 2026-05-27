package com.texa.care.eco_driving.events.drivingevents;

import com.texa.care.eco_driving.score.BaseScore;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class DrivingStopEvent extends DrivingEvent {
    public DrivingStopEvent(BaseScore baseScore) {
        super(baseScore);
    }

    public DrivingStopEvent(Date date, BaseScore baseScore) {
        super(date, baseScore);
    }

    @Override // com.texa.care.eco_driving.events.drivingevents.DrivingEvent
    public DrivingEventType getType() {
        return DrivingEventType.DRIVING_STOP;
    }
}
