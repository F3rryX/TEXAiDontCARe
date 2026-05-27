package com.texa.care.eco_driving.events.scoreevents;

import com.texa.care.eco_driving.score.OverallScore;
import com.texa.care.eco_driving.score.ScoreType;

/* JADX INFO: loaded from: classes.dex */
public class OverallScoreUpdateEvent extends ScoreUpdateEvent {
    public OverallScoreUpdateEvent(long j, OverallScore overallScore) {
        super(j, overallScore);
    }

    public OverallScoreUpdateEvent(OverallScore overallScore) {
        super(overallScore);
    }

    @Override // com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent
    public ScoreType getType() {
        return ScoreType.OVERALL;
    }
}
