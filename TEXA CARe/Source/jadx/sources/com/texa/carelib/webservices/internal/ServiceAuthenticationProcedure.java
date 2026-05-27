package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.ObservableObject;
import com.texa.carelib.webservices.TexaServiceDelegate;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceAuthenticationProcedure extends ObservableObject {
    public static final String PROPERTY_STATUS = "com.texa.carelib.webservices.ServiceAuthenticationProcedure#PROPERTY_STATUS";

    boolean authenticate(TexaServiceDelegate texaServiceDelegate, Callback<ServiceAuthenticationProcedureCompletedEvent> callback);

    ServiceAuthenticationProcedureStatus getStatus();
}
