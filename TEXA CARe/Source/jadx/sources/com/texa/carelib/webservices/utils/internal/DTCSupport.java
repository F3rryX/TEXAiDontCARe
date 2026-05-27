package com.texa.carelib.webservices.utils.internal;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.texa.carelib.care.vehicletroubles.DTC;
import com.texa.carelib.care.vehicletroubles.DTCStatus;
import com.texa.carelib.core.utils.internal.StringUtils;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class DTCSupport {
    private static final String TAG = "DTCSupport";

    public static DTC fromJSON(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        return (DTC) createGson().fromJson(str, DTC.class);
    }

    public static String toJson(DTC dtc) {
        if (dtc == null) {
            return null;
        }
        return createGson().toJson(dtc);
    }

    private static Gson createGson() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.disableHtmlEscaping().enableComplexMapKeySerialization().excludeFieldsWithoutExposeAnnotation();
        gsonBuilder.registerTypeAdapter(Date.class, new GsonIso8601DateSerializer());
        gsonBuilder.registerTypeAdapter(Locale.class, new GsonDTCLocaleSerializer());
        gsonBuilder.registerTypeAdapter(DTCStatus.class, new GsonDTCStatusSerializer());
        return gsonBuilder.create();
    }
}
