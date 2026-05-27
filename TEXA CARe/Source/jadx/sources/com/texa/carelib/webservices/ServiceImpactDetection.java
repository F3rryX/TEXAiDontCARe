package com.texa.carelib.webservices;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceImpactDetection {
    void uploadCrashData(String str, Callback<CrashDataUploadedEvent> callback) throws CareLibException;
}
