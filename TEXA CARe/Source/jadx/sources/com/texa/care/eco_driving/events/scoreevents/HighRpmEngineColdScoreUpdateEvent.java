package com.texa.care.eco_driving.events.scoreevents;

import com.texa.care.eco_driving.score.HighRpmEngineColdScore;
import com.texa.care.eco_driving.score.ScoreType;

/* JADX INFO: loaded from: classes.dex */
public class HighRpmEngineColdScoreUpdateEvent extends ScoreUpdateEvent {
    public HighRpmEngineColdScoreUpdateEvent(long j, HighRpmEngineColdScore highRpmEngineColdScore) {
        super(j, highRpmEngineColdScore);
    }

    public HighRpmEngineColdScoreUpdateEvent(HighRpmEngineColdScore highRpmEngineColdScore) {
        super(highRpmEngineColdScore);
    }

    @Override // com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent
    public ScoreType getType() {
        return ScoreType.HIGH_RPM_ENGINE_COLD;
    }
}
