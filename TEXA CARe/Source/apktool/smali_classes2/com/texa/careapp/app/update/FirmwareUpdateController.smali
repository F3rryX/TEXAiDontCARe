.class public Lcom/texa/careapp/app/update/FirmwareUpdateController;
.super Ljava/lang/Object;
.source "FirmwareUpdateController.java"

# interfaces
.implements Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;,
        Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;
    }
.end annotation


# static fields
.field public static final DO_UPDATE_DISPOSABLE_KEY:Ljava/lang/String; = "DO_UPDATE_DISPOSABLE_KEY"

.field private static final MAIN_TXT:Ljava/lang/String; = " (MAIN)"

.field private static final SERVICE_TXT:Ljava/lang/String; = " (SERVICE)"

.field private static final STATUS_NOT_CONNECTED:I = -0x1

.field private static final STATUS_NO_UPDATE_AVAILABLE:I = 0x0

.field private static final STATUS_UPDATING_MAIN:I = 0x1

.field private static final STATUS_UPDATING_SERVICE:I = 0x2


# instance fields
.field protected accessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field protected mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

.field protected mContext:Landroid/content/Context;

.field private mDisposableHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFirmwareUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsWorking:Z

.field private mNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/texa/carelib/core/AppType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotificationManager:Landroid/app/NotificationManager;

.field protected mPrefs:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaService:Lcom/texa/carelib/webservices/TexaService;

.field protected profile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XMsMluYZ9vufwt4dMx_Qm8mV8ZM(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->checkForUpdatesOnServer(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDisposableHashMap:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mNotificationIds:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDisposableHashMap:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mNotificationIds:Ljava/util/HashMap;

    .line 92
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 94
    iput-object p3, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    .line 95
    iput-object p4, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 96
    iput-object p5, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 98
    sget-object p1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mNotificationIds:Ljava/util/HashMap;

    sget-object p2, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    const/4 p3, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 102
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/update/FirmwareUpdateController;)V

    .line 104
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mContext:Landroid/content/Context;

    const-string p3, "care_channel"

    invoke-direct {p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p2, 0x7f1100a8

    .line 105
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x7f08011d

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 106
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p2, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private beginUpgrade(Lcom/texa/carelib/webservices/FirmwareType;Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 2

    .line 292
    iget-boolean v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mIsWorking:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Operation already in progress"

    .line 293
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->lockDataModel()V

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mIsWorking:Z

    .line 300
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0}, Lcom/texa/carelib/webservices/TexaService;->getFirmwareDownloadProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedure;

    move-result-object v0

    .line 303
    :try_start_0
    new-instance v1, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/webservices/FirmwareType;)V

    invoke-interface {v0, p1, p3, p2, v1}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedure;->downloadFirmware(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/utils/FirmwareVersion;Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 312
    invoke-virtual {p2}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 313
    sget-object p2, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, p2, :cond_1

    const-string p1, " (MAIN)"

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, p2, :cond_2

    const-string p1, " (SERVICE)"

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    const-string p2, "downloadFirmware canDoIt=false"

    invoke-direct {p0, p2, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private checkForUpdatesOnServer(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0}, Lcom/texa/carelib/webservices/TexaService;->getFirmwareInfoProcedure()Lcom/texa/carelib/webservices/ServiceFirmwareInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->serialNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->getCurrentMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    .line 165
    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->getCurrentServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v3

    new-instance v4, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    .line 164
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/texa/carelib/webservices/ServiceFirmwareInfo;->loadFirmwareInfo(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

.method private deleteDownloadedResources(Ljava/io/File;)V
    .locals 2

    .line 340
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Could not delete firmware at path: %s"

    invoke-static {p1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private exit()V
    .locals 1

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mIsWorking:Z

    .line 422
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->unlockDataModel()V

    const/4 v0, 0x0

    .line 424
    iput-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    :cond_0
    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStringUpdateError()Ljava/lang/String;
    .locals 1

    const v0, 0x7f110a77

    .line 416
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCareReadyForFirmwareUpdate()Z
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 217
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->readableAccessoryStatus(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "FIRMWARE UPDATE Accessory status= %s"

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    if-eq v2, v0, :cond_1

    const/4 v2, 0x3

    if-eq v2, v0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isEquals(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Z
    .locals 3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getBoardName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    return v1

    .line 272
    :cond_2
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_1
    return v1

    .line 274
    :cond_4
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getCustomerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_2
    return v1

    .line 276
    :cond_6
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getProductName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    :goto_3
    return v1

    .line 278
    :cond_8
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getAppType()Lcom/texa/carelib/core/AppType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getAppType()Lcom/texa/carelib/core/AppType;

    move-result-object v2

    if-eq v0, v2, :cond_9

    return v1

    .line 279
    :cond_9
    invoke-virtual {p1}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p1

    invoke-virtual {p2}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/utils/Version;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$doUpdate$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error Performing firmware update"

    .line 158
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private onDownloadSuccess(Lcom/texa/carelib/core/AppType;Ljava/io/File;)V
    .locals 4

    const-string v0, " (MAIN)"

    const-string v1, " (SERVICE)"

    const-string v2, "canUpdate=false"

    if-eqz p2, :cond_2

    .line 321
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->updateNotification(Lcom/texa/carelib/core/AppType;)V

    .line 323
    :try_start_0
    sget-object v3, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    if-ne v3, p1, :cond_0

    .line 324
    iget-object v3, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mFirmwareUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;

    invoke-interface {v3, p2, p0}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;->updateMainApp(Ljava/io/File;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;)V

    goto :goto_2

    .line 325
    :cond_0
    sget-object v3, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    if-ne v3, p1, :cond_4

    .line 326
    iget-object v3, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mFirmwareUpgradeProcedure:Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;

    invoke-interface {v3, p2, p0}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;->updateServiceApp(Ljava/io/File;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 329
    invoke-virtual {v3}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 330
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->deleteDownloadedResources(Ljava/io/File;)V

    .line 331
    sget-object p2, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 334
    :cond_2
    sget-object p2, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->onError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, " onDownloadSuccess -> File not exists"

    .line 335
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->getStringUpdateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, " (MAIN)"

    .line 409
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    :goto_0
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->updateNotification(Lcom/texa/carelib/core/AppType;)V

    new-array p2, v1, [Ljava/lang/Object;

    .line 410
    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-direct {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->exit()V

    return-void
.end method

.method private onFirmwareUpgradeCompleted(Lcom/texa/carelib/core/CareError;Lcom/texa/carelib/core/AppType;)V
    .locals 1

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mIsWorking:Z

    if-eqz p1, :cond_1

    .line 355
    sget-object v0, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    if-ne p2, v0, :cond_0

    const-string p2, " (MAIN)"

    goto :goto_0

    :cond_0
    const-string p2, " (SERVICE)"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->onError(Lcom/texa/carelib/core/CareError;Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_1
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->onSuccess(Lcom/texa/carelib/core/AppType;)V

    :goto_1
    return-void
.end method

.method private onSuccess(Lcom/texa/carelib/core/AppType;)V
    .locals 4

    const v0, 0x7f110a76

    .line 366
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    sget-object v1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    if-ne v1, p1, :cond_0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (MAIN)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersionUpdate()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/DongleModel;->setMainAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 372
    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v3}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FIRMWARE_UPDATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 375
    :cond_0
    sget-object v1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    if-ne v1, p1, :cond_1

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (SERVICE)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getServiceAppVersionUpdate()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/DongleModel;->setServiceAppVersion(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 380
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 381
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->updateNotification(Lcom/texa/carelib/core/AppType;)V

    .line 383
    iget-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->save(Lcom/texa/careapp/model/DongleModel;)Z

    .line 385
    invoke-direct {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->exit()V

    .line 387
    invoke-virtual {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->doUpdate()V

    return-void
.end method

.method private parseServerResponse(Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 5

    .line 177
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->getMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->getServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "Latest MAIN APP version: %s"

    .line 180
    invoke-static {v4, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v2, "Latest SERVICE APP version: %s"

    .line 181
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p2, v0}, Lcom/texa/careapp/model/DongleModel;->setMainAppVersionUpdate(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 184
    invoke-virtual {p2, p1}, Lcom/texa/careapp/model/DongleModel;->setServiceAppVersionUpdate(Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->save(Lcom/texa/careapp/model/DongleModel;)Z

    .line 188
    invoke-direct {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->isCareReadyForFirmwareUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "care is connected, starting update now"

    .line 189
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p0, p3}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->doUpdateInner(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;

    const/4 p3, -0x1

    invoke-direct {p2, p0, p3}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;-><init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private updateMainAppIfNeeded(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;Ljava/lang/String;)Z
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getMainAppVersionUpdate()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 248
    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->getCurrentMainAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    .line 250
    invoke-static {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->isValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->isEquals(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 251
    invoke-virtual {p0, p2, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->beginUpgradeMainApp(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateNotification(Lcom/texa/carelib/core/AppType;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 434
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private updateServiceAppIfNeeded(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;Ljava/lang/String;)Z
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getServiceAppVersionUpdate()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 259
    invoke-virtual {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;->getCurrentServiceAppVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    .line 260
    invoke-static {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->isValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->isEquals(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 261
    invoke-virtual {p0, p2, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->beginUpgradeServiceApp(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method beginUpgradeMainApp(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 1

    .line 283
    sget-object v0, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    invoke-direct {p0, v0, p1, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->beginUpgrade(Lcom/texa/carelib/webservices/FirmwareType;Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    return-void
.end method

.method beginUpgradeServiceApp(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V
    .locals 1

    .line 287
    sget-object v0, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    invoke-direct {p0, v0, p1, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->beginUpgrade(Lcom/texa/carelib/webservices/FirmwareType;Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    return-void
.end method

.method doAutoUpdateIfNeeded()V
    .locals 3

    .line 136
    invoke-direct {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->isCareReadyForFirmwareUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Begin firmware update"

    .line 137
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->doUpdate()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;

    const/4 v2, -0x1

    invoke-direct {v1, p0, v2}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;-><init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method doUpdate()V
    .locals 9

    .line 145
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mDongleModel is null"

    .line 148
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v1, "DO_UPDATE_DISPOSABLE_KEY"

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDisposableHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v2}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessorySerialNumber()Lio/reactivex/Observable;

    move-result-object v3

    iget-object v2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v2}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessoryMainAppVersion()Lio/reactivex/Observable;

    move-result-object v4

    iget-object v2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 154
    invoke-interface {v2}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessoryMainAppVersionPending()Lio/reactivex/Observable;

    move-result-object v5

    iget-object v2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v2}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessoryServiceAppVersion()Lio/reactivex/Observable;

    move-result-object v6

    iget-object v2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 155
    invoke-interface {v2}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessoryServiceAppVersionPending()Lio/reactivex/Observable;

    move-result-object v7

    sget-object v8, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;

    .line 153
    invoke-static/range {v3 .. v8}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function5;)Lio/reactivex/Observable;

    move-result-object v2

    const-wide/16 v3, 0x1

    .line 156
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;)V

    sget-object v4, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda3;

    .line 157
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public doUpdateInner(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->updateServiceAppIfNeeded(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;-><init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 237
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->updateMainAppIfNeeded(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;-><init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "no update available, nothing to do"

    .line 242
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;-><init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 229
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hwid cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic lambda$beginUpgrade$2$com-texa-careapp-app-update-FirmwareUpdateController(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;)V
    .locals 1

    .line 304
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    sget-object v0, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, v0, :cond_0

    const-string p1, " (MAIN)"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, v0, :cond_1

    const-string p1, " (SERVICE)"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->onError(Lcom/texa/carelib/core/CareError;Ljava/lang/String;)V

    goto :goto_2

    .line 307
    :cond_2
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;->getFile()Ljava/io/File;

    move-result-object p2

    .line 308
    sget-object v0, Lcom/texa/carelib/webservices/FirmwareType;->Main:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/texa/carelib/webservices/FirmwareType;->Service:Lcom/texa/carelib/webservices/FirmwareType;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->onDownloadSuccess(Lcom/texa/carelib/core/AppType;Ljava/io/File;)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$checkForUpdatesOnServer$1$com-texa-careapp-app-update-FirmwareUpdateController(Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;)V
    .locals 1

    .line 166
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "loadFirmwareInfo error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    invoke-direct {p0, p2, v0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->parseServerResponse(Lcom/texa/carelib/webservices/ServiceFirmwareInfoLoadedEvent;Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;)V

    return-void
.end method

.method protected onError(Lcom/texa/carelib/core/CareError;Ljava/lang/String;)V
    .locals 4

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->getStringUpdateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 396
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 397
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, " (MAIN)"

    .line 398
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    :goto_0
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->updateNotification(Lcom/texa/carelib/core/AppType;)V

    .line 399
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->getException()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    invoke-direct {p0}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->exit()V

    return-void
.end method

.method public onFirmwareUpgradeCompleted(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeCompletedEvent;->getAppType()Lcom/texa/carelib/core/AppType;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->onFirmwareUpgradeCompleted(Lcom/texa/carelib/core/CareError;Lcom/texa/carelib/core/AppType;)V

    return-void
.end method

.method public onFirmwareUpgradeProgressChanged(Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;)V
    .locals 4

    .line 119
    invoke-virtual {p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;->getProgress()F

    move-result v0

    float-to-int v0, v0

    .line 120
    iget-object v1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110a78

    invoke-direct {p0, v2}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (MAIN)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 122
    invoke-virtual {p1}, Lcom/texa/carelib/care/firmwareupgrade/events/FirmwareUpgradeProgressChangedEvent;->getAppType()Lcom/texa/carelib/core/AppType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/update/FirmwareUpdateController;->updateNotification(Lcom/texa/carelib/core/AppType;)V

    return-void
.end method

.method protected save(Lcom/texa/careapp/model/DongleModel;)Z
    .locals 3

    .line 205
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Could not save dongle model in database."

    .line 208
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v0, [Ljava/lang/Object;

    .line 209
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method protected setNotificationManager(Landroid/app/NotificationManager;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method
