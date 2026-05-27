package com.texa.careapp.impactdetection;

import android.hardware.Sensor;

/* JADX INFO: loaded from: classes2.dex */
public class RotationMatrixChangedEvent {
    private final float[] mRotationMatrix;
    private final Sensor mSourceSensor;

    public float[] getRotationMatrix() {
        return this.mRotationMatrix;
    }

    public Sensor getSourceSensor() {
        return this.mSourceSensor;
    }

    public RotationMatrixChangedEvent(Sensor sensor, float[] fArr) {
        this.mSourceSensor = sensor;
        this.mRotationMatrix = fArr;
    }
}
