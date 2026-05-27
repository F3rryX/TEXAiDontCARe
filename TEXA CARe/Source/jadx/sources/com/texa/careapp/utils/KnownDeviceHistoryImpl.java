package com.texa.careapp.utils;

import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.communication.KnownDeviceHistory;
import com.texa.carelib.communication.KnownDeviceHistoryListener;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class KnownDeviceHistoryImpl implements KnownDeviceHistory {
    private List<DeviceInfo> mDevices;

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public void add(DeviceInfo deviceInfo) {
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public void clear() {
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public void setKnownDeviceHistoryListener(KnownDeviceHistoryListener knownDeviceHistoryListener) {
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public void setMaxSize(int i) {
    }

    public KnownDeviceHistoryImpl(List<DeviceInfo> list) {
        this.mDevices = list;
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public DeviceInfo get(int i) {
        return this.mDevices.get(i);
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public List<DeviceInfo> getItems() {
        return new ArrayList(this.mDevices);
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public int indexOf(DeviceInfo deviceInfo) {
        return this.mDevices.indexOf(deviceInfo);
    }

    @Override // com.texa.carelib.communication.KnownDeviceHistory
    public int size() {
        return this.mDevices.size();
    }
}
