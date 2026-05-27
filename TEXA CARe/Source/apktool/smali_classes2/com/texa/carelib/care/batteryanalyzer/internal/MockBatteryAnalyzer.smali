.class public Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;
.super Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;
.source "MockBatteryAnalyzer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MockBatteryAnalyzer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    return-void
.end method

.method private makeLowPowerRecentHistogram(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
    .locals 3

    .line 72
    new-instance v0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setVersion(I)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setData([B)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    .line 76
    invoke-virtual {v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->build()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object p1

    return-object p1
.end method

.method private makeLowPowerTotalHistogram(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
    .locals 3

    .line 80
    new-instance v0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x1

    .line 83
    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setVersion(I)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setData([B)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    .line 84
    invoke-virtual {v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->build()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object p1

    return-object p1
.end method

.method private makeOperatingCrankReport(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
    .locals 3

    .line 64
    new-instance v0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setVersion(I)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setRawData([B)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    .line 68
    invoke-virtual {v0}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->build()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object p1

    return-object p1
.end method

.method private makeStandByCrankReport(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
    .locals 3

    .line 56
    new-instance v0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setVersion(I)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setRawData([B)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    .line 60
    invoke-virtual {v0}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->build()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic lambda$loadBatteryAnalyzerInfo$0$com-texa-carelib-care-batteryanalyzer-internal-MockBatteryAnalyzer()V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 40
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    sget-object v1, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Could not wait."

    invoke-static {v1, v0, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :goto_0
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->makeStandByCrankReport(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->setStandByCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V

    .line 46
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->makeOperatingCrankReport(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->setOperatingCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V

    .line 48
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->makeLowPowerRecentHistogram(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->setLowPowerRecentHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V

    .line 49
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->makeLowPowerTotalHistogram(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->setLowPowerTotalHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V

    return-void
.end method

.method public loadBatteryAnalyzerInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;)V

    const-string v2, "thread_loadBatteryAnalyzerInfo"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method
