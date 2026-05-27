package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.webservices.FirmwareType;
import com.texa.carelib.webservices.ServiceFirmwareDownloadCompletedEvent;
import com.texa.carelib.webservices.ServiceFirmwareDownloadProcedure;
import com.texa.carelib.webservices.ServiceFirmwareDownloadProcedureStatus;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ServiceFirmwareDownloadProcedureBase implements ServiceFirmwareDownloadProcedure {
    public static final String TAG = "ServiceFirmwareDownloadProcedureBase";
    private ServiceFirmwareDownloadProcedureStatus mStatus = ServiceFirmwareDownloadProcedureStatus.Idle;

    @Override // com.texa.carelib.webservices.ServiceFirmwareDownloadProcedure
    public ServiceFirmwareDownloadProcedureStatus getStatus() {
        return this.mStatus;
    }

    public void setStatus(ServiceFirmwareDownloadProcedureStatus serviceFirmwareDownloadProcedureStatus) {
        this.mStatus = serviceFirmwareDownloadProcedureStatus;
    }

    protected void fireDownloadFirmwareCompleted(FirmwareType firmwareType, Callback<ServiceFirmwareDownloadCompletedEvent> callback, File file) {
        if (callback == null) {
            CareLog.e(TAG, "Callback cannot be null!!!", new Object[0]);
        } else {
            callback.onCompleted(new ServiceFirmwareDownloadCompletedEvent(this, firmwareType, file, null));
        }
    }

    protected void fireDownloadFirmwareError(FirmwareType firmwareType, Callback<ServiceFirmwareDownloadCompletedEvent> callback, CareError careError) {
        if (callback == null) {
            return;
        }
        ServiceFirmwareDownloadCompletedEvent serviceFirmwareDownloadCompletedEvent = new ServiceFirmwareDownloadCompletedEvent(this, firmwareType, null, careError);
        callback.onCompleted(serviceFirmwareDownloadCompletedEvent);
        callback.onCompleted(serviceFirmwareDownloadCompletedEvent);
    }
}
