package com.texa.care.eco_driving.events.scoreevents;

import com.texa.care.eco_driving.score.ParkedEngineOnColdScore;
import com.texa.care.eco_driving.score.ScoreType;

/* JADX INFO: loaded from: classes.dex */
public class ParkedEngineOnColdScoreUpdateEvent extends ScoreUpdateEvent {
    public ParkedEngineOnColdScoreUpdateEvent(long j, ParkedEngineOnColdScore parkedEngineOnColdScore) {
        super(j, parkedEngineOnColdScore);
    }

    public ParkedEngineOnColdScoreUpdateEvent(ParkedEngineOnColdScore parkedEngineOnColdScore) {
        super(parkedEngineOnColdScore);
    }

    @Override // com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent
    public ScoreType getType() {
        return ScoreType.PARKED_ENGINE_ON_COLD;
    }
}
