package com.texa.carelib.webservices.internal;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.utils.DateTypeAdapter;
import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.care.vehicletroubles.DTCDetail;
import com.texa.carelib.care.vehicletroubles.DTCStatus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.DTCCache;
import com.texa.carelib.core.utils.GenericAdapter;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.webservices.DTCTranslationCompletedEvent;
import com.texa.carelib.webservices.R;
import com.texa.carelib.webservices.ServiceDTCResolutionProcedure;
import com.texa.carelib.webservices.utils.internal.GsonDTCLocaleSerializer;
import com.texa.carelib.webservices.utils.internal.GsonDTCStatusSerializer;
import com.texa.carelib.webservices.utils.internal.GsonIso8601DateSerializer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
class HttpServiceDTCResolutionProcedure implements ServiceDTCResolutionProcedure {
    public static final String KEY_DTC_LIST = "dtc_list";
    public static final String KEY_DTC_STATUS = "status";
    public static final String KEY_DTC_TIMESTAMP = "timestamp";
    public static final String KEY_DTC_TOKEN = "dtc_token";
    public static final String TAG = "HttpServiceDTCResolutionProcedure";
    public static final String URL_PATH = "/api/errorcodes";
    private List<DTC> mCachedDTCs;
    private final ReentrantLockWrapper mCachedDTCsLock = new ReentrantLockWrapper(TAG, "mCachedDTCsLock");
    private final DTCCache mDTCCache = new DTCCache();
    private String mLastUsedSessionID;
    private final HttpTexaService mService;

    public HttpServiceDTCResolutionProcedure(HttpTexaService httpTexaService) {
        this.mService = httpTexaService;
        this.mLastUsedSessionID = httpTexaService.getSessionID();
    }

    @Override // com.texa.carelib.webservices.ServiceDTCResolutionProcedure
    public synchronized void resolveDTCIDs(Map<String, DTCDetail> map, final Locale[] localeArr, String str, Date date, final Callback<DTCTranslationCompletedEvent> callback) throws CareLibException {
        if (map.size() == 0) {
            CareLog.w(TAG, "Nothing to do for this ECU. No DTCs seems to be present.", new Object[0]);
            callback.onCompleted(new DTCTranslationCompletedEvent(this, Collections.emptyList(), null));
            return;
        }
        if (!this.mService.isSessionOpened() || this.mService.getSessionID() == null || !this.mService.getSessionID().equals(this.mLastUsedSessionID)) {
            this.mDTCCache.clear();
            this.mLastUsedSessionID = this.mService.getSessionID();
        }
        this.mCachedDTCsLock.lock("resolveDTCIDs");
        try {
            this.mCachedDTCs = this.mDTCCache.getCachedDTCs(map, localeArr, date);
            this.mCachedDTCsLock.unlock("resolveDTCIDs");
            final Map<String, DTCDetail> notCachedDTC = this.mDTCCache.getNotCachedDTC(map);
            if (Utils.isEmpty(notCachedDTC)) {
                CareLog.d(TAG, "Nothing to do. All DTCs are available from the cache.", new Object[0]);
                this.mCachedDTCsLock.lock("resolveDTCIDs2");
                try {
                    callback.onCompleted(new DTCTranslationCompletedEvent(this, new ArrayList(this.mCachedDTCs), null));
                    return;
                } finally {
                    this.mCachedDTCsLock.unlock("resolveDTCIDs2");
                }
            }
            this.mService.accessAPIAtPath(URL_PATH, HttpMethod.POST, true, getFields(str, localeArr, notCachedDTC, date), new HttpAPIRequestListener() { // from class: com.texa.carelib.webservices.internal.HttpServiceDTCResolutionProcedure.1
                @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
                public void onError(CareError careError) {
                    CareLog.e(HttpServiceDTCResolutionProcedure.TAG, "DTC resolution fails due to: %s", careError);
                    callback.onCompleted(new DTCTranslationCompletedEvent(this, Collections.emptyList(), HttpServiceDTCResolutionProcedure.this.getError(careError)));
                }

                @Override // com.texa.carelib.webservices.internal.HttpAPIRequestListener
                public void onCompleted(String str2) {
                    CareLog.i(HttpServiceDTCResolutionProcedure.TAG, "DTC resolution completed", new Object[0]);
                    DTCTranslationProcedureResponse dTCTranslationProcedureResponseCreateFromJSON = HttpServiceDTCResolutionProcedure.this.createFromJSON(str2);
                    if (dTCTranslationProcedureResponseCreateFromJSON == null) {
                        callback.onCompleted(new DTCTranslationCompletedEvent(this, Collections.emptyList(), new CareError.Builder(2, 12).setMessage(HttpServiceDTCResolutionProcedure.this.mService.getContext().getResources().getString(R.string.error_service_invalid_response_body)).build()));
                        return;
                    }
                    List<DTC> dtc = dTCTranslationProcedureResponseCreateFromJSON.getDTC();
                    ArrayList arrayList = new ArrayList();
                    if (dtc != null && !dtc.isEmpty()) {
                        for (DTC dtc2 : dtc) {
                            if (dtc2.getToken() != null && notCachedDTC.containsKey(dtc2.getToken())) {
                                DTCDetail dTCDetail = (DTCDetail) notCachedDTC.get(dtc2.getToken());
                                arrayList.add(dtc2.edit().setSourceNode(dTCDetail.getSourceNode()).setOccurrences(dTCDetail.getOccurrences()).build());
                            } else {
                                arrayList.add(dtc2);
                            }
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        HttpServiceDTCResolutionProcedure.this.mDTCCache.update(arrayList, localeArr, new GenericAdapter() { // from class: com.texa.carelib.webservices.internal.HttpServiceDTCResolutionProcedure$1$$ExternalSyntheticLambda0
                            @Override // com.texa.carelib.core.utils.GenericAdapter
                            public final Object adaptee(Object obj) {
                                return ((DTC) obj).getToken();
                            }
                        });
                    }
                    HttpServiceDTCResolutionProcedure.this.mCachedDTCsLock.lock("HttpAPIRequestListener#onCompleted");
                    try {
                        ArrayList arrayList2 = new ArrayList(HttpServiceDTCResolutionProcedure.this.mCachedDTCs);
                        HttpServiceDTCResolutionProcedure.this.mCachedDTCsLock.unlock("HttpAPIRequestListener#onCompleted");
                        if (!arrayList.isEmpty()) {
                            arrayList2.addAll(arrayList);
                        }
                        callback.onCompleted(new DTCTranslationCompletedEvent(this, arrayList2, null));
                    } catch (Throwable th) {
                        HttpServiceDTCResolutionProcedure.this.mCachedDTCsLock.unlock("HttpAPIRequestListener#onCompleted");
                        throw th;
                    }
                }
            });
        } catch (Throwable th) {
            this.mCachedDTCsLock.unlock("resolveDTCIDs");
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CareError getError(CareError careError) {
        return new CareError.Builder(2, 7).setMessage(this.mService.getContext().getResources().getString(R.string.error_service_dtc_resolution_fails)).setInnerError(careError).build();
    }

    private Map<String, Object> getFields(String str, Locale[] localeArr, Map<String, DTCDetail> map, Date date) {
        HashMap map2 = new HashMap();
        map2.put(HttpTexaService.KEY_HWID, str);
        map2.put("Accept-Language", this.mService.getAcceptLanguage(localeArr));
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, DTCDetail> entry : map.entrySet()) {
            HashMap map3 = new HashMap();
            map3.put(KEY_DTC_TOKEN, entry.getKey());
            map3.put("status", entry.getValue().getStatus());
            map3.put("timestamp", getISO8601Date(date));
            arrayList.add(map3);
        }
        map2.put("dtc_list", arrayList);
        return map2;
    }

    private String getISO8601Date(Date date) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTypeAdapter.TIMESTAMP_PATTERN, Locale.US);
        simpleDateFormat.setTimeZone(timeZone);
        return simpleDateFormat.format(date);
    }

    public DTCTranslationProcedureResponse createFromJSON(String str) {
        if (str == null) {
            return null;
        }
        try {
            GsonBuilder gsonBuilder = new GsonBuilder();
            gsonBuilder.disableHtmlEscaping().enableComplexMapKeySerialization().excludeFieldsWithoutExposeAnnotation().setPrettyPrinting();
            gsonBuilder.registerTypeAdapter(Date.class, new GsonIso8601DateSerializer());
            gsonBuilder.registerTypeAdapter(Locale.class, new GsonDTCLocaleSerializer());
            gsonBuilder.registerTypeAdapter(DTCStatus.class, new GsonDTCStatusSerializer());
            return (DTCTranslationProcedureResponse) gsonBuilder.create().fromJson(str, DTCTranslationProcedureResponse.class);
        } catch (Exception e) {
            CareLog.e(TAG, e, "Invalid JSON", new Object[0]);
            return null;
        }
    }

    class DTCTranslationProcedureResponse {

        @SerializedName("translations")
        @Expose
        private final ArrayList<DTC> mDTCs = null;

        public List<DTC> getDTC() {
            return this.mDTCs;
        }

        private DTCTranslationProcedureResponse() {
        }
    }
}
