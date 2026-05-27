package com.texa.care.eco_driving.events.drivingevents;

import com.texa.care.eco_driving.Constants;
import com.texa.care.eco_driving.score.BrakesScore;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class BrakesEvent extends DrivingEvent {
    public BrakesEvent(Date date, BrakesScore brakesScore) {
        super(date, brakesScore);
        this.extra.put(Constants.PREV_SNAPSHOT, brakesScore.getSnapshotStack().getPrev());
        this.extra.put(Constants.CUR_SNAPSHOT, brakesScore.getSnapshotStack().getCur());
    }

    @Override // com.texa.care.eco_driving.events.drivingevents.DrivingEvent
    public DrivingEventType getType() {
        return DrivingEventType.BRAKES;
    }
}
