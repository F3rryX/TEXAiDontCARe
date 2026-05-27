package com.texa.carelib.webservices;

import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.core.utils.internal.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class HostInfo {
    private static final String DEFAULT_SCHEME = "https";
    private String mHostName;
    private String mScheme;

    public HostInfo() {
        this.mHostName = "";
        this.mScheme = "https";
    }

    public HostInfo(String str) {
        this();
        this.mHostName = str;
    }

    public HostInfo(String str, String str2) {
        this();
        this.mHostName = str2;
        this.mScheme = str;
    }

    public String getHostName() {
        return this.mHostName;
    }

    public HostInfo setHostName(String str) {
        this.mHostName = str;
        return this;
    }

    public String getScheme() {
        return StringUtils.isNullOrEmpty(this.mScheme) ? "https" : this.mScheme;
    }

    public HostInfo setScheme(String str) {
        this.mScheme = str;
        return this;
    }

    public static boolean isValid(HostInfo hostInfo) {
        return (hostInfo == null || StringUtils.isNullOrEmpty(hostInfo.getScheme()) || StringUtils.isNullOrEmpty(hostInfo.getHostName())) ? false : true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HostInfo hostInfo = (HostInfo) obj;
        return Utils.equals(this.mHostName, hostInfo.mHostName) && Utils.equals(this.mScheme, hostInfo.mScheme);
    }

    public int hashCode() {
        return Utils.hashCode(this.mHostName, this.mScheme);
    }

    public String toString() {
        return getScheme() + "://" + getHostName();
    }
}
