package com.texa.carelib.webservices;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceVehicleConfigurationDownloadedEvent extends ErrorEventBase {
    private final List<File> mConfigurationFiles;

    public ServiceVehicleConfigurationDownloadedEvent(Object obj, List<File> list, CareError careError) {
        super(obj, careError);
        this.mConfigurationFiles = list;
    }

    public List<File> getConfigurationFiles() {
        return this.mConfigurationFiles;
    }
}
