package com.texa.care.eco_driving.events.drivingevents;

/* JADX INFO: loaded from: classes.dex */
public enum DrivingEventType {
    UNDEFINED(0),
    DRIVING_START(1),
    DRIVING_STOP(2),
    ACCELERATIONS(3),
    BRAKES(4),
    HIGH_RPM_ENGINE_COLD(5),
    PARKED_ENGINE_ON(6),
    PARKED_ENGINE_ON_COLD(7),
    HIGH_SPEED(8),
    DRIVING_STOP_TEMP(9);

    private int type;

    DrivingEventType(int i) {
        this.type = i;
    }

    public int getNumericType() {
        return this.type;
    }
}
