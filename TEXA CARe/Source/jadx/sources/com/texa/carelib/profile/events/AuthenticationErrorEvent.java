package com.texa.carelib.profile.events;

import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class AuthenticationErrorEvent extends ErrorEventBase {
    private final DeviceInfo mDeviceInfo;

    public AuthenticationErrorEvent(Object obj, DeviceInfo deviceInfo, CareError careError) {
        super(obj, careError);
        this.mDeviceInfo = deviceInfo;
    }

    public DeviceInfo getDeviceInfo() {
        return this.mDeviceInfo;
    }
}
