package com.texa.carelib.core;

/* JADX INFO: loaded from: classes2.dex */
public class CounterInfo {
    private final Range<Float> mRange;
    private final int mValue;

    public CounterInfo(Range<Float> range, int i) {
        this.mRange = range;
        this.mValue = i;
    }

    public Range<Float> getRange() {
        return this.mRange;
    }

    public int getValue() {
        return this.mValue;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CounterInfo)) {
            return false;
        }
        CounterInfo counterInfo = (CounterInfo) obj;
        if (this.mValue != counterInfo.mValue) {
            return false;
        }
        return this.mRange.equals(counterInfo.mRange);
    }

    public int hashCode() {
        return (this.mRange.hashCode() * 31) + this.mValue;
    }
}
