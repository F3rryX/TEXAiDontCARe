package com.texa.carelib.webservices;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class CrashDataUploadedEvent extends ErrorEventBase {
    public CrashDataUploadedEvent(Object obj, CareError careError) {
        super(obj, careError);
    }
}
