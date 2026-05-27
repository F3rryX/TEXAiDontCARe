package com.texa.carelib.webservices.internal;

import android.util.Base64;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.model.BatteryAnalyzeModel;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.InternalFileCache;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.webservices.FirmwareType;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceFirmwareDownloadCompletedEvent;
import com.texa.carelib.webservices.ServiceFirmwareDownloadProcedureStatus;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class HttpServiceFirmwareDownloadProcedure extends ServiceFirmwareDownloadProcedureBase {
    private static final String KEY_CONTENT_NAME = "content_name";
    private static final String KEY_CONTENT_TYPE = "content_type";
    private static final String MAIN_APP_VALUE = "MAIN_APP";
    private static final String PATH_DOWNLOAD = "/api/contents/firmware";
    private static final String SERVICE_APP_VALUE = "SERVICE_APP";
    public static final String TAG = "HttpServiceFirmwareDownloadProcedure";
    private final HttpTexaService mService;

    public HttpServiceFirmwareDownloadProcedure(HttpTexaService httpTexaService) {
        this.mService = httpTexaService;
    }

    @Override // com.texa.carelib.webservices.ServiceFirmwareDownloadProcedure
    public void downloadFirmware(final FirmwareType firmwareType, FirmwareVersion firmwareVersion, String str, final Callback<ServiceFirmwareDownloadCompletedEvent> callback) throws CareLibException {
        CareLog.d(TAG, "downloadFirmware[type=%s,version=%s,hWID=%s]", firmwareType, firmwareVersion, str);
        if (StringUtils.isNullOrEmpty(str)) {
            throw new CareLibException("HardwareID not set");
        }
        if (firmwareType != FirmwareType.Main && firmwareType != FirmwareType.Service) {
            throw new CareLibException("Invalid firmware type.");
        }
        if (firmwareVersion == null || firmwareVersion.getFileName() == null || firmwareVersion.getFileName().isEmpty()) {
            throw new CareLibException("Invalid firmware version.");
        }
        if (callback == null) {
            throw new CareLibException("Callback cannot be null.");
        }
        if (getStatus() == ServiceFirmwareDownloadProcedureStatus.Running) {
            throw new OperationAlreadyRunningException("A firmware download is already running...");
        }
        String fileType = getFileType(firmwareType);
        if (fileType == null) {
            throw new CareLibException("Firmware type not managed...");
        }
        HashMap map = new HashMap();
        map.put(HttpTexaService.KEY_HWID, str);
        map.put(KEY_CONTENT_NAME, firmwareVersion.getFileName());
        map.put("content_type", fileType);
        setStatus(ServiceFirmwareDownloadProcedureStatus.Running);
        this.mService.accessAPIAtPath(PATH_DOWNLOAD, HttpMethod.GET, true, map, new HttpAPIRequestListener() { // from class: com.texa.carelib.webservices.internal.HttpServiceFirmwareDownloadProcedure.1
            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onError(CareError careError) {
                try {
                    HttpServiceFirmwareDownloadProcedure.this.setStatus(ServiceFirmwareDownloadProcedureStatus.Idle);
                    HttpServiceFirmwareDownloadProcedure httpServiceFirmwareDownloadProcedure = HttpServiceFirmwareDownloadProcedure.this;
                    httpServiceFirmwareDownloadProcedure.fireDownloadFirmwareError(firmwareType, callback, httpServiceFirmwareDownloadProcedure.getError(careError));
                } catch (Exception e) {
                    CareLog.e(HttpServiceFirmwareDownloadProcedure.TAG, e, "Could not notify firmware download error.", new Object[0]);
                }
            }

            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onCompleted(String str2) {
                FirmwareDownloadResponse firmwareDownloadResponseFromJson = HttpServiceFirmwareDownloadProcedure.fromJson(str2);
                if (firmwareDownloadResponseFromJson == null) {
                    HttpServiceFirmwareDownloadProcedure.this.setStatus(ServiceFirmwareDownloadProcedureStatus.Idle);
                    HttpServiceFirmwareDownloadProcedure httpServiceFirmwareDownloadProcedure = HttpServiceFirmwareDownloadProcedure.this;
                    httpServiceFirmwareDownloadProcedure.fireDownloadFirmwareError(firmwareType, callback, httpServiceFirmwareDownloadProcedure.getError(new CareError.Builder(2, 12).setMessage(HttpServiceFirmwareDownloadProcedure.this.mService.getContext().getResources().getString(R.string.error_service_invalid_response_body)).build()));
                    return;
                }
                if (firmwareDownloadResponseFromJson.getContents() != null && firmwareDownloadResponseFromJson.getContents().size() > 0) {
                    Content content = firmwareDownloadResponseFromJson.getContents().get(0);
                    File fileStore = null;
                    byte[] bArrDecode = Base64.decode(content.getContent(), 0);
                    try {
                        fileStore = new InternalFileCache(HttpServiceFirmwareDownloadProcedure.this.mService.getContext()).store(BatteryAnalyzeModel.COLUMN_FIRMWARE, content.getName(), bArrDecode);
                    } catch (IOException e) {
                        CareLog.e(HttpServiceFirmwareDownloadProcedure.TAG, e, "Could not cache the file \"%s\"", content.getName());
                    }
                    HttpServiceFirmwareDownloadProcedure.this.setStatus(ServiceFirmwareDownloadProcedureStatus.Idle);
                    if (fileStore != null) {
                        CareLog.d(HttpServiceFirmwareDownloadProcedure.TAG, "Cached file[AbsolutePath=%s,Size=%d]", fileStore.getAbsolutePath(), Integer.valueOf(bArrDecode.length));
                        HttpServiceFirmwareDownloadProcedure.this.fireDownloadFirmwareCompleted(firmwareType, callback, fileStore);
                        return;
                    } else {
                        CareLog.d(HttpServiceFirmwareDownloadProcedure.TAG, "Couldn't cache file: %s", content.getName());
                        HttpServiceFirmwareDownloadProcedure httpServiceFirmwareDownloadProcedure2 = HttpServiceFirmwareDownloadProcedure.this;
                        httpServiceFirmwareDownloadProcedure2.fireDownloadFirmwareError(firmwareType, callback, httpServiceFirmwareDownloadProcedure2.getError(new CareError.Builder(2, 9).setMessage(HttpServiceFirmwareDownloadProcedure.this.mService.getContext().getResources().getString(R.string.error_service_file_store_error)).build()));
                        return;
                    }
                }
                CareLog.d(HttpServiceFirmwareDownloadProcedure.TAG, "No contents available...", new Object[0]);
                HttpServiceFirmwareDownloadProcedure httpServiceFirmwareDownloadProcedure3 = HttpServiceFirmwareDownloadProcedure.this;
                httpServiceFirmwareDownloadProcedure3.fireDownloadFirmwareError(firmwareType, callback, httpServiceFirmwareDownloadProcedure3.getError(new CareError.Builder(2, 9).setMessage(HttpServiceFirmwareDownloadProcedure.this.mService.getContext().getResources().getString(R.string.error_service_firmware_download_no_contents_available)).build()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CareError getError(CareError careError) {
        return new CareError.Builder(2, 30).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_firmware_download_fails)).setInnerError(careError).build();
    }

    /* JADX INFO: renamed from: com.texa.carelib.webservices.internal.HttpServiceFirmwareDownloadProcedure$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$webservices$FirmwareType;

        static {
            int[] iArr = new int[FirmwareType.values().length];
            $SwitchMap$com$texa$carelib$webservices$FirmwareType = iArr;
            try {
                iArr[FirmwareType.Main.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$webservices$FirmwareType[FirmwareType.Service.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private String getFileType(FirmwareType firmwareType) {
        int i = AnonymousClass2.$SwitchMap$com$texa$carelib$webservices$FirmwareType[firmwareType.ordinal()];
        if (i == 1) {
            return "MAIN_APP";
        }
        if (i != 2) {
            return null;
        }
        return "SERVICE_APP";
    }

    public static FirmwareDownloadResponse fromJson(String str) {
        return (FirmwareDownloadResponse) new GsonBuilder().disableHtmlEscaping().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, FirmwareDownloadResponse.class);
    }

    class FirmwareDownloadResponse {

        @SerializedName("contents")
        @Expose
        private List<Content> mContents;

        public List<Content> getContents() {
            return this.mContents;
        }

        public void setContents(List<Content> list) {
            this.mContents = list;
        }

        public FirmwareDownloadResponse() {
        }
    }

    class Content {

        @SerializedName(FirebaseAnalytics.Param.CONTENT)
        @Expose
        private String mContent;

        @SerializedName(AppMeasurementSdk.ConditionalUserProperty.NAME)
        @Expose
        private String mName;

        Content() {
        }

        public String getName() {
            return this.mName;
        }

        public void setName(String str) {
            this.mName = str;
        }

        public String getContent() {
            return this.mContent;
        }

        public void setContent(String str) {
            this.mContent = str;
        }
    }
}
