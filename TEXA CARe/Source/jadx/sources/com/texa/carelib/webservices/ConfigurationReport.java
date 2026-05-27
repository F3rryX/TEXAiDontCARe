package com.texa.carelib.webservices;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigurationReport {

    @SerializedName("result")
    @Expose
    private String mContent;

    @SerializedName("status")
    @Expose
    private String mStatus;

    public String getContent() {
        return this.mContent;
    }

    public ConfigurationReport setContent(String str) {
        this.mContent = str;
        return this;
    }

    public String getStatus() {
        return this.mStatus;
    }

    public ConfigurationReport setStatus(String str) {
        this.mStatus = str;
        return this;
    }

    public ConfigurationReport() {
        this.mStatus = null;
        this.mContent = null;
    }

    public ConfigurationReport(String str, String str2) {
        this();
        this.mStatus = str;
        this.mContent = str2;
    }
}
