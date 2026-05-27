package com.texa.carelib.webservices.internal;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceVehicleConfigurationInfoStatus;
import com.texa.carelib.webservices.VehicleConfigurationInfoLoadedEvent;
import com.texa.carelib.webservices.VehicleConfigurationStatus;
import java.math.BigInteger;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
class HttpServiceVehicleConfigurationInfo extends ServiceVehicleConfigurationInfoBase {
    private static final String KEY_DIAGNOSTIC_ENGINE_VERSION = "interpreter_version";
    private static final String KEY_VIN = "vin";
    private static final String PATH_API_CONFIGURATIONS = "/api/updates/configurations";
    public static final String TAG = "HttpServiceVehicleConfigurationInfo";
    private static final String VALUE_FIRST_CONFIGURATION = "FIRST_CONFIGURATION";
    private static final String VALUE_NEEDS_UPDATE = "NEEDS_UPDATE";
    private static final String VALUE_UPDATED = "UPDATED";
    private final HttpTexaService mService;

    public HttpServiceVehicleConfigurationInfo(HttpTexaService httpTexaService) {
        this.mService = httpTexaService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CareError getError(CareError careError) {
        return new CareError.Builder(2, 20).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_diagnostic_configuration_get_info_fails)).setInnerError(careError).build();
    }

    @Override // com.texa.carelib.webservices.ServiceVehicleConfigurationInfo
    public void loadVehicleConfigurationInfo(String str, String str2, BigInteger bigInteger, final Callback<VehicleConfigurationInfoLoadedEvent> callback) throws CareLibException {
        ensureCanLoadVehicleConfigurationInfo(str, bigInteger);
        setStatus(ServiceVehicleConfigurationInfoStatus.Pending);
        clear();
        HashMap map = new HashMap();
        map.put(HttpTexaService.KEY_HWID, str);
        map.put("vin", str2);
        map.put(KEY_DIAGNOSTIC_ENGINE_VERSION, bigInteger);
        this.mService.accessAPIAtPath(PATH_API_CONFIGURATIONS, HttpMethod.POST, false, map, new HttpAPIRequestListener() { // from class: com.texa.carelib.webservices.internal.HttpServiceVehicleConfigurationInfo.1
            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onError(CareError careError) {
                CareLog.e(HttpServiceVehicleConfigurationInfo.TAG, "error getting configuration remote version", new Object[0]);
                HttpServiceVehicleConfigurationInfo.this.setStatus(ServiceVehicleConfigurationInfoStatus.Error);
                callback.onCompleted(new VehicleConfigurationInfoLoadedEvent(this, VehicleConfigurationStatus.Undefined, HttpServiceVehicleConfigurationInfo.this.getError(careError)));
            }

            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onCompleted(String str3) {
                APIConfigurationInfoResponse aPIConfigurationInfoResponseFromJson = APIConfigurationInfoResponse.fromJson(str3);
                if (aPIConfigurationInfoResponseFromJson != null) {
                    HttpServiceVehicleConfigurationInfo.this.setVehicleConfigurationStatus(aPIConfigurationInfoResponseFromJson.getConfigurationInfoStatus());
                }
                HttpServiceVehicleConfigurationInfo.this.setStatus(ServiceVehicleConfigurationInfoStatus.Loaded);
                callback.onCompleted(new VehicleConfigurationInfoLoadedEvent(this, HttpServiceVehicleConfigurationInfo.this.getVehicleConfigurationStatus(), null));
            }
        });
    }

    private static class APIConfigurationInfoResponse {

        @SerializedName("config_state")
        @Expose
        private final String mConfigState = null;
        private VehicleConfigurationStatus mVehicleConfigurationStatus = VehicleConfigurationStatus.Undefined;

        public String getConfigState() {
            return this.mConfigState;
        }

        public VehicleConfigurationStatus getConfigurationInfoStatus() {
            return this.mVehicleConfigurationStatus;
        }

        public static APIConfigurationInfoResponse fromJson(String str) {
            APIConfigurationInfoResponse aPIConfigurationInfoResponse = (APIConfigurationInfoResponse) new GsonBuilder().disableHtmlEscaping().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, APIConfigurationInfoResponse.class);
            if (aPIConfigurationInfoResponse != null) {
                aPIConfigurationInfoResponse.mVehicleConfigurationStatus = VehicleConfigurationStatus.Undefined;
                if (HttpServiceVehicleConfigurationInfo.VALUE_NEEDS_UPDATE.equalsIgnoreCase(aPIConfigurationInfoResponse.getConfigState())) {
                    aPIConfigurationInfoResponse.mVehicleConfigurationStatus = VehicleConfigurationStatus.NeedsUpdated;
                } else if (HttpServiceVehicleConfigurationInfo.VALUE_FIRST_CONFIGURATION.equalsIgnoreCase(aPIConfigurationInfoResponse.getConfigState())) {
                    aPIConfigurationInfoResponse.mVehicleConfigurationStatus = VehicleConfigurationStatus.FirstConfiguration;
                } else if (HttpServiceVehicleConfigurationInfo.VALUE_UPDATED.equalsIgnoreCase(aPIConfigurationInfoResponse.getConfigState())) {
                    aPIConfigurationInfoResponse.mVehicleConfigurationStatus = VehicleConfigurationStatus.Updated;
                }
            }
            return aPIConfigurationInfoResponse;
        }
    }
}
