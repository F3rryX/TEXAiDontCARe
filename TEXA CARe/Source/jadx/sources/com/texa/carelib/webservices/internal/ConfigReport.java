package com.texa.carelib.webservices.internal;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigReport {

    @SerializedName(Content.TAG)
    @Expose
    private String mContent;

    public ConfigReport() {
        this("");
    }

    public ConfigReport(String str) {
        this.mContent = str;
    }

    public String getContent() {
        return this.mContent;
    }

    public void setContent(String str) {
        this.mContent = str;
    }
}
