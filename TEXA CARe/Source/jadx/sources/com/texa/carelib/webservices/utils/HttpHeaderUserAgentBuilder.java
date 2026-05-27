package com.texa.carelib.webservices.utils;

import com.texa.carelib.core.utils.Version;
import com.texa.carelib.core.utils.internal.StringUtils;

/* JADX INFO: loaded from: classes2.dex */
public class HttpHeaderUserAgentBuilder {
    private String mAppName;
    private String mAppVersion;
    private String mCAReLibName;
    private String mCAReLibVersion;
    private String mOSVersion;
    private long mVersionCode;

    public HttpHeaderUserAgentBuilder setAppInfo(String str, String str2, long j) {
        this.mAppName = str.replace(" ", "");
        this.mAppVersion = str2.replace(" ", "");
        this.mVersionCode = j;
        return this;
    }

    public HttpHeaderUserAgentBuilder setCAReLibInfo(String str, String str2) {
        this.mCAReLibName = str.replace(" ", "");
        this.mCAReLibVersion = str2.replace(" ", "");
        return this;
    }

    public HttpHeaderUserAgentBuilder setOSVersion(String str) {
        this.mOSVersion = str.replace(" ", "");
        return this;
    }

    public String build() {
        StringBuilder sb = new StringBuilder();
        if (!StringUtils.isNullOrEmpty(this.mAppName) && !StringUtils.isNullOrEmpty(this.mAppVersion)) {
            sb.append(this.mAppName);
            sb.append("/");
            sb.append(this.mAppVersion);
            sb.append(Version.SEPARATOR);
            sb.append(this.mVersionCode);
            sb.append(" ");
        }
        if (!StringUtils.isNullOrEmpty(this.mCAReLibName) && !StringUtils.isNullOrEmpty(this.mCAReLibVersion)) {
            sb.append(this.mCAReLibName);
            sb.append("/");
            sb.append(this.mCAReLibVersion);
            sb.append(" ");
        }
        if (!StringUtils.isNullOrEmpty(this.mOSVersion)) {
            sb.append("Android");
            sb.append("/");
            sb.append(this.mOSVersion);
        }
        return sb.toString().trim();
    }
}
