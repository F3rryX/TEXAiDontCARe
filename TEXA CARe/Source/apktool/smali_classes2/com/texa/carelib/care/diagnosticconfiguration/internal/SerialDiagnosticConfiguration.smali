.class public Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;
.super Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;
.source "SerialDiagnosticConfiguration.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;
.implements Lcom/texa/carelib/profile/internal/SynchronizableModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusFinalize;,
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;,
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusResetConfiguration;,
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport;,
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;,
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1;,
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;,
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSetDiagnosisMode;,
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;,
        Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;
    }
.end annotation


# static fields
.field public static final DEFAULT_IS_SYNCHRONIZABLE:Z = true

.field private static final DEFAULT_RECEIVE_REPORT_TIMEOUT:I = 0x249f0

.field private static final DEFAULT_WAIT_ENGINE_ON_TIMEOUT:I = 0x15f90

.field private static final EXTRA_USE_QUEUE_EXECUTOR:Ljava/lang/String;

.field private static final MAX_CONFIGURATION_PROGRESS:F = 100.0f

.field private static final RECEIVE_CONFIGURATION_REPORT_WATCH_DOG_TIMEOUT_INTERVAL:I = 0xea60

.field public static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_CHANGE_DIAGNOSIS_MODE_CONFIGURATION:J = 0xea60L

.field private static final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private mCareConfigurationProcedureStatus:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;

.field private mConfigPairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConfigIndex:I

.field private final mInternalFileCache:Lcom/texa/carelib/core/utils/FileCache;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private final mProfilePropertyChangeListener:Ljava/beans/PropertyChangeListener;

.field private mProgress:F

.field private mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

.field private mUseConfigurationWatchDog:Ljava/lang/Boolean;

.field private mWaitEngineOnScheduledFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1431
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_USE_QUEUE_EXECUTOR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->EXTRA_USE_QUEUE_EXECUTOR:Ljava/lang/String;

    const-string v0, "SerialDiagnosticConfiguration"

    .line 1454
    sput-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/core/utils/FileCache;)V
    .locals 3

    .line 92
    invoke-direct {p0, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;-><init>(Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 556
    new-instance p3, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$1;

    invoke-direct {p3, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$1;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    iput-object p3, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mProfilePropertyChangeListener:Ljava/beans/PropertyChangeListener;

    .line 94
    instance-of v0, p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz v0, :cond_0

    .line 97
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    const/16 v1, 0x30

    const/4 v2, 0x1

    .line 99
    invoke-interface {v0, v2, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    .line 100
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    const/16 v1, 0x49

    invoke-interface {v0, v2, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    .line 102
    iput-object p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 103
    iput-object p4, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mInternalFileCache:Lcom/texa/carelib/core/utils/FileCache;

    .line 105
    invoke-interface {p1, p3}, Lcom/texa/carelib/profile/Profile;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 107
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->resetData()V

    return-void

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Profile must implement SerialProfileProxy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Lcom/texa/carelib/profile/Profile;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Ljava/lang/Boolean;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mUseConfigurationWatchDog:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 82
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mUseConfigurationWatchDog:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Lcom/texa/carelib/core/utils/FileCache;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mInternalFileCache:Lcom/texa/carelib/core/utils/FileCache;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mWaitEngineOnScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Lcom/texa/carelib/profile/internal/SerialProfileProxy;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Lcom/texa/carelib/care/accessory/Accessory;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Ljava/util/List;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)I
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getReceiveConfigurationReportTimeout()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)F
    .locals 0

    .line 82
    iget p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mProgress:F

    return p0
.end method

.method static synthetic access$602(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;F)F
    .locals 0

    .line 82
    iput p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mProgress:F

    return p1
.end method

.method static synthetic access$700(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    return p0
.end method

.method static synthetic access$900(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Z
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isUseConfigurationWatchDog()Z

    move-result p0

    return p0
.end method

.method static getConfigurationProgress(ILjava/util/List;ILjava/util/Date;)F
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;",
            ">;I",
            "Ljava/util/Date;",
            ")F"
        }
    .end annotation

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p1, :cond_7

    .line 162
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 167
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v3, p0, :cond_1

    const v2, 0x3c23d70a    # 0.01f

    .line 180
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    .line 181
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getDateStartCheck()Ljava/util/Date;

    move-result-object v3

    const v4, 0x3e7a0f91    # 0.2442f

    if-nez v3, :cond_2

    .line 183
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getCheckProgress()F

    move-result p1

    div-float/2addr p1, v0

    mul-float p1, p1, v4

    int-to-float v3, v1

    :goto_1
    div-float/2addr p1, v3

    :goto_2
    add-float/2addr v2, p1

    goto :goto_0

    :cond_2
    int-to-float v3, v1

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 188
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getReport()Ljava/io/File;

    move-result-object v4

    const v5, 0x3efdd980    # 0.49580002f

    if-nez v4, :cond_3

    .line 190
    invoke-static {p1, p3, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getReceivedReportElapsedTime(Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;Ljava/util/Date;I)J

    move-result-wide v6

    long-to-float p1, v6

    int-to-float v4, p2

    div-float/2addr p1, v4

    div-float/2addr v5, v3

    mul-float p1, p1, v5

    goto :goto_2

    :cond_3
    div-float/2addr v5, v3

    add-float/2addr v2, v5

    .line 197
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->isStored()Z

    move-result v4

    const/high16 v5, 0x3e800000    # 0.25f

    if-eqz v4, :cond_5

    :cond_4
    div-float/2addr v5, v3

    add-float/2addr v2, v5

    goto :goto_0

    .line 201
    :cond_5
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getReportStatus()I

    move-result v4

    invoke-static {v4}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigurationReportParser;->isGoodReport(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getStoreProgress()F

    move-result p1

    div-float/2addr p1, v0

    mul-float p1, p1, v5

    goto :goto_1

    :cond_6
    mul-float v2, v2, v0

    .line 213
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_7
    :goto_3
    return v0
.end method

.method private getReceiveConfigurationReportTimeout()I
    .locals 3

    .line 487
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_RECEIVE_REPORT_TIMEOUT"

    const v2, 0x249f0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static getReceivedReportElapsedTime(Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;Ljava/util/Date;I)J
    .locals 4

    int-to-long v0, p2

    .line 221
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getDateStartCheck()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getDateStartCheck()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private isUseConfigurationWatchDog()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mUseConfigurationWatchDog:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isValidConfigurationIndex(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;",
            ">;)Z"
        }
    .end annotation

    if-ltz p0, :cond_0

    .line 252
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Utils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method cancelWaitEngine()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mWaitEngineOnScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 521
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 522
    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mWaitEngineOnScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method protected clearConfigPairList()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearConfiguration(Lcom/texa/carelib/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1;

    new-instance v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Lcom/texa/carelib/core/Callback;)V

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Lcom/texa/carelib/core/Callback;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setCareConfigurationProcedureStatus(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    return-void

    .line 533
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string v0, "Could not delete configuration while configuration procedure is running."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 529
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method protected getConfigPairList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    return-object v0
.end method

.method getConfigurationCheckProgress(I)F
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getCheckProgress()F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1
.end method

.method getConfigurationStartCheckDate(I)Ljava/util/Date;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getDateStartCheck()Ljava/util/Date;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getConfigurationStoreProgress(I)F
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getStoreProgress()F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1
.end method

.method getCurrentConfiguration()Ljava/io/File;
    .locals 2

    .line 243
    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    iget v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getConfig()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method protected initConfigPairList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->clearConfigPairList()V

    .line 446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 447
    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    new-instance v2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-direct {v2, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;-><init>(Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method isConfigurationStored(I)Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->isStored()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSynchronizable()Z
    .locals 3

    .line 581
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->EXTRA_USE_QUEUE_EXECUTOR:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$clearConfiguration$1$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 543
    :try_start_0
    invoke-interface {p1, p2}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 546
    new-instance p2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;

    invoke-direct {p2, p0, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    invoke-virtual {p0, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setCareConfigurationProcedureStatus(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    throw p1

    :cond_0
    :goto_0
    new-instance p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;

    invoke-direct {p1, p0, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setCareConfigurationProcedureStatus(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    return-void
.end method

.method public synthetic lambda$loadConfigurations$0$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration()V
    .locals 1

    .line 423
    new-instance v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSetDiagnosisMode;

    invoke-direct {v0, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSetDiagnosisMode;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setCareConfigurationProcedureStatus(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    return-void
.end method

.method public loadConfigurations(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 418
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->Running:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setStatus(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;)V

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setProgress(F)V

    .line 421
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->initConfigPairList(Ljava/util/List;)V

    .line 423
    new-instance p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    .line 424
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isSynchronizable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#loadConfigurations()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 426
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->build()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->execute(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)V

    goto :goto_0

    .line 428
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    .line 415
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string v0, "Could not load diagnostic configuration. Operation is already running."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 411
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method moveToFirstConfiguration()Ljava/io/File;
    .locals 1

    const/4 v0, -0x1

    .line 236
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setCurrentConfigIndex(I)V

    .line 237
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->moveToNextConfiguration()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method moveToNextConfiguration()Ljava/io/File;
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 357
    :cond_0
    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    iget-object v2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 358
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    iget v2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    .line 364
    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getReport()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 370
    :cond_1
    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getReport()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 373
    :try_start_0
    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getReport()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigurationReportParser;->isGoodReport(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 377
    sget-object v2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Could not check report status."

    invoke-static {v2, v0, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_2
    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    goto :goto_0

    .line 382
    :cond_3
    :goto_1
    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    iget-object v2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    iget v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getConfig()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 5

    .line 492
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    .line 494
    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "Communication status has changed: %s"

    invoke-static {v1, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCareConfigurationProcedureStatus:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    .line 497
    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$2;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {v0}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->cancelWaitEngine()V

    .line 508
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 509
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/texa/carelib/diagnosticconfigurationdatabase/R$string;->error_connection_lost:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->resetData()V

    .line 515
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCareConfigurationProcedureStatus:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;

    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method protected resetData()V
    .locals 3

    .line 148
    invoke-super {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->resetData()V

    .line 150
    new-instance v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;

    invoke-direct {v0, p0, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setCareConfigurationProcedureStatus(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mProgress:F

    .line 157
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->EXTRA_USE_QUEUE_EXECUTOR:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mUseConfigurationWatchDog:Ljava/lang/Boolean;

    return-void
.end method

.method setCareConfigurationProcedureStatus(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;
    .locals 2

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->updateConfigurationProgress()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCareConfigurationProcedureStatus:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onExit()V

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCareConfigurationProcedureStatus:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;

    .line 141
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onEnter()V

    return-object p0

    .line 128
    :catch_0
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v0, 0x1

    const/16 v1, 0x17

    invoke-direct {p1, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    .line 129
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/texa/carelib/diagnosticconfigurationdatabase/R$string;->error_care_configuration_aborted_by_user:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-object p0
.end method

.method setConfigurationCheckProgress(IF)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->setCheckProgress(F)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    .line 288
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCareConfigurationProcedureStatus:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->updateConfigurationProgress()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setConfigurationStartCheckDate(ILjava/util/Date;)Z
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->setDateStartCheck(Ljava/util/Date;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    .line 339
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCareConfigurationProcedureStatus:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->updateConfigurationProgress()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 341
    sget-object p2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Update has be interrupted."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method setConfigurationStoreProgress(IF)Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->setStoreProgress(F)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    .line 313
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCareConfigurationProcedureStatus:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->updateConfigurationProgress()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setConfigurationStored(I)Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->setStored(Z)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected setCurrentConfigIndex(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mCurrentConfigIndex:I

    return-void
.end method

.method protected setProgress(F)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mProgress:F

    return-void
.end method

.method protected setReportInfo(ILjava/io/File;I)Z
    .locals 6

    .line 391
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isValidConfigurationIndex(ILjava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    invoke-virtual {v5}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getConfig()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Saving report %1$d/%2$d: System=%3$s Status=%4$d"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    .line 395
    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->setReport(Ljava/io/File;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    .line 396
    invoke-virtual {p1, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->setReportStatus(I)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    .line 397
    invoke-virtual {p1, v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->setStored(Z)Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    return v4

    :cond_0
    return v1
.end method

.method public setSynchronizable(Z)V
    .locals 2

    .line 586
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->EXTRA_USE_QUEUE_EXECUTOR:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method terminate(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/Utils;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->mConfigPairList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;

    .line 465
    invoke-virtual {v2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getReport()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/carelib/core/utils/internal/Utils;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    invoke-virtual {v2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/ConfigPair;->getReport()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->clearConfigPairList()V

    .line 472
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method protected terminate(Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 478
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/DiagnosticConfigurationBase;->terminate(Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isSynchronizable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 480
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->isSynchronizable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 481
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    :cond_1
    throw p1
.end method
