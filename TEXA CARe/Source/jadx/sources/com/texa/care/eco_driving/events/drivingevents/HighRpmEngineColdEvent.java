package com.texa.care.eco_driving.events.drivingevents;

import com.texa.care.eco_driving.Constants;
import com.texa.care.eco_driving.score.HighRpmEngineColdScore;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class HighRpmEngineColdEvent extends DrivingEvent {
    public HighRpmEngineColdEvent(Date date, HighRpmEngineColdScore highRpmEngineColdScore) {
        super(date, highRpmEngineColdScore);
        this.extra.put(Constants.PREV_SNAPSHOT, highRpmEngineColdScore.getSnapshotStack().getPrev());
        this.extra.put(Constants.CUR_SNAPSHOT, highRpmEngineColdScore.getSnapshotStack().getCur());
    }

    @Override // com.texa.care.eco_driving.events.drivingevents.DrivingEvent
    public DrivingEventType getType() {
        return DrivingEventType.HIGH_RPM_ENGINE_COLD;
    }
}
