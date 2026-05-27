.class public Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;
.super Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;
.source "SerialImpactDetection.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialImpactDetection"


# instance fields
.field private mEraseCrashDataCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mImpactDataDownloadListener:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;

.field private mSerialNumber:Ljava/lang/String;

.field private final mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

.field private mSimulateImpactCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/impacts/events/SimulateImpactCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 1

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 76
    instance-of p2, p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz p2, :cond_0

    .line 77
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    const/16 p2, 0x37

    const/4 v0, 0x1

    .line 78
    invoke-interface {p1, v0, p2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    const/16 p2, 0x64

    .line 79
    invoke-interface {p1, v0, p2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    const/16 p2, 0xf0

    .line 80
    invoke-interface {p1, v0, p2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    .line 85
    :goto_0
    sget-object p1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->Idle:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mStatus:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    return-void
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->terminateLoadImpacts(Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->onImpactDataDownloadProgressChanged(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;)Lcom/texa/carelib/profile/internal/SerialProfileProxy;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    return-object p0
.end method

.method private declared-synchronized onImpactDataDownloadProgressChanged(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;)V
    .locals 2

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onMessageReceivedGetCrashConfigurationParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 9

    if-nez p2, :cond_7

    .line 228
    invoke-static {p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetCrashConfigurationParametersParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/impacts/internal/parser/GetCrashConfigurationParametersParser$GetCrashConfigurationParametersResponse;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetCrashConfigurationParametersParser$GetCrashConfigurationParametersResponse;->getData()Landroid/util/SparseArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 234
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v1, v3, :cond_1

    .line 235
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 237
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 239
    sget-object v6, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    if-eqz v3, :cond_0

    array-length v3, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    const-string v3, "Configuration %d length: %d"

    invoke-static {v6, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 242
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 244
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 246
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 247
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 v6, 0x447a0000    # 1000.0f

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    const/4 v6, 0x5

    if-eq v2, v6, :cond_2

    goto :goto_3

    .line 268
    :cond_2
    invoke-static {v3}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 269
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setVerboseReportSamplesCount(Ljava/lang/Long;)V

    goto :goto_3

    .line 263
    :cond_3
    invoke-static {v3}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 264
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setTimeOverThreshold(Ljava/lang/Float;)V

    goto :goto_3

    .line 258
    :cond_4
    invoke-static {v3}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    long-to-float v3, v6

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v3, v6

    .line 259
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setSpeedTimeout(Ljava/lang/Float;)V

    goto :goto_3

    .line 251
    :cond_5
    invoke-static {v3}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 254
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setAccelerationThreshold(Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 274
    sget-object v6, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v8, "An error is occurred with data manager parameter ID: %d"

    invoke-static {v6, v3, v8, v7}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    :cond_6
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->updateSupportedFrequencies(Lcom/texa/carelib/care/impacts/internal/parser/GetCrashConfigurationParametersParser$GetCrashConfigurationParametersResponse;)V

    :cond_7
    return-void
.end method

.method private onMessageReceivedGetSOSStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 4

    if-nez p2, :cond_1

    .line 208
    sget-object p2, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Received command: %s"

    invoke-static {p2, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-static {p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;

    move-result-object p1

    .line 211
    sget-object v1, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Undefined:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->getSOSStatus()Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->setEnabled(Z)V

    .line 213
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Present:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->getSOSStatus()Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Received impact notification!!!!"

    .line 214
    invoke-static {p2, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    new-instance p2, Lcom/texa/carelib/care/impacts/Impact;

    invoke-direct {p2}, Lcom/texa/carelib/care/impacts/Impact;-><init>()V

    .line 217
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/carelib/care/impacts/Impact;->setDate(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/Impact;

    .line 218
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$GetSOSStatusResponse;->getCrashReport()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/care/impacts/Impact;->setCrashReport(Lcom/texa/carelib/care/impacts/CrashReport;)Lcom/texa/carelib/care/impacts/Impact;

    .line 220
    invoke-virtual {p0, p2}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->setLastImpact(Lcom/texa/carelib/care/impacts/Impact;)V

    .line 221
    new-instance p1, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;

    invoke-direct {p1, p0, p2}, Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/care/impacts/Impact;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->fireCrashDetected(Lcom/texa/carelib/care/impacts/events/ImpactDetectedEvent;)V

    :cond_1
    return-void
.end method

.method private onMessageReceivedGetSerialNumber(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-nez p2, :cond_0

    .line 125
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetSerialNumberPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private onMessageReceivedSetCrashConfigurationParameter(Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-nez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->loadCrashConfigurationValues()Z

    :cond_0
    return-void
.end method

.method private onMessageReceivedStartRecording(Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->terminateSimulateImpact(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private setStatus(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mStatus:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    return-void
.end method

.method private declared-synchronized terminateLoadImpacts(Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/Impact;",
            ">;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/CrashReport;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda4;-><init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/core/CareError;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized terminateSimulateImpact(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSimulateImpactCallback:Lcom/texa/carelib/core/Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 197
    :try_start_1
    new-instance v1, Lcom/texa/carelib/care/impacts/events/SimulateImpactCompletedEvent;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/impacts/events/SimulateImpactCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    :try_start_2
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const-string v1, "External exception catch."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSimulateImpactCallback:Lcom/texa/carelib/core/Callback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateSupportedFrequencies(Lcom/texa/carelib/care/impacts/internal/parser/GetCrashConfigurationParametersParser$GetCrashConfigurationParametersResponse;)V
    .locals 2

    .line 283
    invoke-virtual {p1}, Lcom/texa/carelib/care/impacts/internal/parser/GetCrashConfigurationParametersParser$GetCrashConfigurationParametersResponse;->getData()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 284
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 285
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$1;-><init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;)V

    .line 287
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 288
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->setSupportedFrequencies(Ljava/util/Set;)V

    return-void

    nop

    :array_0
    .array-data 1
        0xat
        0x0t
        0x32t
        0x0t
        0x64t
        0x0t
    .end array-data
.end method


# virtual methods
.method public eraseImpacts(Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#eraseImpacts()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/core/Callback;)V

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const p1, 0x493e0

    .line 329
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setTimeout(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    const/16 p1, 0x32

    .line 330
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setPriority(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    .line 331
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->build()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->execute(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)V

    return-void

    .line 312
    :cond_0
    new-instance p1, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;

    invoke-direct {p1}, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;-><init>()V

    throw p1

    .line 308
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method getStartRecordingPayload(II)[B
    .locals 2

    const/4 v0, 0x4

    .line 449
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 450
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 452
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedByte(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 453
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedShort(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    const/4 p1, 0x0

    .line 454
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 455
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 457
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method isCommandSupported(I)Z
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->getCommandVerifier()Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isReadingImpactData()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mImpactDataDownloadListener:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$eraseImpacts$3$com-texa-carelib-care-impacts-internal-SerialImpactDetection(Lcom/texa/carelib/core/Callback;)V
    .locals 3

    .line 317
    :try_start_0
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->Idle:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mStatus:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    if-ne v0, v1, :cond_0

    .line 321
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->EraseCrash:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->setStatus(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;)V

    .line 322
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mEraseCrashDataCallback:Lcom/texa/carelib/core/Callback;

    .line 323
    iget-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 318
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {p1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 325
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to erase impacts at this moment."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    :goto_0
    return-void
.end method

.method public synthetic lambda$loadImpacts$4$com-texa-carelib-care-impacts-internal-SerialImpactDetection(Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;)V
    .locals 3

    .line 348
    :try_start_0
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->Idle:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mStatus:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    if-ne v0, v1, :cond_0

    .line 352
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->DownloadCrash:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->setStatus(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;)V

    .line 353
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mImpactDataDownloadListener:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;

    .line 354
    iget-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 349
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {p1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw p1
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 356
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to load impacts at this moment."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    :goto_0
    return-void
.end method

.method public synthetic lambda$onImpactDataDownloadProgressChanged$1$com-texa-carelib-care-impacts-internal-SerialImpactDetection(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mImpactDataDownloadListener:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1}, Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;->onImpactDataDownloadProgressChanged(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$terminateEraseCrashData$0$com-texa-carelib-care-impacts-internal-SerialImpactDetection(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    const/4 v0, 0x0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mEraseCrashDataCallback:Lcom/texa/carelib/core/Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 149
    :try_start_1
    new-instance v2, Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;

    invoke-direct {v2, p0, p1}, Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v1, v2}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    :try_start_2
    sget-object v1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const-string v2, "External exception catch."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mEraseCrashDataCallback:Lcom/texa/carelib/core/Callback;

    .line 156
    sget-object p1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->Idle:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->setStatus(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;)V

    .line 157
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    return-void

    :catchall_0
    move-exception p1

    .line 155
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mEraseCrashDataCallback:Lcom/texa/carelib/core/Callback;

    .line 156
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->Idle:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->setStatus(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;)V

    .line 157
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    throw p1
.end method

.method public synthetic lambda$terminateLoadImpacts$2$com-texa-carelib-care-impacts-internal-SerialImpactDetection(Lcom/texa/carelib/core/CareError;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mImpactDataDownloadListener:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 181
    new-instance p1, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v1, p1}, Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;->onImpactDataDownloadCompleted(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;)V

    goto :goto_0

    .line 183
    :cond_0
    new-instance v2, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v4, 0x1

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/texa/carelib/profile/R$string;->error_care_impact_reports_download_error:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v1, v2}, Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;->onImpactDataDownloadCompleted(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mImpactDataDownloadListener:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;

    .line 188
    sget-object p1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->Idle:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->setStatus(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;)V

    .line 189
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    return-void

    :catchall_0
    move-exception p1

    .line 187
    iput-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mImpactDataDownloadListener:Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;

    .line 188
    sget-object p2, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->Idle:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    invoke-direct {p0, p2}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->setStatus(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;)V

    .line 189
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    throw p1
.end method

.method public loadCrashConfigurationValues()Z
    .locals 3

    .line 370
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "loadCrashConfigurationValues"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    const/4 v0, 0x1

    return v0
.end method

.method public loadImpacts(Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "loadImpacts"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    new-instance v1, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#loadImpacts()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;)V

    invoke-direct {v1, v0, v2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/16 p1, 0x64

    .line 361
    invoke-virtual {v1, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setPriority(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    const p1, 0x493e0

    .line 362
    invoke-virtual {v1, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setTimeout(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    .line 365
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->build()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->execute(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)V

    return-void

    .line 341
    :cond_0
    new-instance p1, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;

    invoke-direct {p1}, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;-><init>()V

    throw p1

    .line 337
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public loadInfo()V
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->loadInfo()V

    .line 92
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 6

    .line 469
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    .line 471
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$2;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v1, 0x13

    invoke-direct {p1, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_connection_lost:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->terminateSimulateImpact(Lcom/texa/carelib/core/CareError;)V

    .line 477
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getImpacts()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getAccelerationEvents()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v3, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/texa/carelib/profile/R$string;->error_connection_lost:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->terminateLoadImpacts(Ljava/util/List;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    .line 478
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/texa/carelib/profile/R$string;->error_connection_lost:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->terminateEraseCrashData(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mStatus:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    invoke-virtual {p1, p0, p2, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->onMessageReceived(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    .line 99
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0xee

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->onMessageReceivedGetSOSStatus(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->onMessageReceivedGetSerialNumber(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-direct {p0, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->onMessageReceivedStartRecording(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->onMessageReceivedGetCrashConfigurationParameters(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 109
    :cond_4
    invoke-direct {p0, p3}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->onMessageReceivedSetCrashConfigurationParameter(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method protected parseSpeedTimeout([C)F
    .locals 5

    const/4 v0, 0x0

    .line 298
    aget-char v0, p1, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    const/4 v1, 0x1

    .line 299
    aget-char v1, p1, v1

    int-to-long v1, v1

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    const-wide/32 v3, 0xff00

    and-long/2addr v1, v3

    long-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    .line 300
    aget-char v1, p1, v1

    int-to-long v1, v1

    const/16 v3, 0x10

    shl-long/2addr v1, v3

    const-wide/32 v3, 0xff0000

    and-long/2addr v1, v3

    long-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x3

    .line 301
    aget-char p1, p1, v1

    int-to-long v1, p1

    const/16 p1, 0x18

    shl-long/2addr v1, p1

    const-wide/32 v3, -0x1000000

    and-long/2addr v1, v3

    long-to-float p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method protected resetData(Z)V
    .locals 0

    .line 462
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->resetData(Z)V

    .line 464
    sget-object p1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->Idle:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mStatus:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    return-void
.end method

.method public setAccelerationThreshold(Ljava/lang/Float;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 378
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 379
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 380
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 382
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 384
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedShort(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 386
    iget-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 388
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setAccelerationThreshold(Ljava/lang/Float;)V

    :goto_0
    return-void
.end method

.method public setSpeedTimeout(Ljava/lang/Float;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 394
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 395
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 396
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 398
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v1, 0x49742400    # 1000000.0f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v1, p1

    .line 400
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z

    .line 402
    iget-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 404
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setSpeedTimeout(Ljava/lang/Float;)V

    :goto_0
    return-void
.end method

.method public setTimeOverThreshold(Ljava/lang/Float;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 410
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x2

    .line 411
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 412
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v1, p1

    .line 416
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z

    .line 418
    iget-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 420
    invoke-super {p0, p1}, Lcom/texa/carelib/care/impacts/internal/ImpactDetectionBase;->setTimeOverThreshold(Ljava/lang/Float;)V

    :goto_0
    return-void
.end method

.method public simulateImpact(ILcom/texa/carelib/core/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/impacts/events/SimulateImpactCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSimulateImpactCallback:Lcom/texa/carelib/core/Callback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 434
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Simulating impact with samples frequency: %d"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iput-object p2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSimulateImpactCallback:Lcom/texa/carelib/core/Callback;

    .line 437
    iget-object p2, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {p0, v1, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->getStartRecordingPayload(II)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 430
    :cond_0
    sget-object p1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Impact simulation already started."

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {p1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw p1

    .line 426
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method declared-synchronized terminateEraseCrashData(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    monitor-enter p0

    .line 135
    :try_start_0
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;->EraseCrash:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    iget-object v1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->mStatus:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$Status;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 137
    sget-object v1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const-string v2, "Impact erased successfully."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->clearImpacts()V

    .line 139
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->clearAccelerationEvents()V

    .line 140
    invoke-virtual {p0}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->clearAccelerationEventsLPM()V

    goto :goto_0

    .line 142
    :cond_0
    sget-object v1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->TAG:Ljava/lang/String;

    const-string v2, "Could not erase impacts."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :goto_0
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$$ExternalSyntheticLambda3;-><init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
