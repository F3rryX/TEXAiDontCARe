package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceAuthenticationProcedureCompletedEvent extends ErrorEventBase {
    public ServiceAuthenticationProcedureCompletedEvent(Object obj, CareError careError) {
        super(obj, careError);
    }
}
