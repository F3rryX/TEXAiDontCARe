package com.texa.care.eco_driving.events.scoreevents;

import com.texa.care.eco_driving.score.BrakesScore;
import com.texa.care.eco_driving.score.ScoreType;

/* JADX INFO: loaded from: classes.dex */
public class BrakesScoreUpdateEvent extends ScoreUpdateEvent {
    public BrakesScoreUpdateEvent(long j, BrakesScore brakesScore) {
        super(j, brakesScore);
    }

    public BrakesScoreUpdateEvent(BrakesScore brakesScore) {
        super(brakesScore);
    }

    @Override // com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent
    public ScoreType getType() {
        return ScoreType.BRAKES;
    }
}
