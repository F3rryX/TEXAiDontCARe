package com.texa.carelib.care.trips;

import com.texa.carelib.core.Range;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleAccelerationCounter {
    private final Range<Float> mAngleRange;
    private final Range<Float> mIntensityRange;
    private final int mValue;

    public Range<Float> getAngleRange() {
        return this.mAngleRange;
    }

    public Range<Float> getIntensityRange() {
        return this.mIntensityRange;
    }

    public int getValue() {
        return this.mValue;
    }

    public VehicleAccelerationCounter(Range<Float> range, Range<Float> range2, int i) {
        this.mAngleRange = range;
        this.mIntensityRange = range2;
        this.mValue = i;
    }
}
