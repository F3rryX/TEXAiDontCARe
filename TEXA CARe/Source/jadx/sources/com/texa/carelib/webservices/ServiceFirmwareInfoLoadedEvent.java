package com.texa.carelib.webservices;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import com.texa.carelib.core.utils.FirmwareVersion;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceFirmwareInfoLoadedEvent extends ErrorEventBase {
    private final FirmwareVersion mMainAppVersion;
    private final FirmwareVersion mServiceAppVersion;

    public ServiceFirmwareInfoLoadedEvent(Object obj, FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2, CareError careError) {
        super(obj, careError);
        this.mMainAppVersion = firmwareVersion;
        this.mServiceAppVersion = firmwareVersion2;
    }

    public FirmwareVersion getMainAppVersion() {
        return this.mMainAppVersion;
    }

    public FirmwareVersion getServiceAppVersion() {
        return this.mServiceAppVersion;
    }
}
