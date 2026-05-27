.class public Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "MockFirmwareUpgradeProcedure.java"

# interfaces
.implements Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;


# static fields
.field private static final PROGRESS_INCREMENT:I = 0x1

.field private static final PROGRESS_TICK:I = 0x64

.field public static final TAG:Ljava/lang/String; = "MockFirmwareUpgradeProcedure"


# instance fields
.field private final mAccessory:Lcom/texa/carelib/care/accessory/internal/MockAccessory;

.field private mAppToUpgrade:Lcom/texa/carelib/core/AppType;

.field private final mCommunication:Lcom/texa/carelib/communication/Communication;

.field private mMainAppFilePath:Ljava/io/File;

.field private mMainFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

.field private mPendingMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private mPendingServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field private final mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

.field private mProgress:I

.field private mRequestAppType:Lcom/texa/carelib/core/AppType;

.field private mServiceAppFilePath:Ljava/io/File;

.field private mServiceFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/profile/internal/MockProfile;Lcom/texa/carelib/care/accessory/internal/MockAccessory;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 62
    iput-object p3, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mAccessory:Lcom/texa/carelib/care/accessory/internal/MockAccessory;

    .line 63
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

    .line 65
    sget-object p1, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mRequestAppType:Lcom/texa/carelib/core/AppType;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mProgress:I

    return p0
.end method

.method static synthetic access$002(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)Lcom/texa/carelib/core/AppType;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mAppToUpgrade:Lcom/texa/carelib/core/AppType;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private isFirmwareUpdateInProgress()Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->isUpdatingMainApp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->isUpdatingServiceApp()Z

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

.method private terminate(Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 219
    iget-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 220
    iget-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mTimer:Ljava/util/Timer;

    .line 235
    sget-object v0, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    iput-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mAppToUpgrade:Lcom/texa/carelib/core/AppType;

    .line 236
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mMainAppFilePath:Ljava/io/File;

    .line 237
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mMainFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    .line 238
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mServiceAppFilePath:Ljava/io/File;

    .line 239
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mServiceFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    return-void
.end method

.method private update(Lcom/texa/carelib/core/AppType;)V
    .locals 6

    .line 177
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mAppToUpgrade:Lcom/texa/carelib/core/AppType;

    .line 179
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Upgrading app: %s"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iput v2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mProgress:I

    .line 182
    iget-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 185
    iget-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mTimer:Ljava/util/Timer;

    .line 189
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mTimer:Ljava/util/Timer;

    .line 190
    new-instance v1, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;

    invoke-direct {v1, p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure$1;-><init>(Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method protected fireMainFirmwareUpgradeCompleted(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mMainFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    if-eqz v0, :cond_0

    .line 250
    new-instance v1, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;

    sget-object v2, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    iget-object v3, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mMainAppFilePath:Ljava/io/File;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;->onFirmwareUpgradeCompleted(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireMainFirmwareUpgradeProgressChanged(I)V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mMainFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    if-eqz v0, :cond_0

    .line 244
    new-instance v1, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;

    sget-object v2, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    int-to-float p1, p1

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;F)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;->onFirmwareUpgradeProgressChanged(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireServiceFirmwareUpgradeCompleted(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mServiceFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    if-eqz v0, :cond_0

    .line 261
    new-instance v1, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;

    sget-object v2, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    iget-object v3, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mServiceAppFilePath:Ljava/io/File;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;->onFirmwareUpgradeCompleted(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;)V

    :cond_0
    return-void
.end method

.method protected fireServiceFirmwareUpgradeProgressChanged(I)V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mServiceFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    if-eqz v0, :cond_0

    .line 256
    new-instance v1, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;

    sget-object v2, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    int-to-float p1, p1

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/AppType;F)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;->onFirmwareUpgradeProgressChanged(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mProfile:Lcom/texa/carelib/profile/internal/MockProfile;

    return-object v0
.end method

.method public isUpdatingMainApp()Z
    .locals 2

    .line 70
    sget-object v0, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mAppToUpgrade:Lcom/texa/carelib/core/AppType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdatingServiceApp()Z
    .locals 2

    .line 75
    sget-object v0, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    iget-object v1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mAppToUpgrade:Lcom/texa/carelib/core/AppType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 272
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mRequestAppType:Lcom/texa/carelib/core/AppType;

    sget-object v0, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mAccessory:Lcom/texa/carelib/care/accessory/internal/MockAccessory;

    invoke-virtual {p1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->getRunningApp()Lcom/texa/carelib/core/AppType;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mRequestAppType:Lcom/texa/carelib/core/AppType;

    if-eq p1, v0, :cond_0

    .line 274
    sget-object p1, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mRequestAppType:Lcom/texa/carelib/core/AppType;

    :cond_0
    return-void
.end method

.method public rebootToMainApp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->rebootToMainApp(I)V

    return-void
.end method

.method public rebootToMainApp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 111
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Not implemented!"

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rebootToServiceApp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->rebootToServiceApp(I)V

    return-void
.end method

.method public rebootToServiceApp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 141
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateMainApp(Ljava/io/File;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->isFirmwareUpdateInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mMainAppFilePath:Ljava/io/File;

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->fromFileName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mPendingMainAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 155
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mMainFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    .line 157
    sget-object p1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->update(Lcom/texa/carelib/core/AppType;)V

    return-void

    .line 150
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Operation is already in progress"

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateServiceApp(Ljava/io/File;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->isFirmwareUpdateInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mServiceAppFilePath:Ljava/io/File;

    .line 170
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->fromFileName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mPendingServiceAppVersion:Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 171
    iput-object p2, p0, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->mServiceFirmwareUpgradeProcedureListener:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;

    .line 173
    sget-object p1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/MockFirmwareUpgradeProcedure;->update(Lcom/texa/carelib/core/AppType;)V

    return-void

    .line 166
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Operation is already in progress"

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
