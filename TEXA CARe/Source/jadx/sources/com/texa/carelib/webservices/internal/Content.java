package com.texa.carelib.webservices.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class Content {
    public static final String TAG = "Content";

    @SerializedName(FirebaseAnalytics.Param.CONTENT)
    @Expose
    private final String mContent;

    @SerializedName(AppMeasurementSdk.ConditionalUserProperty.NAME)
    @Expose
    private final String mName;

    public String getName() {
        return this.mName;
    }

    public String getContent() {
        return this.mContent;
    }

    public Content() {
        this("", "");
    }

    public Content(String str, String str2) {
        this.mName = str;
        this.mContent = str2;
    }

    public static Content fromJson(String str) {
        return (Content) new GsonBuilder().disableHtmlEscaping().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, Content.class);
    }
}
