package com.texa.careapp.impactdetection;

import android.hardware.Sensor;
import android.opengl.Matrix;

/* JADX INFO: loaded from: classes2.dex */
public class AccelerationEvent implements Cloneable {
    private final int mAccuracy;
    private final Sensor mSourceSensor;
    private final long mTimeInMillis;
    private float mX;
    private float mY;
    private float mZ;

    public Sensor getSourceSensor() {
        return this.mSourceSensor;
    }

    public int getAccuracy() {
        return this.mAccuracy;
    }

    public long getTimeInMillis() {
        return this.mTimeInMillis;
    }

    public float getX() {
        return this.mX;
    }

    public float getY() {
        return this.mY;
    }

    public float getZ() {
        return this.mZ;
    }

    AccelerationEvent(Sensor sensor, int i, long j, float f, float f2, float f3) {
        this.mSourceSensor = sensor;
        this.mAccuracy = i;
        this.mTimeInMillis = j;
        this.mX = f;
        this.mY = f2;
        this.mZ = f3;
    }

    void alignZAxis(float[] fArr) {
        if (fArr != null) {
            if (fArr.length == 9) {
                float fRound = Math.round((fArr[0] * this.mX) + (fArr[1] * this.mY) + (fArr[2] * this.mZ));
                float fRound2 = Math.round((fArr[3] * this.mX) + (fArr[4] * this.mY) + (fArr[5] * this.mZ));
                float fRound3 = Math.round((fArr[6] * this.mX) + (fArr[7] * this.mY) + (fArr[8] * this.mZ));
                this.mX = fRound;
                this.mY = fRound2;
                this.mZ = fRound3;
                return;
            }
            if (fArr.length == 16) {
                float[] fArr2 = new float[16];
                Matrix.invertM(fArr2, 0, fArr, 0);
                float fRound4 = Math.round((fArr2[0] * this.mX) + (fArr2[4] * this.mY) + (fArr2[8] * this.mZ));
                float fRound5 = Math.round((fArr2[1] * this.mX) + (fArr2[5] * this.mY) + (fArr2[9] * this.mZ));
                float fRound6 = Math.round((fArr2[2] * this.mX) + (fArr2[6] * this.mY) + (fArr2[10] * this.mZ));
                this.mX = fRound4;
                this.mY = fRound5;
                this.mZ = fRound6;
            }
        }
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public AccelerationEvent m612clone() {
        try {
            return (AccelerationEvent) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }
}
