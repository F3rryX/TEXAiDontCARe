package com.texa.carelib.webservices.internal;

import android.content.Context;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.webservices.FirmwareType;
import com.texa.carelib.webservices.ServiceFirmwareDownloadCompletedEvent;
import com.texa.carelib.webservices.ServiceFirmwareDownloadProcedureStatus;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
class MockServiceFirmwareDownloadProcedure extends ServiceFirmwareDownloadProcedureBase {
    private static final int DELAY_FIRMWARE_DOWNLOAD = 2000;
    public static final String TAG = "MockServiceFirmwareDownloadProcedure";
    private final Context mContext;

    public MockServiceFirmwareDownloadProcedure(Context context) {
        this.mContext = context;
    }

    @Override // com.texa.carelib.webservices.ServiceFirmwareDownloadProcedure
    public void downloadFirmware(final FirmwareType firmwareType, final FirmwareVersion firmwareVersion, String str, final Callback<ServiceFirmwareDownloadCompletedEvent> callback) throws CareLibException {
        String str2 = TAG;
        CareLog.d(str2, "downloadFirmware[type=%s,version=%s,hWID=%s]", firmwareType, firmwareVersion, str);
        if (str == null) {
            throw new CareLibException("HardwareID not set");
        }
        if (firmwareVersion == null) {
            throw new CareLibException("Version is null.");
        }
        CareLog.d(str2, firmwareVersion.toString(), new Object[0]);
        if (StringUtils.isNullOrEmpty(firmwareVersion.getFileName())) {
            throw new CareLibException("Version file name is null.");
        }
        if (firmwareType != FirmwareType.Main && firmwareType != FirmwareType.Service) {
            throw new CareLibException("Invalid firmware type.");
        }
        if (callback == null) {
            throw new CareLibException("Callback cannot be null.");
        }
        if (getStatus() == ServiceFirmwareDownloadProcedureStatus.Running) {
            throw new OperationAlreadyRunningException("Firmware download is already running...");
        }
        setStatus(ServiceFirmwareDownloadProcedureStatus.Running);
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.webservices.internal.MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m783xa8ddb212(firmwareVersion, firmwareType, callback);
            }
        }, str2 + "_downloadFirmware");
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$downloadFirmware$0$com-texa-carelib-webservices-internal-MockServiceFirmwareDownloadProcedure, reason: not valid java name */
    public /* synthetic */ void m783xa8ddb212(FirmwareVersion firmwareVersion, FirmwareType firmwareType, Callback callback) {
        try {
            Thread.sleep(2000L);
        } catch (InterruptedException e) {
            CareLog.e(TAG, e, "Wait has failed.", new Object[0]);
        }
        setStatus(ServiceFirmwareDownloadProcedureStatus.Idle);
        String fileName = firmwareVersion.getFileName();
        if (StringUtils.isNullOrEmpty(fileName)) {
            fileName = "fake_firmware.bin";
        }
        fireDownloadFirmwareCompleted(firmwareType, callback, new File(this.mContext.getFilesDir(), fileName));
    }
}
