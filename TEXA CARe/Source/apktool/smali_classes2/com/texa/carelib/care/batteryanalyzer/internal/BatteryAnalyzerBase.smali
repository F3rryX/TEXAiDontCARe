.class public abstract Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "BatteryAnalyzerBase.java"

# interfaces
.implements Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;


# instance fields
.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mLowPowerRecentHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

.field private mLowPowerTotalHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

.field private mOperatingCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private mStandByCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 33
    iput-object p2, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-void
.end method


# virtual methods
.method protected getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method public getLowPowerRecentHistogram()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mLowPowerRecentHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    return-object v0
.end method

.method public getLowPowerTotalHistogram()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mLowPowerTotalHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    return-object v0
.end method

.method public getOperatingCrankReport()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mOperatingCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public getRawData()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/texa/carelib/core/utils/CareStruct;

    .line 113
    iget-object v1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mStandByCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mOperatingCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mLowPowerRecentHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mLowPowerTotalHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/utils/internal/CareStructJoiner;->join([Lcom/texa/carelib/core/utils/CareStruct;)[B

    move-result-object v0

    return-object v0
.end method

.method public getStandByCrankReport()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mStandByCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    return-object v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 102
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->setStandByCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->setOperatingCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->setLowPowerRecentHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->setLowPowerTotalHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V

    :cond_0
    return-void
.end method

.method protected setLowPowerRecentHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mLowPowerRecentHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    .line 77
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mLowPowerRecentHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    .line 78
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_RECENT_HISTOGRAM"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected setLowPowerTotalHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mLowPowerTotalHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    .line 90
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mLowPowerTotalHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    .line 91
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_TOTAL_HISTOGRAM"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected setOperatingCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mOperatingCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    .line 64
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mOperatingCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    .line 65
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_OPERATING_CRANK_REPORT"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method protected setStandByCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mStandByCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    .line 51
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->mStandByCrankReport:Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    .line 52
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_STANDBY_CRANK_REPORT"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method
