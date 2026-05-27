package com.texa.carelib.care.impacts;

import com.texa.carelib.core.utils.CareStruct;
import com.texa.carelib.core.utils.internal.Utils;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VerboseCrashReport implements CareStruct {
    public static final Long CRASH_ID_UNDEF = 0L;
    private final List<AccelerationVector> mAccelerationVectors;
    private final long mCrashID;
    private final int mNumberOfSamples;
    private final AccelerationVector mOffsetComponents;
    private final byte[] mRawData;
    private final Integer mSampleFrequency;
    private final List<Integer> mSpeedVectors;
    private final Date mTimestamp;
    private final Long mTripNumber;
    private final int mVersion;

    public VerboseCrashReport(byte[] bArr, int i, long j, AccelerationVector accelerationVector, Long l, Date date, int i2, List<AccelerationVector> list, List<Integer> list2, Integer num) {
        this.mOffsetComponents = accelerationVector;
        this.mCrashID = j;
        this.mRawData = bArr;
        this.mVersion = i;
        this.mTripNumber = l;
        this.mTimestamp = date;
        this.mNumberOfSamples = i2;
        this.mAccelerationVectors = list;
        this.mSpeedVectors = list2;
        this.mSampleFrequency = num;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public int getNumberOfSamples() {
        return this.mNumberOfSamples;
    }

    public long getCrashID() {
        return this.mCrashID;
    }

    @Override // com.texa.carelib.core.utils.CareStruct
    public byte[] getRawData() {
        return this.mRawData;
    }

    public Long getTripNumber() {
        return this.mTripNumber;
    }

    public Date getTimeStamp() {
        return this.mTimestamp;
    }

    public AccelerationVector getOffsetComponents() {
        return this.mOffsetComponents;
    }

    public List<AccelerationVector> getAccelerationVectors() {
        return this.mAccelerationVectors;
    }

    public List<Integer> getSpeedVectors() {
        return this.mSpeedVectors;
    }

    public Integer getSampleFrequency() {
        return this.mSampleFrequency;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VerboseCrashReport verboseCrashReport = (VerboseCrashReport) obj;
        return Utils.equals(Long.valueOf(this.mCrashID), Long.valueOf(verboseCrashReport.mCrashID)) && Utils.equals(Integer.valueOf(this.mVersion), Integer.valueOf(verboseCrashReport.mVersion)) && Utils.equals(this.mOffsetComponents, verboseCrashReport.mOffsetComponents) && Utils.equals(this.mRawData, verboseCrashReport.mRawData) && Utils.equals(this.mTripNumber, verboseCrashReport.mTripNumber) && Utils.equals(this.mTimestamp, verboseCrashReport.mTimestamp) && Utils.equals(Integer.valueOf(this.mNumberOfSamples), Integer.valueOf(verboseCrashReport.mNumberOfSamples)) && Utils.equals(this.mAccelerationVectors, verboseCrashReport.mAccelerationVectors) && Utils.equals(this.mSpeedVectors, verboseCrashReport.mSpeedVectors) && Utils.equals(this.mSampleFrequency, verboseCrashReport.mSampleFrequency);
    }

    public int hashCode() {
        return Utils.hashCode(this.mOffsetComponents, Long.valueOf(this.mCrashID), this.mRawData, Integer.valueOf(this.mVersion), this.mTripNumber, this.mTimestamp, Integer.valueOf(this.mNumberOfSamples), this.mAccelerationVectors, this.mSpeedVectors, this.mSampleFrequency);
    }
}
