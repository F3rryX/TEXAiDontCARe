package com.texa.carelib.communication;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface KnownDeviceHistory {
    void add(DeviceInfo deviceInfo);

    void clear();

    DeviceInfo get(int i);

    List<DeviceInfo> getItems();

    int indexOf(DeviceInfo deviceInfo);

    void setKnownDeviceHistoryListener(KnownDeviceHistoryListener knownDeviceHistoryListener);

    void setMaxSize(int i);

    int size();
}
