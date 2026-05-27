package com.texa.care.eco_driving.events.scoreevents;

import com.texa.care.eco_driving.score.AccelerationsScore;
import com.texa.care.eco_driving.score.ScoreType;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AccelerationsScoreUpdateEvent extends ScoreUpdateEvent {
    public AccelerationsScoreUpdateEvent(long j, AccelerationsScore accelerationsScore) {
        super(j, accelerationsScore);
    }

    public AccelerationsScoreUpdateEvent(long j, AccelerationsScore accelerationsScore, HashMap<String, Object> map) {
        super(j, accelerationsScore);
        if (map != null) {
            this.extra.putAll(map);
        }
    }

    public AccelerationsScoreUpdateEvent(AccelerationsScore accelerationsScore) {
        super(accelerationsScore);
    }

    @Override // com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent
    public ScoreType getType() {
        return ScoreType.ACCELERATIONS;
    }
}
