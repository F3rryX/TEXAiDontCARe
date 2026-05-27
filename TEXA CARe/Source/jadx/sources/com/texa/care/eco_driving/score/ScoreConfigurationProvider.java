package com.texa.care.eco_driving.score;

import com.texa.care.eco_driving.score.BaseScore;

/* JADX INFO: loaded from: classes.dex */
public interface ScoreConfigurationProvider {
    BaseScore.DrivingProfile getDrivingProfile();

    double getScoreUpdateRate();
}
