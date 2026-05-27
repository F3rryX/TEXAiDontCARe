.class public Lcom/texa/careapp/utils/BatteryServiceAnalyzer;
.super Ljava/lang/Object;
.source "BatteryServiceAnalyzer.java"


# instance fields
.field private batteryAnalyzerProperty:Ljava/beans/PropertyChangeListener;

.field mBatteryAnalyzer:Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTexaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;-><init>(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->batteryAnalyzerProperty:Ljava/beans/PropertyChangeListener;

    .line 51
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->isValidBatteryVoltageHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->createBatteryModel(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->isValidCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->createBatteryModel(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;

    move-result-object p0

    return-object p0
.end method

.method private createBatteryModel(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;
    .locals 2

    .line 80
    new-instance v0, Lcom/texa/careapp/model/BatteryAnalyzeModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/BatteryAnalyzeModel;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->getUTCDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setTimestamp(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setReportType(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->getRawData()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setRawData(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setHwid(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/VersionFormatter;->formatLong(Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setFirmware(Ljava/lang/String;)V

    return-object v0
.end method

.method private createBatteryModel(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;
    .locals 2

    .line 90
    new-instance v0, Lcom/texa/careapp/model/BatteryAnalyzeModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/BatteryAnalyzeModel;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->getUTCDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setTimestamp(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setReportType(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->getRawData()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setRawData(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setHwid(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 96
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/texa/carelib/core/utils/VersionFormatter;->formatLong(Lcom/texa/carelib/core/utils/FirmwareVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setFirmware(Ljava/lang/String;)V

    return-object v0
.end method

.method private isValidBatteryVoltageHistogram(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->getBeams()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidCrankReport(Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;->getSamples()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getUTCDate()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    .line 75
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 76
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mBatteryAnalyzer:Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->batteryAnalyzerProperty:Ljava/beans/PropertyChangeListener;

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mBatteryAnalyzer:Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->batteryAnalyzerProperty:Ljava/beans/PropertyChangeListener;

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    :goto_0
    return-void
.end method

.method public onTripStatusChanged(Lcom/texa/carelib/care/trips/TripStatus;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    if-ne p1, v0, :cond_0

    .line 65
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mBatteryAnalyzer:Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    invoke-interface {p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;->loadBatteryAnalyzerInfo()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public scheduleSyncBatteryData()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleBatteryAnalyzerJob()V

    return-void
.end method
