.class public Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;
.super Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;
.source "SerialBatteryAnalyzer.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialBatteryAnalyzer"


# instance fields
.field private final mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryAnalyzerBase;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 29
    instance-of p2, p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz p2, :cond_0

    .line 30
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    const/4 p2, 0x1

    const/16 v0, 0x73

    .line 31
    invoke-interface {p1, p2, v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleGetLowPowerRecentHistogram(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    if-nez p2, :cond_0

    .line 128
    :try_start_0
    new-instance p2, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;

    invoke-direct {p2}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;-><init>()V

    .line 129
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;->create([B)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->setLowPowerRecentHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    sget-object p2, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleGetLowPowerRecentHistogram error."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected handleGetLowPowerTotalHistogram(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    if-nez p2, :cond_0

    .line 143
    :try_start_0
    new-instance p2, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;

    invoke-direct {p2}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;->create([B)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->setLowPowerTotalHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    sget-object p2, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleGetLowPowerTotalHistogram error."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected handleGetOperatingCrankReport(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    if-nez p2, :cond_0

    .line 113
    :try_start_0
    new-instance p2, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;

    invoke-direct {p2}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;-><init>()V

    .line 114
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->create([B)Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->setOperatingCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    sget-object p2, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleGetOperatingCrankReport error."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected handleGetStandByCrankReport(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    if-nez p2, :cond_0

    .line 97
    :try_start_0
    new-instance p2, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;

    invoke-direct {p2}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;-><init>()V

    .line 98
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->create([B)Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->setStandByCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    sget-object p2, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "handleGetStandByCrankReport error."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public loadBatteryAnalyzerInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 56
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 57
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 58
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance v0, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;

    invoke-direct {v0}, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;-><init>()V

    throw v0

    .line 47
    :cond_2
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 73
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->handleGetLowPowerTotalHistogram(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->handleGetLowPowerRecentHistogram(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 79
    :pswitch_2
    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->handleGetOperatingCrankReport(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 75
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/care/batteryanalyzer/internal/SerialBatteryAnalyzer;->handleGetStandByCrankReport(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
