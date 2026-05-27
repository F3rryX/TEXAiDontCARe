package com.texa.carelib.communication.events;

import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.events.EventBase;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceBondStateChangedEvent extends EventBase {
    private final DeviceInfo mDeviceInfo;

    public DeviceBondStateChangedEvent(Object obj, DeviceInfo deviceInfo) {
        super(obj);
        this.mDeviceInfo = deviceInfo;
    }

    public DeviceInfo getDeviceInfo() {
        return this.mDeviceInfo;
    }
}
