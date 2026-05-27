package com.texa.carelib.care.trips.internal;

import com.texa.carelib.care.attitude.RotationMatrix;
import com.texa.carelib.care.trips.CountersDescriptionType;
import com.texa.carelib.care.trips.TripStatisticsInfo;
import com.texa.carelib.care.trips.VehicleAccelerationCounter;
import com.texa.carelib.core.CounterInfo;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TripStatisticsInfoBuilder {
    private List<CounterInfo> mAccelerationCounters;
    private CountersDescriptionType mAccelerationCountersInfo;
    private RotationMatrix mFinalRotationMatrix;
    private Integer mHardAccelerationCount;
    private Integer mHardBrakeCount;
    private List<CounterInfo> mRPMOverTempThresholdCounters;
    private CountersDescriptionType mRPMOverTempThresholdCountersInfo;
    private List<CounterInfo> mRPMUnderTempThresholdCounters;
    private CountersDescriptionType mRPMUnderTempThresholdCountersInfo;
    private byte[] mRawData;
    private List<CounterInfo> mSpeedCounters;
    private CountersDescriptionType mSpeedCountersInfo;
    private Integer mTripIdleTime;
    private Long mTripNumber;
    private CountersDescriptionType mVehicleAccelerationAngleCountersInfo;
    private List<VehicleAccelerationCounter> mVehicleAccelerationCounters;
    private CountersDescriptionType mVehicleAccelerationIntensityCountersInfo;
    private int mVersion;
    private List<CounterInfo> mVoltageCounters;
    private CountersDescriptionType mVoltageCountersInfo;

    public static TripStatisticsInfoBuilder from(TripStatisticsInfo tripStatisticsInfo) {
        return new TripStatisticsInfoBuilder();
    }

    public TripStatisticsInfoBuilder setRawData(byte[] bArr) {
        this.mRawData = bArr;
        return this;
    }

    public TripStatisticsInfoBuilder setVersion(int i) {
        this.mVersion = i;
        return this;
    }

    public TripStatisticsInfoBuilder setTripNumber(Long l) {
        this.mTripNumber = l;
        return this;
    }

    public TripStatisticsInfoBuilder setHardAccelerationCount(Integer num) {
        this.mHardAccelerationCount = num;
        return this;
    }

    public TripStatisticsInfoBuilder setHardBrakeCount(Integer num) {
        this.mHardBrakeCount = num;
        return this;
    }

    public TripStatisticsInfoBuilder setTripIdleTime(Integer num) {
        this.mTripIdleTime = num;
        return this;
    }

    public TripStatisticsInfoBuilder setAccelerationCounters(List<CounterInfo> list) {
        this.mAccelerationCounters = list;
        return this;
    }

    public TripStatisticsInfoBuilder setAccelerationCountersInfo(CountersDescriptionType countersDescriptionType) {
        this.mAccelerationCountersInfo = countersDescriptionType;
        return this;
    }

    public TripStatisticsInfoBuilder setSpeedCounters(List<CounterInfo> list) {
        this.mSpeedCounters = list;
        return this;
    }

    public TripStatisticsInfoBuilder setSpeedCountersInfo(CountersDescriptionType countersDescriptionType) {
        this.mSpeedCountersInfo = countersDescriptionType;
        return this;
    }

    public TripStatisticsInfoBuilder setRPMOverTempThresholdCounters(List<CounterInfo> list) {
        this.mRPMOverTempThresholdCounters = list;
        return this;
    }

    public TripStatisticsInfoBuilder setRPMOverTempThresholdCountersInfo(CountersDescriptionType countersDescriptionType) {
        this.mRPMOverTempThresholdCountersInfo = countersDescriptionType;
        return this;
    }

    public TripStatisticsInfoBuilder setRPMUnderTempThresholdCounters(List<CounterInfo> list) {
        this.mRPMUnderTempThresholdCounters = list;
        return this;
    }

    public TripStatisticsInfoBuilder setRPMUnderTempThresholdCountersInfo(CountersDescriptionType countersDescriptionType) {
        this.mRPMUnderTempThresholdCountersInfo = countersDescriptionType;
        return this;
    }

    public TripStatisticsInfoBuilder setVoltageCounters(List<CounterInfo> list) {
        this.mVoltageCounters = list;
        return this;
    }

    public TripStatisticsInfoBuilder setVoltageCountersInfo(CountersDescriptionType countersDescriptionType) {
        this.mVoltageCountersInfo = countersDescriptionType;
        return this;
    }

    public TripStatisticsInfoBuilder setVehicleAccelerationCounters(List<VehicleAccelerationCounter> list) {
        this.mVehicleAccelerationCounters = list;
        return this;
    }

    public TripStatisticsInfoBuilder setVehicleAccelerationAngleCountersInfo(CountersDescriptionType countersDescriptionType) {
        this.mVehicleAccelerationAngleCountersInfo = countersDescriptionType;
        return this;
    }

    public TripStatisticsInfoBuilder setVehicleAccelerationIntensityCountersInfo(CountersDescriptionType countersDescriptionType) {
        this.mVehicleAccelerationIntensityCountersInfo = countersDescriptionType;
        return this;
    }

    public TripStatisticsInfoBuilder setRotationMatrixFinal(RotationMatrix rotationMatrix) {
        this.mFinalRotationMatrix = rotationMatrix;
        return this;
    }

    public TripStatisticsInfo build() {
        return new TripStatisticsInfo(this.mRawData, this.mVersion, this.mTripNumber, this.mHardAccelerationCount, this.mHardBrakeCount, this.mTripIdleTime, this.mAccelerationCounters, this.mAccelerationCountersInfo, this.mSpeedCounters, this.mSpeedCountersInfo, this.mRPMOverTempThresholdCounters, this.mRPMOverTempThresholdCountersInfo, this.mRPMUnderTempThresholdCounters, this.mRPMUnderTempThresholdCountersInfo, this.mVoltageCounters, this.mVoltageCountersInfo, this.mVehicleAccelerationCounters, this.mVehicleAccelerationAngleCountersInfo, this.mVehicleAccelerationIntensityCountersInfo, this.mFinalRotationMatrix);
    }
}
