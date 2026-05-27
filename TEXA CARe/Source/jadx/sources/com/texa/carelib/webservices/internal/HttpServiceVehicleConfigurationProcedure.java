package com.texa.carelib.webservices.internal;

import android.util.Base64;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.logging.internal.LogUtils;
import com.texa.carelib.core.utils.FileCache;
import com.texa.carelib.core.utils.InternalFileCache;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.webservices.ConfigurationReport;
import com.texa.carelib.webservices.ConfigurationReportStoredEvent;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceVehicleConfigurationDownloadedEvent;
import com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure;
import java.io.File;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class HttpServiceVehicleConfigurationProcedure implements ServiceVehicleConfigurationProcedure {
    private static final String KEY_CONFIG_RESULTS = "config_results";
    private static final String KEY_INTERPRETER_VERSION = "interpreter_version";
    private static final String KEY_VIN = "vin";
    private static final String PATH_FILE_REQUEST = "/api/contents/configurations";
    private static final String PATH_STORE_REPORTS = "/api/dongles/configurations";
    public static final String TAG = "HttpServiceVehicleConfigurationProcedure";
    private HttpServiceVehicleConfigurationProcedureStatus mHttpServiceVehicleConfigurationProcedureStatus;
    private final HttpTexaService mService;

    public interface HttpServiceVehicleConfigurationProcedureStatus {
        boolean isConfigurationDownloadAllowed();

        boolean isReportStoringAllowed();
    }

    public HttpServiceVehicleConfigurationProcedure(HttpTexaService httpTexaService) {
        this.mService = httpTexaService;
    }

    @Override // com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure
    public void downloadConfiguration(String str, String str2, BigInteger bigInteger, Callback<ServiceVehicleConfigurationDownloadedEvent> callback) throws CareLibException {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new CareLibException("Dongle serial number could not be null.");
        }
        if (bigInteger == null) {
            throw new CareLibException("Interpreter version could not be null.");
        }
        if (callback == null) {
            throw new CareLibException("Callback could not be null.");
        }
        String str3 = TAG;
        CareLog.d(str3, "downloadConfiguration(" + str + ", " + str2 + ", " + bigInteger + ")", new Object[0]);
        this.mHttpServiceVehicleConfigurationProcedureStatus = new HttpServiceVehicleConfigurationProcedureHttpStatusConfigurationDownloadHttpServiceVehicleConfigurationProcedureStatus();
        ConfigurationDownloadTask configurationDownloadTask = new ConfigurationDownloadTask(str, str2, bigInteger, callback);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append("_ConfigurationDownloadTask");
        Thread thread = new Thread(configurationDownloadTask, sb.toString());
        thread.setPriority(1);
        thread.start();
    }

    @Override // com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure
    public void storeConfigurationReports(String str, List<ConfigurationReport> list, Callback<ConfigurationReportStoredEvent> callback) throws CareLibException {
        String str2 = TAG;
        CareLog.d(str2, "storeConfigurationReports(List<ConfigFileInfo> configuration_reports)", new Object[0]);
        if (StringUtils.isNullOrEmpty(str)) {
            throw new CareLibException("Dongle serial number could not be null.");
        }
        if (callback == null) {
            throw new CareLibException("Callback could not be null.");
        }
        if (list == null) {
            throw new CareLibException("Configuration reports could not be null.");
        }
        HttpServiceVehicleConfigurationProcedureStatus httpServiceVehicleConfigurationProcedureStatus = this.mHttpServiceVehicleConfigurationProcedureStatus;
        if (httpServiceVehicleConfigurationProcedureStatus == null || !httpServiceVehicleConfigurationProcedureStatus.isReportStoringAllowed()) {
            throw new CareLibException("Could not upload report at this moment.");
        }
        Thread thread = new Thread(new StoreConfigurationReportsTask(str, list, callback), str2 + "_storeConfigurationReports");
        thread.setPriority(1);
        thread.start();
    }

    private abstract class HttpServiceVehicleConfigurationProcedureStatusBase implements HttpServiceVehicleConfigurationProcedureStatus {
        @Override // com.texa.carelib.webservices.internal.HttpServiceVehicleConfigurationProcedure.HttpServiceVehicleConfigurationProcedureStatus
        public boolean isConfigurationDownloadAllowed() {
            return false;
        }

        @Override // com.texa.carelib.webservices.internal.HttpServiceVehicleConfigurationProcedure.HttpServiceVehicleConfigurationProcedureStatus
        public boolean isReportStoringAllowed() {
            return false;
        }

        private HttpServiceVehicleConfigurationProcedureStatusBase() {
        }
    }

    private class HttpServiceVehicleConfigurationProcedureStatusReportStoring extends HttpServiceVehicleConfigurationProcedureStatusBase {
        @Override // com.texa.carelib.webservices.internal.HttpServiceVehicleConfigurationProcedure.HttpServiceVehicleConfigurationProcedureStatusBase, com.texa.carelib.webservices.internal.HttpServiceVehicleConfigurationProcedure.HttpServiceVehicleConfigurationProcedureStatus
        public boolean isReportStoringAllowed() {
            return true;
        }

        private HttpServiceVehicleConfigurationProcedureStatusReportStoring() {
            super();
        }
    }

    private class HttpServiceVehicleConfigurationProcedureHttpStatusConfigurationDownloadHttpServiceVehicleConfigurationProcedureStatus extends HttpServiceVehicleConfigurationProcedureStatusBase {
        @Override // com.texa.carelib.webservices.internal.HttpServiceVehicleConfigurationProcedure.HttpServiceVehicleConfigurationProcedureStatusBase, com.texa.carelib.webservices.internal.HttpServiceVehicleConfigurationProcedure.HttpServiceVehicleConfigurationProcedureStatus
        public boolean isConfigurationDownloadAllowed() {
            return true;
        }

        private HttpServiceVehicleConfigurationProcedureHttpStatusConfigurationDownloadHttpServiceVehicleConfigurationProcedureStatus() {
            super();
        }
    }

    private class StoreConfigurationReportsTask implements Runnable {
        private final Callback<ConfigurationReportStoredEvent> mCallback;
        private final List<ConfigurationReport> mConfigurationReports;
        private final String mHardwareID;

        StoreConfigurationReportsTask(String str, List<ConfigurationReport> list, Callback<ConfigurationReportStoredEvent> callback) {
            this.mConfigurationReports = list;
            this.mHardwareID = str;
            this.mCallback = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            HashMap map = new HashMap();
            map.put(HttpTexaService.KEY_HWID, this.mHardwareID);
            map.put(HttpServiceVehicleConfigurationProcedure.KEY_CONFIG_RESULTS, this.mConfigurationReports);
            CareLog.v(HttpServiceVehicleConfigurationProcedure.TAG, LogUtils.dataToString(map), new Object[0]);
            HttpServiceVehicleConfigurationProcedure.this.mService.accessAPIAtPath(HttpServiceVehicleConfigurationProcedure.PATH_STORE_REPORTS, HttpMethod.POST, true, map, new HttpAPIRequestListener() { // from class: com.texa.carelib.webservices.internal.HttpServiceVehicleConfigurationProcedure.StoreConfigurationReportsTask.1
                @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
                public void onError(CareError careError) {
                    StoreConfigurationReportsTask storeConfigurationReportsTask = StoreConfigurationReportsTask.this;
                    storeConfigurationReportsTask.terminate(storeConfigurationReportsTask.getError(careError));
                }

                @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
                public void onCompleted(String str) {
                    StoreConfigurationReportsTask.this.terminate(null);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void terminate(CareError careError) {
            Callback<ConfigurationReportStoredEvent> callback = this.mCallback;
            if (callback != null) {
                callback.onCompleted(new ConfigurationReportStoredEvent(this, careError));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CareError getError(CareError careError) {
            return new CareError.Builder(2, 33).setMessage(HttpServiceVehicleConfigurationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_diagnostic_configuration_reports_upload_fails)).setInnerError(careError).build();
        }
    }

    private class ConfigurationDownloadTask implements Runnable {
        private final Callback<ServiceVehicleConfigurationDownloadedEvent> mCallback;
        private final String mHardwareID;
        private final BigInteger mInterpreterVersion;
        private final String mVehicleID;

        ConfigurationDownloadTask(String str, String str2, BigInteger bigInteger, Callback<ServiceVehicleConfigurationDownloadedEvent> callback) {
            this.mHardwareID = str;
            this.mVehicleID = str2;
            this.mInterpreterVersion = bigInteger;
            this.mCallback = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            HashMap map = new HashMap();
            map.put(HttpTexaService.KEY_HWID, this.mHardwareID);
            map.put(HttpServiceVehicleConfigurationProcedure.KEY_INTERPRETER_VERSION, this.mInterpreterVersion);
            map.put("vin", this.mVehicleID);
            CareLog.v(HttpServiceVehicleConfigurationProcedure.TAG, LogUtils.dataToString(map), new Object[0]);
            HttpServiceVehicleConfigurationProcedure.this.mService.accessAPIAtPath(HttpServiceVehicleConfigurationProcedure.PATH_FILE_REQUEST, HttpMethod.POST, true, map, new HttpAPIRequestListener() { // from class: com.texa.carelib.webservices.internal.HttpServiceVehicleConfigurationProcedure.ConfigurationDownloadTask.1
                @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
                public void onError(CareError careError) {
                    if (ConfigurationDownloadTask.this.mCallback != null) {
                        ConfigurationDownloadTask.this.mCallback.onCompleted(new ServiceVehicleConfigurationDownloadedEvent(HttpServiceVehicleConfigurationProcedure.this, Collections.emptyList(), ConfigurationDownloadTask.this.getError(careError)));
                    }
                }

                @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
                public void onCompleted(String str) {
                    HttpServiceVehicleConfigurationProcedure.this.mHttpServiceVehicleConfigurationProcedureStatus = new HttpServiceVehicleConfigurationProcedureStatusReportStoring();
                    DownloadConfigurationFileResponse downloadConfigurationFileResponseFromJson = DownloadConfigurationFileResponse.fromJson(str);
                    if (downloadConfigurationFileResponseFromJson == null) {
                        if (ConfigurationDownloadTask.this.mCallback != null) {
                            ConfigurationDownloadTask.this.mCallback.onCompleted(new ServiceVehicleConfigurationDownloadedEvent(HttpServiceVehicleConfigurationProcedure.this, Collections.emptyList(), ConfigurationDownloadTask.this.getError(new CareError.Builder(2, 12).setMessage(HttpServiceVehicleConfigurationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_invalid_response_body)).build())));
                            return;
                        }
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    InternalFileCache internalFileCache = new InternalFileCache(HttpServiceVehicleConfigurationProcedure.this.mService.getContext());
                    for (Content content : downloadConfigurationFileResponseFromJson.getFiles()) {
                        try {
                            byte[] bArrDecode = Base64.decode(content.getContent(), 0);
                            File fileStore = internalFileCache.store(FileCache.DIR_DIAGNOSIS_CONFIGURATION, content.getName(), bArrDecode);
                            if (fileStore != null) {
                                arrayList.add(fileStore);
                                String str2 = HttpServiceVehicleConfigurationProcedure.TAG;
                                Object[] objArr = new Object[2];
                                objArr[0] = fileStore.getAbsolutePath();
                                objArr[1] = Integer.valueOf(bArrDecode != null ? bArrDecode.length : 0);
                                CareLog.d(str2, "Cached file[AbsolutePath=%s,Size=%d]", objArr);
                            }
                        } catch (Exception e) {
                            CareLog.e(HttpServiceVehicleConfigurationProcedure.TAG, e, "Could not cache configuration file on file system.", new Object[0]);
                        }
                    }
                    if (ConfigurationDownloadTask.this.mCallback != null) {
                        ConfigurationDownloadTask.this.mCallback.onCompleted(new ServiceVehicleConfigurationDownloadedEvent(HttpServiceVehicleConfigurationProcedure.this, arrayList, null));
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CareError getError(CareError careError) {
            return new CareError.Builder(2, 23).setMessage(HttpServiceVehicleConfigurationProcedure.this.mService.getContext().getResources().getString(R.string.error_service_diagnostic_configuration_download_fails)).setInnerError(careError).build();
        }
    }
}
