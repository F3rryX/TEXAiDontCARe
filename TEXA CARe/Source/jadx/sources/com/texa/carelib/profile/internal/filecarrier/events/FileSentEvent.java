package com.texa.carelib.profile.internal.filecarrier.events;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class FileSentEvent extends ErrorEventBase {
    public FileSentEvent(Object obj, CareError careError) {
        super(obj, careError);
    }
}
