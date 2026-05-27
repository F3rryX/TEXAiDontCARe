package com.texa.carelib.care.trips;

import com.texa.carelib.core.utils.CareStruct;
import com.texa.carelib.core.utils.internal.Utils;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class TripBeginInfo implements CareStruct, Cloneable {
    public static final int NO_TIMEZONE_OFFSET = 128;
    private Float mAverageVoltageEngineOff;
    private Float mMinVoltageEngineOff;
    private Float mOdometer;
    private byte[] mRawData;
    private Long mRelativeTripNumber;
    private Integer mTimeZoneOffset;
    private Date mTimestamp;
    private Long mTripNumber;
    private int mVersion;

    public TripBeginInfo(byte[] bArr, int i, Long l, Long l2, Float f, Float f2, Float f3, Date date, Integer num) {
        this.mRawData = bArr;
        this.mVersion = i;
        this.mTripNumber = l;
        this.mRelativeTripNumber = l2;
        this.mOdometer = f;
        this.mAverageVoltageEngineOff = f2;
        this.mMinVoltageEngineOff = f3;
        this.mTimestamp = date;
        this.mTimeZoneOffset = num;
    }

    public TripBeginInfo(TripBeginInfo tripBeginInfo) {
        if (tripBeginInfo.getRawData() != null) {
            this.mRawData = new byte[tripBeginInfo.getRawData().length];
            byte[] rawData = tripBeginInfo.getRawData();
            byte[] bArr = this.mRawData;
            System.arraycopy(rawData, 0, bArr, 0, Math.min(bArr.length, tripBeginInfo.mRawData.length));
        } else {
            this.mRawData = null;
        }
        this.mVersion = tripBeginInfo.mVersion;
        this.mTripNumber = tripBeginInfo.mTripNumber;
        this.mRelativeTripNumber = tripBeginInfo.mRelativeTripNumber;
        this.mOdometer = tripBeginInfo.mOdometer;
        this.mAverageVoltageEngineOff = tripBeginInfo.mAverageVoltageEngineOff;
        this.mMinVoltageEngineOff = tripBeginInfo.mMinVoltageEngineOff;
        Date date = tripBeginInfo.mTimestamp;
        if (date != null) {
            this.mTimestamp = (Date) date.clone();
        }
        this.mTimeZoneOffset = tripBeginInfo.mTimeZoneOffset;
    }

    @Override // com.texa.carelib.core.utils.CareStruct
    public byte[] getRawData() {
        return this.mRawData;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public Long getTripNumber() {
        return this.mTripNumber;
    }

    public Long getRelativeTripNumber() {
        return this.mRelativeTripNumber;
    }

    public Float getOdometer() {
        return this.mOdometer;
    }

    public Float getAverageVoltageEngineOff() {
        return this.mAverageVoltageEngineOff;
    }

    public Float getMinVoltageEngineOff() {
        return this.mMinVoltageEngineOff;
    }

    public Date getTimeStamp() {
        return this.mTimestamp;
    }

    public Integer getTimeZoneOffset() {
        return this.mTimeZoneOffset;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TripBeginInfo tripBeginInfo = (TripBeginInfo) obj;
        return Utils.equals(Integer.valueOf(this.mVersion), Integer.valueOf(tripBeginInfo.mVersion)) && Utils.equals(this.mTripNumber, tripBeginInfo.mTripNumber) && Utils.equals(this.mRelativeTripNumber, tripBeginInfo.mRelativeTripNumber) && Utils.equals(this.mOdometer, tripBeginInfo.mOdometer) && Utils.equals(this.mAverageVoltageEngineOff, tripBeginInfo.mAverageVoltageEngineOff) && Utils.equals(this.mMinVoltageEngineOff, tripBeginInfo.mMinVoltageEngineOff) && Utils.equals(this.mTimestamp, tripBeginInfo.mTimestamp) && Utils.equals(this.mTimeZoneOffset, tripBeginInfo.mTimeZoneOffset);
    }

    public int hashCode() {
        return Utils.hashCode(this.mRawData, Integer.valueOf(this.mVersion), this.mTripNumber, this.mRelativeTripNumber, this.mOdometer, this.mAverageVoltageEngineOff, this.mMinVoltageEngineOff, this.mTimestamp, this.mTimeZoneOffset);
    }
}
