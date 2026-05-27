package com.texa.care.eco_driving.events.scoreevents;

import com.texa.care.eco_driving.score.ParkedEngineOnScore;
import com.texa.care.eco_driving.score.ScoreType;

/* JADX INFO: loaded from: classes.dex */
public class ParkedEngineOnUpdateScoreEvent extends ScoreUpdateEvent {
    public ParkedEngineOnUpdateScoreEvent(long j, ParkedEngineOnScore parkedEngineOnScore) {
        super(j, parkedEngineOnScore);
    }

    public ParkedEngineOnUpdateScoreEvent(ParkedEngineOnScore parkedEngineOnScore) {
        super(parkedEngineOnScore);
    }

    @Override // com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent
    public ScoreType getType() {
        return ScoreType.PARKED_ENGINE_ON;
    }
}
