package com.texa.carelib.care.attitude;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class RotationMatrix {
    private float[] mData;
    private int mStatus;
    private Date mTimeStamp;

    public RotationMatrix(float[] fArr, Date date, int i) {
        this.mData = fArr;
        this.mTimeStamp = date;
        this.mStatus = i;
    }

    public float[] getData() {
        return this.mData;
    }

    public int getStatus() {
        return this.mStatus;
    }

    public Date getTimeStamp() {
        return this.mTimeStamp;
    }

    public boolean isValid() {
        float[] fArr;
        return (this.mStatus == 0 || (fArr = this.mData) == null || fArr.length < 9) ? false : true;
    }
}
