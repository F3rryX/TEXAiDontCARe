package com.texa.carelib.profile.events;

import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.events.EventBase;

/* JADX INFO: loaded from: classes2.dex */
public class CommunicationStatusChangedEvent extends EventBase {
    private final CommunicationStatus mCommunicationStatus;
    private final DeviceInfo mDeviceInfo;

    public CommunicationStatusChangedEvent(Object obj, CommunicationStatus communicationStatus, DeviceInfo deviceInfo) {
        super(obj);
        this.mCommunicationStatus = communicationStatus;
        this.mDeviceInfo = deviceInfo;
    }

    public CommunicationStatus getCommunicationStatus() {
        return this.mCommunicationStatus;
    }

    public DeviceInfo getDeviceInfo() {
        return this.mDeviceInfo;
    }
}
