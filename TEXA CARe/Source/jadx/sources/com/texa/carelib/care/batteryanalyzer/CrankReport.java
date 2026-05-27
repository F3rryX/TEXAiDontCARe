package com.texa.carelib.care.batteryanalyzer;

import com.texa.carelib.core.utils.CareStruct;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CrankReport implements CareStruct {
    private Integer mArea;
    private Long mCoefficientA;
    private Long mCoefficientB;
    private Long mCoefficientC;
    private Float mCoefficientM;
    private Float mCoefficientQ;
    private Float mCoefficientR2;
    private byte[] mData;
    private Float mLimit;
    private Short mMeanVoltage;
    private Short mMinimumVoltage;
    private Float mSamplePeriod;
    private List<Short> mSamples;
    private Long mSamplesNumber;
    private Long mStatus;
    private Date mTimestamp;
    private int mVersion;

    private CrankReport() {
    }

    @Override // com.texa.carelib.core.utils.CareStruct
    public byte[] getRawData() {
        byte[] bArr = this.mData;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public int getVersion() {
        return this.mVersion;
    }

    public Date getTimeStamp() {
        return this.mTimestamp;
    }

    public Long getStatus() {
        return this.mStatus;
    }

    public Float getSamplePeriod() {
        return this.mSamplePeriod;
    }

    public Long getSamplesNumber() {
        return this.mSamplesNumber;
    }

    public Short getMeanVoltage() {
        return this.mMeanVoltage;
    }

    public Short getMinimumVoltage() {
        return this.mMinimumVoltage;
    }

    public Integer getArea() {
        return this.mArea;
    }

    public Long getCoefficientA() {
        return this.mCoefficientA;
    }

    public Long getCoefficientB() {
        return this.mCoefficientB;
    }

    public Long getCoefficientC() {
        return this.mCoefficientC;
    }

    public Float getCoefficientR2() {
        return this.mCoefficientR2;
    }

    public Float getCoefficientM() {
        return this.mCoefficientM;
    }

    public Float getCoefficientQ() {
        return this.mCoefficientQ;
    }

    public Float getLimit() {
        return this.mLimit;
    }

    public List<Short> getSamples() {
        return this.mSamples;
    }

    public static class Builder {
        private CrankReport mCrankReport;

        public Builder() {
            this(new CrankReport());
        }

        public Builder(CrankReport crankReport) {
            this.mCrankReport = crankReport;
        }

        public Builder setRawData(byte[] bArr) {
            this.mCrankReport.mData = bArr;
            return this;
        }

        public Builder setVersion(int i) {
            this.mCrankReport.mVersion = i;
            return this;
        }

        public Builder setTimestamp(Date date) {
            this.mCrankReport.mTimestamp = date;
            return this;
        }

        public Builder setStatus(Long l) {
            this.mCrankReport.mStatus = l;
            return this;
        }

        public Builder setSamplePeriod(Float f) {
            this.mCrankReport.mSamplePeriod = f;
            return this;
        }

        public Builder setSampleNumber(Long l) {
            this.mCrankReport.mSamplesNumber = l;
            return this;
        }

        public Builder setMeanVoltage(Short sh) {
            this.mCrankReport.mMeanVoltage = sh;
            return this;
        }

        public Builder setMinimumVoltage(Short sh) {
            this.mCrankReport.mMinimumVoltage = sh;
            return this;
        }

        public Builder setArea(Integer num) {
            this.mCrankReport.mArea = num;
            return this;
        }

        public Builder setCoefficientA(Long l) {
            this.mCrankReport.mCoefficientA = l;
            return this;
        }

        public Builder setCoefficientB(Long l) {
            this.mCrankReport.mCoefficientB = l;
            return this;
        }

        public Builder setCoefficientC(Long l) {
            this.mCrankReport.mCoefficientC = l;
            return this;
        }

        public Builder setCoefficientR2(Float f) {
            this.mCrankReport.mCoefficientR2 = f;
            return this;
        }

        public Builder setCoefficientM(Float f) {
            this.mCrankReport.mCoefficientM = f;
            return this;
        }

        public Builder setCoefficientQ(Float f) {
            this.mCrankReport.mCoefficientQ = f;
            return this;
        }

        public Builder setLimit(Float f) {
            this.mCrankReport.mLimit = f;
            return this;
        }

        public Builder setSamples(List<Short> list) {
            this.mCrankReport.mSamples = Collections.unmodifiableList(list);
            return this;
        }

        public CrankReport build() {
            return this.mCrankReport;
        }
    }
}
