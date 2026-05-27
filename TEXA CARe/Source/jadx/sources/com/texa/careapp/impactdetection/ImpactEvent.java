package com.texa.careapp.impactdetection;

import com.texa.carelib.communication.DeviceInfo;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ImpactEvent {
    private final List<AccelerationEvent> mAccelerationData;
    private final DeviceInfo mDeviceInfo;
    private final Long mImpactTime;
    private final Long mIntensity;
    private final Long mLastDeviceDisconnectionTime;
    private final int mSourceSensorType;
    private final int mValidationStatus;

    public DeviceInfo getDeviceInfo() {
        return this.mDeviceInfo;
    }

    public int getSourceSensorType() {
        return this.mSourceSensorType;
    }

    public Long getImpactTime() {
        return this.mImpactTime;
    }

    public Long getLastDeviceDisconnectionTime() {
        return this.mLastDeviceDisconnectionTime;
    }

    public List<AccelerationEvent> getAccelerationData() {
        return this.mAccelerationData;
    }

    public int getValidationStatus() {
        return this.mValidationStatus;
    }

    public Long getIntensity() {
        return this.mIntensity;
    }

    public ImpactEvent(DeviceInfo deviceInfo, int i, Long l, int i2, Long l2, Long l3, List<AccelerationEvent> list) {
        this.mDeviceInfo = deviceInfo;
        this.mValidationStatus = i;
        this.mLastDeviceDisconnectionTime = l;
        this.mSourceSensorType = i2;
        this.mImpactTime = l3;
        this.mAccelerationData = list;
        this.mIntensity = l2;
    }
}
