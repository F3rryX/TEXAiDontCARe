package com.texa.carelib.webservices.internal;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.carelib.core.logging.CareLog;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DownloadConfigurationFileResponse {
    public static final String TAG = "DownloadConfigurationFileResponse";

    @SerializedName("contents")
    @Expose
    private final List<Content> mFiles = new ArrayList();

    public List<Content> getFiles() {
        return this.mFiles;
    }

    public static DownloadConfigurationFileResponse fromJson(String str) {
        try {
            return (DownloadConfigurationFileResponse) new GsonBuilder().disableHtmlEscaping().excludeFieldsWithoutExposeAnnotation().create().fromJson(str, DownloadConfigurationFileResponse.class);
        } catch (Exception e) {
            CareLog.e(TAG, e, "Could not parse json data.", new Object[0]);
            return null;
        }
    }
}
