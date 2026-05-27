package com.texa.carelib.care.impacts;

import com.texa.carelib.core.utils.CareStruct;
import com.texa.carelib.core.utils.internal.Utils;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReport implements CareStruct {
    public static final Long CRASH_ID_UNDEF = 0L;
    private long mCrashID;
    private CrashReportStatus mCrashReportStatus;
    private Long mIntensity;
    private Boolean mIsClientDeviceConnected;
    private byte[] mRawData;
    private Date mTimestamp;
    private Long mTripNumber;
    private int mVersion;

    public CrashReport(byte[] bArr, long j, int i, Date date, Long l, Long l2, Boolean bool, CrashReportStatus crashReportStatus) {
        this.mRawData = bArr;
        this.mCrashID = j;
        this.mVersion = i;
        this.mTimestamp = date;
        this.mIntensity = l;
        this.mTripNumber = l2;
        this.mIsClientDeviceConnected = bool;
        this.mCrashReportStatus = crashReportStatus;
    }

    public long getCrashID() {
        return this.mCrashID;
    }

    @Override // com.texa.carelib.core.utils.CareStruct
    public byte[] getRawData() {
        return this.mRawData;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public Date getTimeStamp() {
        return this.mTimestamp;
    }

    public Long getIntensity() {
        return this.mIntensity;
    }

    public Long getTripNumber() {
        return this.mTripNumber;
    }

    public Boolean isClientDeviceConnected() {
        return this.mIsClientDeviceConnected;
    }

    public CrashReportStatus getStatus() {
        return this.mCrashReportStatus;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CrashReport crashReport = (CrashReport) obj;
        return Utils.equals(Long.valueOf(this.mCrashID), Long.valueOf(crashReport.mCrashID)) && Utils.equals(Integer.valueOf(this.mVersion), Integer.valueOf(crashReport.mVersion)) && Utils.equals(this.mTimestamp, crashReport.mTimestamp) && Utils.equals(this.mIntensity, crashReport.mIntensity) && Utils.equals(this.mTripNumber, crashReport.mTripNumber) && Utils.equals(this.mIsClientDeviceConnected, crashReport.mIsClientDeviceConnected) && Utils.equals(this.mCrashReportStatus, crashReport.mCrashReportStatus);
    }

    public int hashCode() {
        return Utils.hashCode(Long.valueOf(this.mCrashID), this.mRawData, Integer.valueOf(this.mVersion), this.mTimestamp, this.mIntensity, this.mTripNumber, this.mIsClientDeviceConnected, this.mCrashReportStatus);
    }
}
