package com.texa.carelib.care.trips;

import com.texa.carelib.core.utils.CareStruct;
import com.texa.carelib.core.utils.internal.Utils;
import java.util.Date;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class TripEndInfo implements CareStruct, Cloneable {
    public static final int NO_TIMEZONE_OFFSET = 128;
    private UUID mDriverID;
    private Boolean mIsMILLampDetected;
    private Float mMaxVoltageEngineOn;
    private Integer mNumOfImpactDetected;
    private Float mOdometer;
    private OdometerEstimationMethod mOdometerEstimationMethod;
    private byte[] mRawData;
    private Integer mTimeZoneOffset;
    private Date mTimestamp;
    private TripEndCause mTripEndCause;
    private Long mTripNumber;
    private int mVersion;

    public enum OdometerEstimationMethod {
        Undef,
        Diagnostic,
        Estimated
    }

    public enum TripEndCause {
        Undef,
        ExternalCommand,
        LowRPM,
        CommunicationLost,
        LowBatteryVoltage
    }

    public TripEndInfo(byte[] bArr, int i, Float f, Long l, OdometerEstimationMethod odometerEstimationMethod, Float f2, Boolean bool, TripEndCause tripEndCause, Integer num, UUID uuid, Integer num2, Date date) {
        this.mRawData = bArr;
        this.mVersion = i;
        this.mOdometer = f;
        this.mTripNumber = l;
        this.mOdometerEstimationMethod = odometerEstimationMethod;
        this.mMaxVoltageEngineOn = f2;
        this.mIsMILLampDetected = bool;
        this.mTripEndCause = tripEndCause;
        this.mNumOfImpactDetected = num;
        this.mDriverID = uuid;
        this.mTimeZoneOffset = num2;
        this.mTimestamp = date;
    }

    public TripEndInfo(TripEndInfo tripEndInfo) {
        byte[] bArr = tripEndInfo.mRawData;
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            this.mRawData = bArr2;
            byte[] bArr3 = tripEndInfo.mRawData;
            System.arraycopy(bArr3, 0, bArr2, 0, Math.min(bArr2.length, bArr3.length));
        } else {
            this.mRawData = null;
        }
        this.mVersion = tripEndInfo.mVersion;
        this.mTripNumber = tripEndInfo.mTripNumber;
        this.mOdometer = tripEndInfo.mOdometer;
        this.mMaxVoltageEngineOn = tripEndInfo.mMaxVoltageEngineOn;
        this.mOdometerEstimationMethod = tripEndInfo.mOdometerEstimationMethod;
        this.mIsMILLampDetected = tripEndInfo.mIsMILLampDetected;
        this.mTripEndCause = tripEndInfo.mTripEndCause;
        this.mNumOfImpactDetected = tripEndInfo.mNumOfImpactDetected;
        if (tripEndInfo.mDriverID != null) {
            this.mDriverID = new UUID(tripEndInfo.mDriverID.getMostSignificantBits(), tripEndInfo.mDriverID.getLeastSignificantBits());
        } else {
            this.mDriverID = null;
        }
        Date date = tripEndInfo.mTimestamp;
        if (date != null) {
            this.mTimestamp = (Date) date.clone();
        } else {
            this.mTimestamp = null;
        }
        this.mTimeZoneOffset = tripEndInfo.mTimeZoneOffset;
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

    public Float getOdometer() {
        return this.mOdometer;
    }

    public Float getMaxVoltageEngineOn() {
        return this.mMaxVoltageEngineOn;
    }

    public OdometerEstimationMethod getOdometerEstimationMethod() {
        return this.mOdometerEstimationMethod;
    }

    public Boolean isMILLampDetected() {
        return this.mIsMILLampDetected;
    }

    public TripEndCause getTripEndCause() {
        return this.mTripEndCause;
    }

    public Integer getNumOfImpactDetected() {
        return this.mNumOfImpactDetected;
    }

    public UUID getDriverID() {
        return this.mDriverID;
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
        TripEndInfo tripEndInfo = (TripEndInfo) obj;
        return Utils.equals(Integer.valueOf(this.mVersion), Integer.valueOf(tripEndInfo.mVersion)) && Utils.equals(this.mOdometer, tripEndInfo.mOdometer) && Utils.equals(this.mTripNumber, tripEndInfo.mTripNumber) && Utils.equals(this.mOdometerEstimationMethod, tripEndInfo.mOdometerEstimationMethod) && Utils.equals(this.mMaxVoltageEngineOn, tripEndInfo.mMaxVoltageEngineOn) && Utils.equals(this.mIsMILLampDetected, tripEndInfo.mIsMILLampDetected) && Utils.equals(this.mTripEndCause, tripEndInfo.mTripEndCause) && Utils.equals(this.mNumOfImpactDetected, tripEndInfo.mNumOfImpactDetected) && Utils.equals(this.mDriverID, tripEndInfo.mDriverID) && Utils.equals(this.mTimeZoneOffset, tripEndInfo.mTimeZoneOffset) && Utils.equals(this.mTimestamp, tripEndInfo.mTimestamp);
    }

    public int hashCode() {
        return Utils.hashCode(this.mRawData, Integer.valueOf(this.mVersion), this.mOdometer, this.mTripNumber, this.mOdometerEstimationMethod, this.mMaxVoltageEngineOn, this.mIsMILLampDetected, this.mTripEndCause, this.mNumOfImpactDetected, this.mDriverID, this.mTimeZoneOffset, this.mTimestamp);
    }
}
