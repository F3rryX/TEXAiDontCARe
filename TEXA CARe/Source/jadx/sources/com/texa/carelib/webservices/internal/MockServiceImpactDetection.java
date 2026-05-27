package com.texa.carelib.webservices.internal;

import com.texa.carelib.core.Callback;
import com.texa.carelib.webservices.CrashDataUploadedEvent;
import com.texa.carelib.webservices.ServiceImpactDetection;

/* JADX INFO: loaded from: classes2.dex */
public class MockServiceImpactDetection implements ServiceImpactDetection {
    @Override // com.texa.carelib.webservices.ServiceImpactDetection
    public void uploadCrashData(String str, final Callback<CrashDataUploadedEvent> callback) {
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.webservices.internal.MockServiceImpactDetection$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m785x7f12a6e(callback);
            }
        }, "Thread_uploadCrashData");
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$uploadCrashData$0$com-texa-carelib-webservices-internal-MockServiceImpactDetection, reason: not valid java name */
    public /* synthetic */ void m785x7f12a6e(Callback callback) {
        try {
            Thread.sleep(2000L);
        } catch (InterruptedException unused) {
        }
        if (callback != null) {
            callback.onCompleted(new CrashDataUploadedEvent(this, null));
        }
    }
}
