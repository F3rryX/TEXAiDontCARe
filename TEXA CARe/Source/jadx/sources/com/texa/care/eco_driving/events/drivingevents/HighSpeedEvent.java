package com.texa.care.eco_driving.events.drivingevents;

import com.texa.care.eco_driving.Constants;
import com.texa.care.eco_driving.score.HighSpeedScore;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class HighSpeedEvent extends DrivingEvent {
    public HighSpeedEvent(Date date, HighSpeedScore highSpeedScore) {
        super(date, highSpeedScore);
        this.extra.put(Constants.PREV_SNAPSHOT, highSpeedScore.getSnapshotStack().getPrev());
        this.extra.put(Constants.CUR_SNAPSHOT, highSpeedScore.getSnapshotStack().getCur());
    }

    @Override // com.texa.care.eco_driving.events.drivingevents.DrivingEvent
    public DrivingEventType getType() {
        return DrivingEventType.HIGH_SPEED;
    }
}
