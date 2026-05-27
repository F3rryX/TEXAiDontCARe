package com.texa.care.eco_driving.score;

/* JADX INFO: loaded from: classes.dex */
public enum ScoreType {
    UNDEFINED(0),
    OVERALL(1),
    ACCELERATIONS(2),
    BRAKES(3),
    HIGH_RPM_ENGINE_COLD(4),
    PARKED_ENGINE_ON(5),
    PARKED_ENGINE_ON_COLD(6),
    HIGH_SPEED(7);

    private int type;

    ScoreType(int i) {
        this.type = i;
    }

    public int getNumericType() {
        return this.type;
    }
}
