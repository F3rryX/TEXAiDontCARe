package com.texa.care.eco_driving.score;

import com.texa.care.eco_driving.events.drivingevents.DrivingEvent;
import com.texa.care.eco_driving.events.scoreevents.ScoreUpdateEvent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IScore {
    List<DrivingEvent> getEvents();

    int getScore();

    List<ScoreUpdateEvent> getScoreUpdates();

    ScoreType getType();
}
