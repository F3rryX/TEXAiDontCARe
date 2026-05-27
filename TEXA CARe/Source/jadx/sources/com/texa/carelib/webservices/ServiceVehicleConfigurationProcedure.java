package com.texa.carelib.webservices;

import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import java.math.BigInteger;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ServiceVehicleConfigurationProcedure {
    void downloadConfiguration(String str, String str2, BigInteger bigInteger, Callback<ServiceVehicleConfigurationDownloadedEvent> callback) throws CareLibException;

    void storeConfigurationReports(String str, List<ConfigurationReport> list, Callback<ConfigurationReportStoredEvent> callback) throws CareLibException;
}
