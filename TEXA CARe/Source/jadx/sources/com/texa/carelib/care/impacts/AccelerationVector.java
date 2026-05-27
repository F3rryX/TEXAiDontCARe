package com.texa.carelib.care.impacts;

/* JADX INFO: loaded from: classes2.dex */
public class AccelerationVector {
    private final long mX;
    private final long mY;
    private final long mZ;

    public long getX() {
        return this.mX;
    }

    public long getY() {
        return this.mY;
    }

    public long getZ() {
        return this.mZ;
    }

    public AccelerationVector(long j, long j2, long j3) {
        this(j, j2, j3, 1L);
    }

    public AccelerationVector(long j, long j2, long j3, long j4) {
        this.mX = j * j4;
        this.mY = j2 * j4;
        this.mZ = j3 * j4;
    }
}
