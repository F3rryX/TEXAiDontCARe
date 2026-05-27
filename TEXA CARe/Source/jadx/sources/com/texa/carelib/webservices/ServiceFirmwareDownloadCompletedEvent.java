package com.texa.carelib.webservices;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceFirmwareDownloadCompletedEvent extends ErrorEventBase {
    private final File mFile;
    private final FirmwareType mFirmwareType;

    public ServiceFirmwareDownloadCompletedEvent(Object obj, FirmwareType firmwareType, File file, CareError careError) {
        super(obj, careError);
        this.mFile = file;
        this.mFirmwareType = firmwareType;
    }

    public File getFile() {
        return this.mFile;
    }

    public FirmwareType getFirmwareType() {
        return this.mFirmwareType;
    }
}
