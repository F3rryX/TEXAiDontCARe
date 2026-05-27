package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.CrashReport;
import com.texa.carelib.care.impacts.CrashReportStatus;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class CrashReportBuilder {
    private CrashReportStatus crashReportStatus;
    private Long intensity;
    private Boolean isClientDeviceConnected;
    private byte[] rawData;
    private Date timestamp;
    private Long tripNumber;
    private long crashID = CrashReport.CRASH_ID_UNDEF.longValue();
    private Integer version = -1;

    public CrashReportBuilder setRawData(byte[] bArr) {
        this.rawData = bArr;
        return this;
    }

    public CrashReportBuilder setCrashID(long j) {
        this.crashID = j;
        return this;
    }

    public CrashReportBuilder setVersion(Integer num) {
        this.version = num;
        return this;
    }

    public CrashReportBuilder setTimestamp(Date date) {
        this.timestamp = date;
        return this;
    }

    public CrashReportBuilder setIntensity(Long l) {
        this.intensity = l;
        return this;
    }

    public CrashReportBuilder setTripNumber(Long l) {
        this.tripNumber = l;
        return this;
    }

    public CrashReportBuilder setIsClientDeviceConnected(Boolean bool) {
        this.isClientDeviceConnected = bool;
        return this;
    }

    public CrashReportBuilder setCrashReportStatus(CrashReportStatus crashReportStatus) {
        this.crashReportStatus = crashReportStatus;
        return this;
    }

    public CrashReport build() {
        return new CrashReport(this.rawData, this.crashID, this.version.intValue(), this.timestamp, this.intensity, this.tripNumber, this.isClientDeviceConnected, this.crashReportStatus);
    }
}
