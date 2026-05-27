package com.texa.care.eco_driving.events.drivingevents;

import com.texa.care.eco_driving.Constants;
import com.texa.care.eco_driving.score.AccelerationsScore;
import java.util.Date;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class AccelerationsEvent extends DrivingEvent {
    public AccelerationsEvent(Date date, AccelerationsScore accelerationsScore) {
        super(date, accelerationsScore);
        Timber.d("Acceleration event Created", new Object[0]);
        this.extra.put(Constants.PREV_SNAPSHOT, accelerationsScore.getSnapshotStack().getPrev());
        this.extra.put(Constants.CUR_SNAPSHOT, accelerationsScore.getSnapshotStack().getCur());
    }

    @Override // com.texa.care.eco_driving.events.drivingevents.DrivingEvent
    public DrivingEventType getType() {
        return DrivingEventType.ACCELERATIONS;
    }
}
