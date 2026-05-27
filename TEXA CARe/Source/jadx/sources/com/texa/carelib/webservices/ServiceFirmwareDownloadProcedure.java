package com.texa.carelib.webservices;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.utils.FirmwareVersion;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceFirmwareDownloadProcedure {
    void downloadFirmware(FirmwareType firmwareType, FirmwareVersion firmwareVersion, String str, Callback<ServiceFirmwareDownloadCompletedEvent> callback) throws CareLibException;

    ServiceFirmwareDownloadProcedureStatus getStatus();
}
