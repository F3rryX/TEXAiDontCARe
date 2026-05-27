package com.texa.carelib.webservices;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import com.texa.carelib.core.utils.FirmwareVersion;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceFirmwareInfo extends ObservableObject {
    public static final String PROPERTY_MAIN_APP_VERSION = "ServiceFirmwareInfo#PROPERTY_MAIN_APP_VERSION";
    public static final String PROPERTY_SERVICE_APP_VERSION = "ServiceFirmwareInfo#PROPERTY_SERVICE_APP_VERSION";
    public static final String PROPERTY_STATUS = "ServiceFirmwareInfo#PROPERTY_STATUS";

    FirmwareVersion getMainAppVersion();

    FirmwareVersion getServiceAppVersion();

    ServiceFirmwareInfoStatus getStatus();

    void loadFirmwareInfo(String str, FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2, Callback<ServiceFirmwareInfoLoadedEvent> callback) throws CareLibException;
}
