package com.texa.carelib.care.trips;

/* JADX INFO: loaded from: classes2.dex */
public class CountersDescriptionType {
    private float mBinSize;
    private float mMaxValueX;
    private float mMinValueX;

    public CountersDescriptionType() {
        this.mMinValueX = 0.0f;
        this.mMaxValueX = 0.0f;
        this.mBinSize = 1.0f;
    }

    public CountersDescriptionType(float f, float f2, float f3) {
        this();
        this.mMinValueX = f;
        this.mMaxValueX = f2;
        this.mBinSize = f3;
    }

    public float getMinValueX() {
        return this.mMinValueX;
    }

    public float getMaxValueX() {
        return this.mMaxValueX;
    }

    public float getBinSize() {
        return this.mBinSize;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CountersDescriptionType countersDescriptionType = (CountersDescriptionType) obj;
        return Float.compare(countersDescriptionType.mMinValueX, this.mMinValueX) == 0 && Float.compare(countersDescriptionType.mMaxValueX, this.mMaxValueX) == 0 && Float.compare(countersDescriptionType.mBinSize, this.mBinSize) == 0;
    }

    public int hashCode() {
        float f = this.mMinValueX;
        int iFloatToIntBits = (f != 0.0f ? Float.floatToIntBits(f) : 0) * 31;
        float f2 = this.mMaxValueX;
        int iFloatToIntBits2 = (iFloatToIntBits + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
        float f3 = this.mBinSize;
        return iFloatToIntBits2 + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0);
    }

    public String toString() {
        return "CountersDescriptionType{mMinValueX=" + this.mMinValueX + ", mMaxValueX=" + this.mMaxValueX + ", mBinSize=" + this.mBinSize + '}';
    }
}
