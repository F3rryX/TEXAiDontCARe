package com.texa.carelib.webservices.internal;

import android.content.Context;
import android.util.Base64;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.FileCache;
import com.texa.carelib.core.utils.InternalFileCache;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.webservices.ConfigurationReport;
import com.texa.carelib.webservices.ConfigurationReportStoredEvent;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceVehicleConfigurationDownloadedEvent;
import com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure;
import java.io.File;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class MockServiceVehicleConfigurationProcedure implements ServiceVehicleConfigurationProcedure {
    private static final int DOWNLOAD_CONFIGURATION_DELAY = 3500;
    private static final int STORE_REPORT_DELAY = 2000;
    public static final String TAG = "MockServiceVehicleConfigurationProcedure";
    private final Context mContext;

    public MockServiceVehicleConfigurationProcedure(Context context) {
        this.mContext = context;
    }

    @Override // com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure
    public void downloadConfiguration(String str, String str2, BigInteger bigInteger, final Callback<ServiceVehicleConfigurationDownloadedEvent> callback) throws CareLibException {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new CareLibException("Dongle serial number could not be null.");
        }
        if (callback == null) {
            throw new CareLibException("Callback could not be null.");
        }
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.webservices.internal.MockServiceVehicleConfigurationProcedure$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m787xbb05f8ba(callback);
            }
        }, "thread_downloadConfiguration");
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$downloadConfiguration$0$com-texa-carelib-webservices-internal-MockServiceVehicleConfigurationProcedure, reason: not valid java name */
    public /* synthetic */ void m787xbb05f8ba(Callback callback) {
        try {
            Thread.sleep(3500L);
        } catch (InterruptedException e) {
            CareLog.e(TAG, e, "", new Object[0]);
        }
        List<Content> storedFile = getStoredFile();
        ArrayList arrayList = new ArrayList();
        InternalFileCache internalFileCache = new InternalFileCache(this.mContext);
        for (Content content : storedFile) {
            try {
                byte[] bArrDecode = Base64.decode(content.getContent(), 0);
                File fileStore = internalFileCache.store(FileCache.DIR_DIAGNOSIS_CONFIGURATION, content.getName(), bArrDecode);
                if (fileStore != null) {
                    arrayList.add(fileStore);
                    CareLog.d(TAG, "Cached file[AbsolutePath=%s,Size=%d]", fileStore.getAbsolutePath(), Integer.valueOf(bArrDecode.length));
                }
            } catch (Exception e2) {
                CareLog.e(TAG, e2, "Could not cache configuration file on file system.", new Object[0]);
            }
        }
        if (Utils.isEmpty(arrayList)) {
            callback.onCompleted(new ServiceVehicleConfigurationDownloadedEvent(this, Collections.emptyList(), new CareError.Builder(1, 8).setMessage(this.mContext.getResources().getString(R.string.error_service_file_store_error)).build()));
        } else {
            callback.onCompleted(new ServiceVehicleConfigurationDownloadedEvent(this, arrayList, null));
        }
    }

    @Override // com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure
    public void storeConfigurationReports(String str, List<ConfigurationReport> list, final Callback<ConfigurationReportStoredEvent> callback) throws CareLibException {
        if (StringUtils.isNullOrEmpty(str)) {
            CareLog.e(TAG, "SerialNumber cannot be null!!!", new Object[0]);
            throw new CareLibException("Dongle serial number could not be null.");
        }
        if (callback == null) {
            throw new CareLibException("Callback could not be null.");
        }
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.webservices.internal.MockServiceVehicleConfigurationProcedure$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m788xf13c867d(callback);
            }
        }, TAG + "_storeConfigurationReports");
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$storeConfigurationReports$1$com-texa-carelib-webservices-internal-MockServiceVehicleConfigurationProcedure, reason: not valid java name */
    public /* synthetic */ void m788xf13c867d(Callback callback) {
        try {
            Thread.sleep(2000L);
        } catch (InterruptedException e) {
            CareLog.e(TAG, e, "Wait has failed.", new Object[0]);
        }
        callback.onCompleted(new ConfigurationReportStoredEvent(this, null));
    }

    public List<Content> getStoredFile() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 4; i++) {
            arrayList.add(new Content(String.format("Conf_%s", Integer.valueOf(i)), "This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. This is a mock configuration file. "));
        }
        return arrayList;
    }
}
