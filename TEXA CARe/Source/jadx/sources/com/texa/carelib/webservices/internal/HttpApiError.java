package com.texa.carelib.webservices.internal;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.Constants;
import java.util.Collections;
import java.util.Map;
import org.spongycastle.i18n.ErrorBundle;

/* JADX INFO: loaded from: classes2.dex */
public class HttpApiError {

    @SerializedName(ErrorBundle.DETAIL_ENTRY)
    @Expose
    private Map<String, String> mDetails;

    @SerializedName(Constants.GCM_EXTRA_MESSAGE)
    @Expose
    private String mMessage;

    public String getMessage() {
        return this.mMessage;
    }

    public void setMessage(String str) {
        this.mMessage = str;
    }

    public Map<String, String> getDetails() {
        Map<String, String> map = this.mDetails;
        return map == null ? Collections.emptyMap() : map;
    }

    public void setDetails(Map<String, String> map) {
        this.mDetails = map;
    }

    public static HttpApiError fromJson(String str) {
        return (HttpApiError) new GsonBuilder().disableHtmlEscaping().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, HttpApiError.class);
    }
}
