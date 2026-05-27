package com.texa.carelib.care.batteryanalyzer;

import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.ObservableObject;
import com.texa.carelib.core.utils.CareStruct;

/* JADX INFO: loaded from: classes2.dex */
public interface BatteryAnalyzer extends ObservableObject, CareStruct {
    public static final String PROPERTY_LOW_POWER_RECENT_HISTOGRAM = "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_RECENT_HISTOGRAM";
    public static final String PROPERTY_LOW_POWER_TOTAL_HISTOGRAM = "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_TOTAL_HISTOGRAM";
    public static final String PROPERTY_OPERATING_CRANK_REPORT = "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_OPERATING_CRANK_REPORT";
    public static final String PROPERTY_STANDBY_CRANK_REPORT = "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_STANDBY_CRANK_REPORT";

    BatteryVoltageHistogram getLowPowerRecentHistogram();

    BatteryVoltageHistogram getLowPowerTotalHistogram();

    CrankReport getOperatingCrankReport();

    CrankReport getStandByCrankReport();

    void loadBatteryAnalyzerInfo() throws CareLibException;
}
