.class public Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;
.super Ljava/lang/Object;
.source "GetFirmwareStatusPacketParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetFirmwareStatusResponse"
.end annotation


# instance fields
.field private mIsBootloaderRunning:Z

.field private mIsFirmwareUpdateInProgress:Z

.field private mIsUpgradable:Z

.field private mIsValidApplication:Z

.field private mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mPendingMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mPendingServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 430
    sget-object v1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 432
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 433
    sget-object v1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 435
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 436
    sget-object v1, Lcom/texa/carelib/core/AppType;->MICRO:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 438
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mPendingMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 439
    sget-object v1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 441
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mPendingServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 442
    sget-object v1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsBootloaderRunning:Z

    .line 445
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsFirmwareUpdateInProgress:Z

    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsUpgradable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$1;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getMicroLoaderVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getPendingMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mPendingMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getPendingServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mPendingServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v0
.end method

.method public isBootloaderRunning()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsBootloaderRunning:Z

    return v0
.end method

.method public isFirmwareUpdateInProgress()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsFirmwareUpdateInProgress:Z

    return v0
.end method

.method public isUpdatingProcessAvailable()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsUpgradable:Z

    return v0
.end method

.method public isValidApplication()Z
    .locals 1

    .line 388
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsValidApplication:Z

    return v0
.end method

.method public setBootloaderRunning(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsBootloaderRunning:Z

    return-void
.end method

.method public setFirmwareUpdateInProgress(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsFirmwareUpdateInProgress:Z

    return-void
.end method

.method public setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-void
.end method

.method public setMicroLoaderVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mMicroLoaderVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-void
.end method

.method public setPendingMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mPendingMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-void
.end method

.method public setPendingServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mPendingServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-void
.end method

.method public setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-void
.end method

.method public setUpgradable(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsUpgradable:Z

    return-void
.end method

.method public setValidApplication(Z)V
    .locals 0

    .line 395
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/parser/GetFirmwareStatusPacketParser$GetFirmwareStatusResponse;->mIsValidApplication:Z

    return-void
.end method
