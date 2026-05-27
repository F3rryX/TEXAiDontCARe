package com.texa.carelib.care.firmwareupgrade.events;

import com.texa.carelib.core.AppType;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareUpgradeCompletedEvent extends ErrorEventBase {
    private final AppType mAppType;
    private final File mFile;

    public FirmwareUpgradeCompletedEvent(Object obj, AppType appType, File file, CareError careError) {
        super(obj, careError);
        this.mAppType = appType;
        this.mFile = file;
    }

    public File getFile() {
        return this.mFile;
    }

    public AppType getAppType() {
        return this.mAppType;
    }
}
