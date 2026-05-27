package com.texa.carelib.care.batteryanalyzer;

import com.texa.carelib.core.CounterInfo;
import com.texa.carelib.core.utils.CareStruct;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BatteryVoltageHistogram implements CareStruct {
    private List<CounterInfo> mBeamList;
    private Float mBeamWidth;
    private byte[] mData;
    private Float mSmoothFactor;
    private Date mTimestamp;
    private int mVersion;

    private BatteryVoltageHistogram() {
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

    public Float getBeamWidth() {
        return this.mBeamWidth;
    }

    public Float getSmoothFactor() {
        return this.mSmoothFactor;
    }

    public List<CounterInfo> getBeams() {
        return this.mBeamList;
    }

    public static class Builder {
        private BatteryVoltageHistogram mBatteryVoltageHistogram;

        public Builder() {
            this(new BatteryVoltageHistogram());
        }

        public Builder(BatteryVoltageHistogram batteryVoltageHistogram) {
            this.mBatteryVoltageHistogram = batteryVoltageHistogram;
        }

        public Builder setData(byte[] bArr) {
            this.mBatteryVoltageHistogram.mData = bArr;
            return this;
        }

        public Builder setVersion(int i) {
            this.mBatteryVoltageHistogram.mVersion = i;
            return this;
        }

        public Builder setTimestamp(Date date) {
            this.mBatteryVoltageHistogram.mTimestamp = date;
            return this;
        }

        public Builder setBeamWidth(Float f) {
            this.mBatteryVoltageHistogram.mBeamWidth = f;
            return this;
        }

        public Builder setSmoothFactor(Float f) {
            this.mBatteryVoltageHistogram.mSmoothFactor = f;
            return this;
        }

        public Builder setBeamList(List<CounterInfo> list) {
            if (list == null) {
                this.mBatteryVoltageHistogram.mBeamList = null;
            } else {
                this.mBatteryVoltageHistogram.mBeamList = Collections.unmodifiableList(list);
            }
            return this;
        }

        public BatteryVoltageHistogram build() {
            return this.mBatteryVoltageHistogram;
        }
    }
}
