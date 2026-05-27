package com.texa.carelib.communication.internal.serial;

import com.texa.carelib.communication.DeviceInfo;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public class SlaveReconnectionController {
    public static final String TAG = "SlaveReconnectionController";
    private final Queue<DeviceInfo> mDevices;

    SlaveReconnectionController() {
        this.mDevices = new LinkedList();
    }

    public SlaveReconnectionController(List<DeviceInfo> list) {
        this();
        this.mDevices.addAll(list);
    }

    public DeviceInfo getNextDevice() {
        DeviceInfo deviceInfoPoll = this.mDevices.poll();
        if (deviceInfoPoll != null) {
            this.mDevices.add(deviceInfoPoll);
        }
        return deviceInfoPoll;
    }

    public boolean isEmpty() {
        return this.mDevices.isEmpty();
    }

    public int size() {
        return this.mDevices.size();
    }
}
