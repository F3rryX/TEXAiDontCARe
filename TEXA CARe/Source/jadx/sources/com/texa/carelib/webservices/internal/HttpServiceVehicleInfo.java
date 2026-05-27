package com.texa.carelib.webservices.internal;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceVehicleInfoStatus;
import com.texa.carelib.webservices.VehicleInfo;
import com.texa.carelib.webservices.VehicleInfoLoadedEvent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class HttpServiceVehicleInfo extends ServiceVehicleInfoBase {
    private static final String KEY_HWID_LIST = "hwid_list";
    private static final String PATH_API_VEHICLE_INFO = "/api/dongles/summary";
    public static final String TAG = "HttpServiceVehicleInfo";
    private final HttpTexaService mService;

    public HttpServiceVehicleInfo(HttpTexaService httpTexaService) {
        this.mService = httpTexaService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CareError getError(CareError careError) {
        return new CareError.Builder(2, 24).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_vehicle_get_info_fails)).setInnerError(careError).build();
    }

    @Override // com.texa.carelib.webservices.ServiceVehicleInfo
    public void loadVehicleInfo(String[] strArr, Locale[] localeArr, final Callback<VehicleInfoLoadedEvent> callback) throws CareLibException {
        if (ServiceVehicleInfoStatus.Pending == getStatus()) {
            throw new OperationAlreadyRunningException("Load of vehicle info is already running.");
        }
        if (strArr.length == 0) {
            throw new CareLibException("Could not getItems vehicles info. Hardware IDs list cannot be null or empty.");
        }
        setStatus(ServiceVehicleInfoStatus.Pending);
        clear();
        HashMap map = new HashMap();
        map.put(KEY_HWID_LIST, strArr);
        map.put("Accept-Language", this.mService.getAcceptLanguage(localeArr));
        this.mService.accessAPIAtPath(PATH_API_VEHICLE_INFO, HttpMethod.POST, false, map, new HttpAPIRequestListener() { // from class: com.texa.carelib.webservices.internal.HttpServiceVehicleInfo.1
            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onError(CareError careError) {
                CareLog.e(HttpServiceVehicleInfo.TAG, "error getting vehicle details from WebAPI.", new Object[0]);
                HttpServiceVehicleInfo.this.setStatus(ServiceVehicleInfoStatus.Error);
                callback.onCompleted(new VehicleInfoLoadedEvent(this, Collections.emptyMap(), HttpServiceVehicleInfo.this.getError(careError)));
            }

            @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
            public void onCompleted(String str) {
                APIVehicleInfoResponse aPIVehicleInfoResponseFromJson = APIVehicleInfoResponse.fromJson(str);
                if (aPIVehicleInfoResponseFromJson != null) {
                    HashMap map2 = new HashMap();
                    for (VehicleInfo vehicleInfo : aPIVehicleInfoResponseFromJson.getVehicles()) {
                        map2.put(vehicleInfo.getHardwareID(), vehicleInfo);
                    }
                    HttpServiceVehicleInfo.this.setVehicles(map2);
                }
                HttpServiceVehicleInfo.this.setStatus(ServiceVehicleInfoStatus.Loaded);
                callback.onCompleted(new VehicleInfoLoadedEvent(this, HttpServiceVehicleInfo.this.getVehicles(), null));
            }
        });
    }

    private static class APIVehicleInfoResponse {

        @SerializedName("list")
        @Expose
        private List<VehicleInfo> mVehicles;

        private APIVehicleInfoResponse() {
        }

        public List<VehicleInfo> getVehicles() {
            if (this.mVehicles == null) {
                this.mVehicles = new ArrayList();
            }
            return this.mVehicles;
        }

        public static APIVehicleInfoResponse fromJson(String str) {
            return (APIVehicleInfoResponse) new GsonBuilder().disableHtmlEscaping().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, APIVehicleInfoResponse.class);
        }
    }
}
