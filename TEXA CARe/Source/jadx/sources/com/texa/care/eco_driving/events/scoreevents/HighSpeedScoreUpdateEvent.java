package com.texa.care.eco_driving.events.scoreevents;

import com.texa.care.eco_driving.score.HighSpeedScore;
import com.texa.care.eco_driving.score.ScoreType;

/* JADX INFO: loaded from: classes.dex */
public class HighSpeedScoreUpdateEvent extends ScoreUpdateEvent {
    public HighSpeedScoreUpdateEvent(long j, HighSpeedScore highSpeedScore) {
        super(j, highSpeedScore);
    }

    public HighSpeedScoreUpdateEvent(HighSpeedScore highSpeedScore) {
        super(highSpeedScore);
    }

    @Override // com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent
    public ScoreType getType() {
        return ScoreType.HIGH_SPEED;
    }
}
