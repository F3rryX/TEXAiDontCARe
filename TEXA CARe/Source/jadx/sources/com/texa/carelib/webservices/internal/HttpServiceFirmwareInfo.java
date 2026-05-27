package com.texa.carelib.webservices.internal;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.carelib.core.AppType;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.VersionFormatter;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceFirmwareInfoLoadedEvent;
import com.texa.carelib.webservices.ServiceFirmwareInfoStatus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class HttpServiceFirmwareInfo extends ServiceFirmwareInfoBase {
    private static final String KEY_APPLICATIONS = "applications";
    private static final String KEY_APPLICATION_NAME = "name";
    private static final String KEY_APPLICATION_TYPE = "type";
    private static final String KEY_APPLICATION_VERSION = "version";
    private static final String KEY_BOARD_NAME = "board_name";
    private static final String KEY_BRAND_NAME = "brand";
    private static final String KEY_PRODUCT_NAME = "product_name";
    private static final String PATH_FW_VERSIONS = "/api/updates/firmware";
    public static final String TAG = "HttpServiceFirmwareInfo";
    private static Map<String, AppType> mApplicationTypes;
    private FirmwareVersion mFromMainAppVersion;
    private FirmwareVersion mFromServiceAppVersion;
    private final HttpTexaService mService;

    public HttpServiceFirmwareInfo(HttpTexaService httpTexaService) {
        this.mService = httpTexaService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CareError getError(CareError careError) {
        return new CareError.Builder(2, 19).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_firmware_get_info_fails)).setInnerError(careError).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getApplicationName(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2) {
        if (firmwareVersion != null && !StringUtils.isNullOrEmpty(firmwareVersion.getApplicationName())) {
            return firmwareVersion.getApplicationName();
        }
        if (firmwareVersion2 != null) {
            return firmwareVersion2.getApplicationName();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getBoardName(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2) {
        if (firmwareVersion != null && !StringUtils.isNullOrEmpty(firmwareVersion.getBoardName())) {
            return firmwareVersion.getBoardName();
        }
        if (firmwareVersion2 != null) {
            return firmwareVersion2.getBoardName();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getCustomerName(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2) {
        if (firmwareVersion != null && !StringUtils.isNullOrEmpty(firmwareVersion.getCustomerName())) {
            return firmwareVersion.getCustomerName();
        }
        if (firmwareVersion2 != null) {
            return firmwareVersion2.getCustomerName();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getProductName(FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2) {
        if (firmwareVersion != null && !StringUtils.isNullOrEmpty(firmwareVersion.getProductName())) {
            return firmwareVersion.getProductName();
        }
        if (firmwareVersion2 != null) {
            return firmwareVersion2.getProductName();
        }
        return null;
    }

    @Override // com.texa.carelib.webservices.ServiceFirmwareInfo
    public void loadFirmwareInfo(String str, FirmwareVersion firmwareVersion, FirmwareVersion firmwareVersion2, final Callback<ServiceFirmwareInfoLoadedEvent> callback) throws CareLibException {
        if (getStatus() == ServiceFirmwareInfoStatus.Pending) {
            throw new OperationAlreadyRunningException("Load firmware info is already in progress.");
        }
        setServiceStatus(ServiceFirmwareInfoStatus.Pending);
        setMainAppVersion(null);
        setServiceAppVersion(null);
        this.mFromMainAppVersion = firmwareVersion;
        this.mFromServiceAppVersion = firmwareVersion2;
        HashMap map = new HashMap();
        map.put(HttpTexaService.KEY_HWID, str);
        map.put(KEY_BOARD_NAME, getBoardName(firmwareVersion, firmwareVersion2));
        map.put(KEY_PRODUCT_NAME, getProductName(firmwareVersion, firmwareVersion2));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VersionInfo("MAIN_APP", firmwareVersion));
        arrayList.add(new VersionInfo("SERVICE_APP", firmwareVersion2));
        map.put(KEY_APPLICATIONS, arrayList);
        setServiceStatus(ServiceFirmwareInfoStatus.Pending);
        this.mService.accessAPIAtPath(PATH_FW_VERSIONS, HttpMethod.POST, false, map, new HttpAPIRequestListener() { // from class: com.texa.carelib.webservices.internal.HttpServiceFirmwareInfo.1
            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onError(CareError careError) {
                HttpServiceFirmwareInfo.this.setServiceStatus(ServiceFirmwareInfoStatus.Error);
                callback.onCompleted(new ServiceFirmwareInfoLoadedEvent(this, null, null, HttpServiceFirmwareInfo.this.getError(careError)));
            }

            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onCompleted(String str2) {
                try {
                    HttpFirmwareInfoProcedureResponse httpFirmwareInfoProcedureResponseFromJson = HttpServiceFirmwareInfo.fromJson(str2);
                    if (httpFirmwareInfoProcedureResponseFromJson != null) {
                        String applicationName = HttpServiceFirmwareInfo.getApplicationName(HttpServiceFirmwareInfo.this.mFromMainAppVersion, HttpServiceFirmwareInfo.this.mFromServiceAppVersion);
                        String boardName = HttpServiceFirmwareInfo.getBoardName(HttpServiceFirmwareInfo.this.mFromMainAppVersion, HttpServiceFirmwareInfo.this.mFromServiceAppVersion);
                        String customerName = HttpServiceFirmwareInfo.getCustomerName(HttpServiceFirmwareInfo.this.mFromMainAppVersion, HttpServiceFirmwareInfo.this.mFromServiceAppVersion);
                        String productName = HttpServiceFirmwareInfo.getProductName(HttpServiceFirmwareInfo.this.mFromMainAppVersion, HttpServiceFirmwareInfo.this.mFromServiceAppVersion);
                        for (HttpFirmwareInfoProcedureResponse.VersionInfo versionInfo : httpFirmwareInfoProcedureResponseFromJson.getApplications()) {
                            FirmwareVersion firmwareVersion3 = versionInfo.toFirmwareVersion(applicationName, customerName, boardName, productName);
                            if ("MAIN_APP".equals(versionInfo.getApplicationType())) {
                                HttpServiceFirmwareInfo.this.setMainAppVersion(firmwareVersion3);
                            } else if ("SERVICE_APP".equals(versionInfo.getApplicationType())) {
                                HttpServiceFirmwareInfo.this.setServiceAppVersion(firmwareVersion3);
                            }
                        }
                        HttpServiceFirmwareInfo.this.setServiceStatus(ServiceFirmwareInfoStatus.Loaded);
                        callback.onCompleted(new ServiceFirmwareInfoLoadedEvent(this, HttpServiceFirmwareInfo.this.getMainAppVersion(), HttpServiceFirmwareInfo.this.getServiceAppVersion(), null));
                        return;
                    }
                    throw new CareLibException("Invalid Http response body.");
                } catch (CareLibException unused) {
                    CareLog.e(HttpServiceFirmwareInfo.TAG, "Invalid response format: %s", str2);
                    HttpServiceFirmwareInfo.this.setServiceStatus(ServiceFirmwareInfoStatus.Error);
                    callback.onCompleted(new ServiceFirmwareInfoLoadedEvent(this, null, null, new CareError.Builder(2, 12).setMessage(HttpServiceFirmwareInfo.this.mService.getContext().getResources().getString(R.string.error_service_invalid_response_body)).build()));
                }
            }
        });
    }

    public static HttpFirmwareInfoProcedureResponse fromJson(String str) {
        return (HttpFirmwareInfoProcedureResponse) new GsonBuilder().disableHtmlEscaping().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, HttpFirmwareInfoProcedureResponse.class);
    }

    private class VersionInfo {
        public static final String VERSION_TYPE_MAIN_APP = "MAIN_APP";
        public static final String VERSION_TYPE_SERVICE_APP = "SERVICE_APP";

        @SerializedName("name")
        @Expose
        private String mApplicationName;

        @SerializedName("type")
        @Expose
        private String mApplicationType;

        @SerializedName(HttpServiceFirmwareInfo.KEY_BRAND_NAME)
        @Expose
        private String mCustomerName;

        @SerializedName(HttpServiceFirmwareInfo.KEY_APPLICATION_VERSION)
        @Expose
        private String mVersion;

        public String getVersion() {
            return this.mVersion;
        }

        public String getApplicationType() {
            return this.mApplicationType;
        }

        public String getApplicationName() {
            return this.mApplicationName;
        }

        public String getCustomerName() {
            return this.mCustomerName;
        }

        public VersionInfo(String str, FirmwareVersion firmwareVersion) {
            if (firmwareVersion != null) {
                setApplicationName(firmwareVersion.getApplicationName());
                setCustomerName(firmwareVersion.getCustomerName());
                setVersion(VersionFormatter.formatShort(firmwareVersion.getVersion()));
            }
            setApplicationType(str);
        }

        public VersionInfo(String str, String str2, String str3, String str4) {
            setApplicationName(str3);
            setApplicationType(str);
            setVersion(str2);
            setCustomerName(str4);
        }

        public void setApplicationName(String str) {
            this.mApplicationName = str;
        }

        public void setVersion(String str) {
            this.mVersion = str;
        }

        public void setApplicationType(String str) {
            this.mApplicationType = str;
        }

        public void setCustomerName(String str) {
            this.mCustomerName = str;
        }
    }

    class HttpFirmwareInfoProcedureResponse {

        @SerializedName(HttpServiceFirmwareInfo.KEY_APPLICATIONS)
        @Expose
        private List<VersionInfo> mApplications = new ArrayList();

        public HttpFirmwareInfoProcedureResponse() {
        }

        public List<VersionInfo> getApplications() {
            if (this.mApplications == null) {
                this.mApplications = new ArrayList();
            }
            return this.mApplications;
        }

        public class VersionInfo {
            public static final String APPLICATION_TYPE_MAIN = "MAIN_APP";
            public static final String APPLICATION_TYPE_SERVICE = "SERVICE_APP";
            private static final String KEY_APPLICATION_NAME = "name";
            private static final String KEY_APPLICATION_TYPE = "type";
            private static final String KEY_APPLICATION_VERSION = "version";
            private static final String KEY_FILE_NAME = "file_name";

            @SerializedName(KEY_FILE_NAME)
            @Expose
            private String mFileName = null;

            @SerializedName("name")
            @Expose
            private String mApplicationName = null;

            @SerializedName("type")
            @Expose
            private String mApplicationType = null;

            @SerializedName(KEY_APPLICATION_VERSION)
            @Expose
            private String mVersion = null;

            public String getApplicationType() {
                return this.mApplicationType;
            }

            public void setApplicationType(String str) {
                this.mApplicationType = str;
            }

            public String getVersion() {
                return this.mVersion;
            }

            public String getFileName() {
                return this.mFileName;
            }

            public void setFileName(String str) {
                this.mFileName = str;
            }

            public String getApplicationName() {
                return this.mApplicationName;
            }

            public void setApplicationName(String str) {
                this.mApplicationName = str;
            }

            public void setVersion(String str) {
                this.mVersion = str;
            }

            public VersionInfo() {
                HttpFirmwareInfoProcedureResponse.this.mApplications = new ArrayList();
            }

            public FirmwareVersion toFirmwareVersion(String str, String str2, String str3, String str4) {
                String str5 = this.mVersion;
                if (str5 == null) {
                    return null;
                }
                String[] strArrSplit = str5.split("\\.");
                if (strArrSplit.length == 0) {
                    return null;
                }
                FirmwareVersion firmwareVersion = new FirmwareVersion(strArrSplit.length > 0 ? Integer.valueOf(Integer.parseInt(strArrSplit[0])) : null, strArrSplit.length > 1 ? Integer.valueOf(Integer.parseInt(strArrSplit[1])) : null, strArrSplit.length > 2 ? Integer.valueOf(Integer.parseInt(strArrSplit[2])) : null, strArrSplit.length > 3 ? Integer.valueOf(Integer.parseInt(strArrSplit[3])) : null);
                firmwareVersion.setFileName(this.mFileName);
                firmwareVersion.setApplicationName(str);
                firmwareVersion.setCustomerName(str2);
                firmwareVersion.setBoardName(str3);
                firmwareVersion.setProductName(str4);
                if (this.mApplicationType != null && HttpServiceFirmwareInfo.mApplicationTypes.containsKey(this.mApplicationType)) {
                    firmwareVersion.setAppType((AppType) HttpServiceFirmwareInfo.mApplicationTypes.get(this.mApplicationType));
                } else {
                    firmwareVersion.setAppType(AppType.UNDEF);
                }
                return firmwareVersion;
            }
        }
    }

    static {
        HashMap map = new HashMap();
        mApplicationTypes = map;
        map.put("MAIN_APP", AppType.MAIN);
        mApplicationTypes.put("SERVICE_APP", AppType.SERVICE);
    }
}
