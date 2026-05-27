package com.texa.carelib.communication;

import com.texa.carelib.communication.events.DeviceBondStateChangedEvent;
import com.texa.carelib.communication.events.DeviceFoundEvent;
import com.texa.carelib.communication.events.DeviceNameChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DeviceDiscoveryListener {
    public void onDeviceBondStateChanged(DeviceBondStateChangedEvent deviceBondStateChangedEvent) {
    }

    public abstract void onDeviceFound(DeviceFoundEvent deviceFoundEvent);

    public void onDeviceNameChanged(DeviceNameChangedEvent deviceNameChangedEvent) {
    }
}
