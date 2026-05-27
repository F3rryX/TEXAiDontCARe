package com.texa.carelib.care.impacts.internal;

import com.texa.carelib.care.impacts.AccelerationVector;
import com.texa.carelib.care.impacts.VerboseCrashReport;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VerboseCrashReportBuilder {
    private List<AccelerationVector> accelerationVectors;
    private int numberOfSamples;
    private AccelerationVector offsetComponents;
    private byte[] rawData;
    private Integer sampleFrequency;
    private List<Integer> speedVectors;
    private Date timestamp;
    private Long tripNumber;
    private Long crashID = VerboseCrashReport.CRASH_ID_UNDEF;
    private int version = -1;

    public VerboseCrashReportBuilder setRawData(byte[] bArr) {
        this.rawData = bArr;
        return this;
    }

    public VerboseCrashReportBuilder setVersion(int i) {
        this.version = i;
        return this;
    }

    public VerboseCrashReportBuilder setCrashID(long j) {
        this.crashID = Long.valueOf(j);
        return this;
    }

    public VerboseCrashReportBuilder setOffsetComponents(AccelerationVector accelerationVector) {
        this.offsetComponents = accelerationVector;
        return this;
    }

    public VerboseCrashReportBuilder setTripNumber(Long l) {
        this.tripNumber = l;
        return this;
    }

    public VerboseCrashReportBuilder setNumberOfSamples(int i) {
        this.numberOfSamples = i;
        return this;
    }

    public VerboseCrashReportBuilder setTimestamp(Date date) {
        this.timestamp = date;
        return this;
    }

    public VerboseCrashReportBuilder setAccelerationVectors(List<AccelerationVector> list) {
        this.accelerationVectors = list;
        return this;
    }

    public VerboseCrashReportBuilder setSpeedVectors(List<Integer> list) {
        this.speedVectors = list;
        return this;
    }

    public VerboseCrashReportBuilder setSampleFrequency(Integer num) {
        this.sampleFrequency = num;
        return this;
    }

    public VerboseCrashReport build() {
        return new VerboseCrashReport(this.rawData, this.version, this.crashID.longValue(), this.offsetComponents, this.tripNumber, this.timestamp, this.numberOfSamples, this.accelerationVectors, this.speedVectors, this.sampleFrequency);
    }
}
