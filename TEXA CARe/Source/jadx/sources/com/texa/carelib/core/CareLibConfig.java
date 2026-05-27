package com.texa.carelib.core;

import com.texa.carelib.core.logging.CareLog;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class CareLibConfig {
    private static int _ServiceAuthenticationTimeout = 30000;
    private static int _ServiceConnectionTimeout = 20000;
    private static int _ServiceReadTimeout = 30000;

    public static int getServiceAuthenticationTimeout() {
        return _ServiceAuthenticationTimeout;
    }

    public static int getServiceConnectionTimeout() {
        return _ServiceConnectionTimeout;
    }

    public static int getServiceReadTimeout() {
        return _ServiceReadTimeout;
    }

    public static void setServiceConnectionTimeout(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("timeoutMillis < 0");
        }
        _ServiceConnectionTimeout = i;
    }

    public static void setServiceReadTimeout(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("timeoutMillis < 0");
        }
        _ServiceReadTimeout = i;
    }

    public static void addLogger(CareLog.LoggerTree loggerTree) {
        CareLog.plant(loggerTree);
    }

    public static void removeLogger(CareLog.LoggerTree loggerTree) {
        CareLog.uproot(loggerTree);
    }

    public static void removeAllLoggers() {
        CareLog.uprootAll();
    }

    protected static List<CareLog.LoggerTree> getLoggers() {
        return CareLog.getLoggers();
    }
}
