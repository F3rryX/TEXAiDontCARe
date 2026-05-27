package com.texa.carelib.care.trips;

import com.texa.carelib.care.attitude.RotationMatrix;
import com.texa.carelib.core.CounterInfo;
import com.texa.carelib.core.utils.CareStruct;
import com.texa.carelib.core.utils.internal.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TripStatisticsInfo implements CareStruct {
    private List<CounterInfo> mAccelerationCounters;
    private CountersDescriptionType mAccelerationCountersInfo;
    private RotationMatrix mFinalRotationMatrix;
    private Integer mHardAccelerationCount;
    private Integer mHardBrakeCount;
    private List<CounterInfo> mRPMCounters;
    private CountersDescriptionType mRPMCountersInfo;
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

    public TripStatisticsInfo(byte[] bArr, int i, Long l, Integer num, Integer num2, Integer num3, List<CounterInfo> list, CountersDescriptionType countersDescriptionType, List<CounterInfo> list2, CountersDescriptionType countersDescriptionType2, List<CounterInfo> list3, CountersDescriptionType countersDescriptionType3, List<CounterInfo> list4, CountersDescriptionType countersDescriptionType4, List<CounterInfo> list5, CountersDescriptionType countersDescriptionType5, List<VehicleAccelerationCounter> list6, CountersDescriptionType countersDescriptionType6, CountersDescriptionType countersDescriptionType7, RotationMatrix rotationMatrix) {
        this.mRawData = bArr;
        this.mVersion = i;
        this.mTripNumber = l;
        this.mHardAccelerationCount = num;
        this.mHardBrakeCount = num2;
        this.mTripIdleTime = num3;
        this.mVoltageCountersInfo = countersDescriptionType5;
        this.mAccelerationCountersInfo = countersDescriptionType;
        this.mSpeedCounters = list2;
        this.mSpeedCountersInfo = countersDescriptionType2;
        this.mRPMOverTempThresholdCounters = list3;
        this.mRPMOverTempThresholdCountersInfo = countersDescriptionType3;
        this.mRPMUnderTempThresholdCounters = list4;
        this.mRPMUnderTempThresholdCountersInfo = countersDescriptionType4;
        this.mVoltageCounters = list5;
        this.mAccelerationCounters = list;
        this.mVehicleAccelerationCounters = list6;
        this.mVehicleAccelerationAngleCountersInfo = countersDescriptionType6;
        this.mVehicleAccelerationIntensityCountersInfo = countersDescriptionType7;
        this.mFinalRotationMatrix = rotationMatrix;
        if (isRPMCounterSupported(countersDescriptionType3, countersDescriptionType4, list3, list4)) {
            this.mRPMCounters = InitRPMCounters(this.mRPMOverTempThresholdCounters, this.mRPMUnderTempThresholdCounters);
            this.mRPMCountersInfo = this.mRPMUnderTempThresholdCountersInfo;
        }
    }

    public TripStatisticsInfo(TripStatisticsInfo tripStatisticsInfo) {
        if (tripStatisticsInfo != null) {
            byte[] bArr = tripStatisticsInfo.mRawData;
            if (bArr != null) {
                byte[] bArr2 = new byte[bArr.length];
                this.mRawData = bArr2;
                byte[] bArr3 = tripStatisticsInfo.mRawData;
                System.arraycopy(bArr3, 0, bArr2, 0, Math.min(bArr2.length, bArr3.length));
            }
            this.mTripNumber = tripStatisticsInfo.mTripNumber;
            this.mHardAccelerationCount = tripStatisticsInfo.mHardAccelerationCount;
            this.mHardBrakeCount = tripStatisticsInfo.mHardBrakeCount;
            this.mTripIdleTime = tripStatisticsInfo.mTripIdleTime;
            this.mSpeedCounters = new ArrayList(tripStatisticsInfo.mAccelerationCounters);
            this.mRPMUnderTempThresholdCounters = new ArrayList(tripStatisticsInfo.mAccelerationCounters);
            this.mRPMOverTempThresholdCounters = new ArrayList(tripStatisticsInfo.mAccelerationCounters);
            this.mAccelerationCounters = new ArrayList(tripStatisticsInfo.mAccelerationCounters);
            this.mVoltageCounters = new ArrayList(tripStatisticsInfo.mVoltageCounters);
        }
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

    public Integer getHardAccelerationCount() {
        return this.mHardAccelerationCount;
    }

    public Integer getHardBrakeCount() {
        return this.mHardBrakeCount;
    }

    public Integer getTripIdleTime() {
        return this.mTripIdleTime;
    }

    public List<CounterInfo> getSpeedCounters() {
        return this.mSpeedCounters;
    }

    public CountersDescriptionType getSpeedCountersInfo() {
        return this.mSpeedCountersInfo;
    }

    public List<CounterInfo> getRPMCounters() {
        return this.mRPMCounters;
    }

    public CountersDescriptionType getRPMCountersInfo() {
        return this.mRPMCountersInfo;
    }

    public List<CounterInfo> getRPMOverTempThresholdCounters() {
        return this.mRPMOverTempThresholdCounters;
    }

    public CountersDescriptionType getRPMOverTempThresholdCountersInfo() {
        return this.mRPMOverTempThresholdCountersInfo;
    }

    public List<CounterInfo> getRPMUnderTempThresholdCounters() {
        return this.mRPMUnderTempThresholdCounters;
    }

    public CountersDescriptionType getRPMUnderTempThresholdCountersInfo() {
        return this.mRPMUnderTempThresholdCountersInfo;
    }

    public List<CounterInfo> getAccelerationCounters() {
        return this.mAccelerationCounters;
    }

    public CountersDescriptionType getAccelerationCountersInfo() {
        return this.mAccelerationCountersInfo;
    }

    public List<CounterInfo> getVoltageCounters() {
        return this.mVoltageCounters;
    }

    public CountersDescriptionType getVoltageCountersInfo() {
        return this.mVoltageCountersInfo;
    }

    public List<VehicleAccelerationCounter> getVehicleAccelerationCounters() {
        return this.mVehicleAccelerationCounters;
    }

    public CountersDescriptionType getVehicleAccelerationAngleCountersInfo() {
        return this.mVehicleAccelerationAngleCountersInfo;
    }

    public CountersDescriptionType getVehicleAccelerationIntensityCountersInfo() {
        return this.mVehicleAccelerationIntensityCountersInfo;
    }

    public RotationMatrix getRotationMatrix() {
        return this.mFinalRotationMatrix;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TripStatisticsInfo tripStatisticsInfo = (TripStatisticsInfo) obj;
        return Utils.equals(Integer.valueOf(this.mVersion), Integer.valueOf(tripStatisticsInfo.mVersion)) && Utils.equals(this.mRawData, tripStatisticsInfo.mRawData) && Utils.equals(this.mTripNumber, tripStatisticsInfo.mTripNumber) && Utils.equals(this.mHardAccelerationCount, tripStatisticsInfo.mHardAccelerationCount) && Utils.equals(this.mHardBrakeCount, tripStatisticsInfo.mHardBrakeCount) && Utils.equals(this.mTripIdleTime, tripStatisticsInfo.mTripIdleTime) && Utils.equals(this.mVoltageCountersInfo, tripStatisticsInfo.mVoltageCountersInfo) && Utils.equals(this.mAccelerationCountersInfo, tripStatisticsInfo.mAccelerationCountersInfo) && Utils.equals(this.mSpeedCounters, tripStatisticsInfo.mSpeedCounters) && Utils.equals(this.mSpeedCountersInfo, tripStatisticsInfo.mSpeedCountersInfo) && Utils.equals(this.mRPMOverTempThresholdCounters, tripStatisticsInfo.mRPMOverTempThresholdCounters) && Utils.equals(this.mRPMOverTempThresholdCountersInfo, tripStatisticsInfo.mRPMOverTempThresholdCountersInfo) && Utils.equals(this.mRPMUnderTempThresholdCounters, tripStatisticsInfo.mRPMUnderTempThresholdCounters) && Utils.equals(this.mVoltageCounters, tripStatisticsInfo.mVoltageCounters) && Utils.equals(this.mAccelerationCounters, tripStatisticsInfo.mAccelerationCounters) && Utils.equals(this.mRPMUnderTempThresholdCountersInfo, tripStatisticsInfo.mRPMUnderTempThresholdCountersInfo) && Utils.equals(this.mVehicleAccelerationCounters, tripStatisticsInfo.mVehicleAccelerationCounters) && Utils.equals(this.mVehicleAccelerationAngleCountersInfo, tripStatisticsInfo.mVehicleAccelerationAngleCountersInfo) && Utils.equals(this.mVehicleAccelerationIntensityCountersInfo, tripStatisticsInfo.mVehicleAccelerationIntensityCountersInfo) && Utils.equals(this.mFinalRotationMatrix, tripStatisticsInfo.mFinalRotationMatrix);
    }

    public int hashCode() {
        return Utils.hashCode(this.mRawData, Integer.valueOf(this.mVersion), this.mTripNumber, this.mHardAccelerationCount, this.mHardBrakeCount, this.mTripIdleTime, this.mVoltageCountersInfo, this.mAccelerationCountersInfo, this.mSpeedCounters, this.mSpeedCountersInfo, this.mRPMOverTempThresholdCounters, this.mRPMOverTempThresholdCountersInfo, this.mRPMUnderTempThresholdCounters, this.mVoltageCounters, this.mAccelerationCounters, this.mRPMUnderTempThresholdCountersInfo, this.mVehicleAccelerationCounters, this.mVehicleAccelerationAngleCountersInfo, this.mVehicleAccelerationIntensityCountersInfo, this.mFinalRotationMatrix);
    }

    private boolean isRPMCounterSupported(CountersDescriptionType countersDescriptionType, CountersDescriptionType countersDescriptionType2, List<CounterInfo> list, List<CounterInfo> list2) {
        return (countersDescriptionType == null || !countersDescriptionType.equals(countersDescriptionType2) || list == null || list2 == null || list.size() != list2.size()) ? false : true;
    }

    private List<CounterInfo> InitRPMCounters(List<CounterInfo> list, List<CounterInfo> list2) {
        if (list2 != null && list != null) {
            int iMin = Math.min(list.size(), list2.size());
            ArrayList arrayList = new ArrayList(iMin);
            for (int i = 0; i < iMin; i++) {
                CounterInfo counterInfo = list2.get(i);
                CounterInfo counterInfo2 = list.get(i);
                if (counterInfo.getRange().equals(counterInfo2.getRange())) {
                    arrayList.add(new CounterInfo(counterInfo.getRange(), counterInfo.getValue() + counterInfo2.getValue()));
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }
}
