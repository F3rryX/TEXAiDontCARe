.class public interface abstract Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;
.super Ljava/lang/Object;
.source "BatteryAnalyzer.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;
.implements Lcom/texa/carelib/core/utils/CareStruct;


# static fields
.field public static final PROPERTY_LOW_POWER_RECENT_HISTOGRAM:Ljava/lang/String; = "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_RECENT_HISTOGRAM"

.field public static final PROPERTY_LOW_POWER_TOTAL_HISTOGRAM:Ljava/lang/String; = "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_TOTAL_HISTOGRAM"

.field public static final PROPERTY_OPERATING_CRANK_REPORT:Ljava/lang/String; = "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_OPERATING_CRANK_REPORT"

.field public static final PROPERTY_STANDBY_CRANK_REPORT:Ljava/lang/String; = "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_STANDBY_CRANK_REPORT"


# virtual methods
.method public abstract getLowPowerRecentHistogram()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
.end method

.method public abstract getLowPowerTotalHistogram()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
.end method

.method public abstract getOperatingCrankReport()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
.end method

.method public abstract getStandByCrankReport()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
.end method

.method public abstract loadBatteryAnalyzerInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
