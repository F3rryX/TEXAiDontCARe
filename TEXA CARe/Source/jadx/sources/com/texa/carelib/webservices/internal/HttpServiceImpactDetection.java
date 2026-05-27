package com.texa.carelib.webservices.internal;

import android.util.Base64;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.webservices.CrashDataUploadedEvent;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceImpactDetection;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class HttpServiceImpactDetection implements ServiceImpactDetection {
    private static final String API_UPLOAD_CRASH_DATA = "/crashloader/api/crash/binary";
    private static final String KEY_CRASH_CONTENT = "crash_content";
    public static final String TAG = "HttpServiceImpactDetection";
    private final HttpTexaService mService;

    public HttpServiceImpactDetection(HttpTexaService httpTexaService) {
        this.mService = httpTexaService;
    }

    @Override // com.texa.carelib.webservices.ServiceImpactDetection
    public void uploadCrashData(String str, final Callback<CrashDataUploadedEvent> callback) {
        HashMap map = new HashMap();
        map.put(KEY_CRASH_CONTENT, Base64.encodeToString(str.getBytes(), 2));
        this.mService.accessAPIAtPath(API_UPLOAD_CRASH_DATA, HttpMethod.POST, false, map, new HttpAPIRequestListener() { // from class: com.texa.carelib.webservices.internal.HttpServiceImpactDetection.1
            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onError(CareError careError) {
                CareLog.e(HttpServiceImpactDetection.TAG, "Could not upload crash data. Error=%s", careError);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onCompleted(new CrashDataUploadedEvent(this, HttpServiceImpactDetection.this.getError(careError)));
                }
            }

            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onCompleted(String str2) {
                CareLog.d(HttpServiceImpactDetection.TAG, "Crash data uploaded successfully.", new Object[0]);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.onCompleted(new CrashDataUploadedEvent(this, null));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CareError getError(CareError careError) {
        return new CareError.Builder(2, 32).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_upload_crash_reports_fails)).setInnerError(careError).build();
    }
}
