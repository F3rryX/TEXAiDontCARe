package com.texa.carelib.profile.internal.filecarrier.events;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class FileReceivedEvent extends ErrorEventBase {
    private final File mFile;

    public FileReceivedEvent(Object obj, File file, CareError careError) {
        super(obj, careError);
        this.mFile = file;
    }

    public File getFile() {
        return this.mFile;
    }
}
