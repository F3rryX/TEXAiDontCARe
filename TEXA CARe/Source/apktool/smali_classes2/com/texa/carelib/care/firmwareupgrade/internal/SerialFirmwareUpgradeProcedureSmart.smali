.class public Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "SerialFirmwareUpgradeProcedureSmart.java"

# interfaces
.implements Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeFinalizeStatus;,
        Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;,
        Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;
    }
.end annotation


# static fields
.field private static final MAIN_APP:C = '\u0001'

.field private static final PROTOCOL_MODE_BINARY:I = 0x0

.field private static final PROTOCOL_MODE_EXLAP:I = 0x1

.field private static final SERVICE_APP:C = '\u0002'

.field public static final TAG:Ljava/lang/String; = "SerialFirmwareUpgradeProcedureSmart"


# instance fields
.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mFirmwareUpgradeStatus:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;

.field private final mFirmwareUpgradeStatusLock:Ljava/lang/Object;

.field private mIsUpdatingMainApp:Z

.field private mIsUpdatingServiceApp:Z

.field private mMainAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private mRunningApp:Lcom/texa/carelib/core/AppType;

.field private final mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

.field private mServiceAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 527
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mFirmwareUpgradeStatusLock:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 62
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    .line 64
    instance-of p2, p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz p2, :cond_0

    .line 65
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Profile must implement SerialProfileProxy."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)Landroid/content/Context;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->terminateUpdate(Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method static synthetic access$600(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)Lcom/texa/carelib/profile/internal/SerialProfileProxy;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    return-object p0
.end method

.method static synthetic access$700(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->updateFWInfo()V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mProfile:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mProfile:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Profile delegate not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method private isFirmwareUpdateInProgress()Z
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->isUpdatingMainApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->isUpdatingServiceApp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mIsUpdatingMainApp:Z

    .line 346
    iput-boolean v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mIsUpdatingServiceApp:Z

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mMainAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    .line 348
    iput-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mServiceAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    return-void
.end method

.method private sendMessage(Lcom/texa/carelib/communication/Message;)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz v0, :cond_0

    .line 500
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_0
    return-void
.end method

.method private setFWMode(II)V
    .locals 2

    const/4 v0, 0x2

    .line 358
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 359
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 360
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedByte(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 361
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedByte(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 362
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 p2, 0x42

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method private terminateUpdate(Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->setStatus(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;)V

    .line 374
    :try_start_0
    sget-object v1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 375
    iput-boolean v2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mIsUpdatingMainApp:Z

    .line 376
    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->fireMainFirmwareUpgradeCompleted(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    .line 377
    iput-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mMainAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    goto :goto_0

    .line 378
    :cond_0
    sget-object v1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    if-ne v1, p1, :cond_1

    .line 379
    iput-boolean v2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mIsUpdatingServiceApp:Z

    .line 380
    invoke-virtual {p0, p2, p3}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->fireServiceFirmwareUpgradeCompleted(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    .line 381
    iput-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mServiceAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    :goto_0
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    throw p1
.end method

.method private updateFWInfo()V
    .locals 2

    .line 191
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method


# virtual methods
.method protected fireMainFirmwareUpgradeCompleted(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 255
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Main APP: Firmware upgrade completed"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mMainAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    if-eqz v0, :cond_0

    .line 257
    new-instance v1, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;

    sget-object v2, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;->onFirmwareUpgradeCompleted(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireMainFirmwareUpgradeProgressChanged(F)V
    .locals 4

    .line 247
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Main APP: Firmware upgrade progress changed: %.02f"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mMainAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    if-eqz v0, :cond_0

    .line 250
    new-instance v1, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;

    sget-object v2, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;F)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;->onFirmwareUpgradeProgressChanged(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireServiceFirmwareUpgradeCompleted(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 271
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Service APP: Firmware upgrade completed"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mServiceAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    if-eqz v0, :cond_0

    .line 273
    new-instance v1, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;

    sget-object v2, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;->onFirmwareUpgradeCompleted(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireServiceFirmwareUpgradeProgressChanged(F)V
    .locals 4

    .line 263
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Service APP: Firmware upgrade progress changed: %.02f"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mServiceAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    if-eqz v0, :cond_0

    .line 265
    new-instance v1, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;

    sget-object v2, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;F)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;->onFirmwareUpgradeProgressChanged(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public isUpdatingMainApp()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mIsUpdatingMainApp:Z

    return v0
.end method

.method public isUpdatingServiceApp()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mIsUpdatingServiceApp:Z

    return v0
.end method

.method public synthetic lambda$updateMainApp$0$com-texa-carelib-care-firmwareupgrade-internal-SerialFirmwareUpgradeProcedureSmart(Ljava/io/File;)V
    .locals 8

    .line 215
    new-instance v7, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    sget-object v3, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    sget-object v6, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->Undefined:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    const/4 v5, 0x3

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/core/AppType;Ljava/io/File;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;)V

    invoke-virtual {p0, v7}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->setStatus(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;)V

    return-void
.end method

.method public synthetic lambda$updateServiceApp$1$com-texa-carelib-care-firmwareupgrade-internal-SerialFirmwareUpgradeProcedureSmart(Ljava/io/File;)V
    .locals 8

    .line 241
    new-instance v7, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;

    sget-object v3, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    sget-object v6, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->Undefined:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    const/4 v5, 0x5

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FileTransferStatus;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Lcom/texa/carelib/core/AppType;Ljava/io/File;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;)V

    invoke-virtual {p0, v7}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->setStatus(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;)V

    return-void
.end method

.method public loadInfo()V
    .locals 0

    return-void
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 317
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 319
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->reset()V

    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 279
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->isBootloaderRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    iput-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mRunningApp:Lcom/texa/carelib/core/AppType;

    goto :goto_0

    .line 287
    :cond_1
    sget-object v0, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    iput-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mRunningApp:Lcom/texa/carelib/core/AppType;

    .line 293
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mFirmwareUpgradeStatus:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;

    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_3
    return-void
.end method

.method public rebootToMainApp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->rebootToMainApp(I)V

    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public rebootToMainApp(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Rebooting VCI in APPLICATION mode..."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->isFirmwareUpdateInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    int-to-char p1, p1

    .line 131
    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->setFWMode(II)V

    return-void

    .line 123
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Could not reboot while firmware is upgrading"

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public rebootToServiceApp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->rebootToServiceApp(I)V

    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public rebootToServiceApp(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Rebooting VCI in SERVICE mode..."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->isFirmwareUpdateInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->setFWMode(II)V

    return-void

    .line 158
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Could not reboot while firmware is upgrading."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public rebootVCI(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Rebooting VCI[appType=%d,reserved=%d]"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->isFirmwareUpdateInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-char p1, p1

    int-to-char p2, p2

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->setFWMode(II)V

    return v3

    .line 180
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not reboot while firmware is upgrading."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStatus(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mFirmwareUpgradeStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mFirmwareUpgradeStatus:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;->onExit()V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mFirmwareUpgradeStatusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_1
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mFirmwareUpgradeStatus:Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;

    .line 82
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$FirmwareUpgradeStatus;->onEnter()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 82
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 76
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public updateMainApp(Ljava/io/File;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->isUpdatingMainApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mIsUpdatingMainApp:Z

    .line 212
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mMainAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    .line 214
    new-instance p2, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#updateMainApp()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Ljava/io/File;)V

    invoke-direct {p2, v1, v2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {p2, v0}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setPriority(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    .line 217
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->build()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->execute(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)V

    return-void

    .line 208
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Resource file doesn\'t exists."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "MAIN app firmare upgrade is already running."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public updateServiceApp(Ljava/io/File;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->isUpdatingServiceApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mIsUpdatingServiceApp:Z

    .line 238
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->mServiceAppFirmwareUpgradeListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    .line 240
    new-instance p2, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#updateServiceApp()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;Ljava/io/File;)V

    invoke-direct {p2, v1, v2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 242
    invoke-virtual {p2, v0}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setPriority(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    .line 243
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->build()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->execute(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)V

    return-void

    .line 234
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Resource file doesn\'t exists."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "SERVICE app firmare upgrade is already running."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method
