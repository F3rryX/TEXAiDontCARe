.class public Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;
.super Ljava/lang/Object;
.source "SosPrerequisiteNotificationController.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0xb


# instance fields
.field private mApplication:Lcom/texa/careapp/CareApplication;

.field private mCheckDisposable:Lio/reactivex/disposables/Disposable;

.field private mCommunicationDisposable:Lio/reactivex/disposables/Disposable;

.field private mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

.field private final mContext:Landroid/content/Context;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field protected mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

.field private shouldNotify:Z


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->shouldNotify:Z

    .line 63
    iput-object p2, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 64
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mContext:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 66
    iput-object p4, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 67
    iput-object p5, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    .line 68
    iput-object p1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mApplication:Lcom/texa/careapp/CareApplication;

    return-void
.end method

.method private cancelNotification()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private displayNotification()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->getNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private getNotification()Landroid/app/Notification;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SOS notification getNotification"

    .line 133
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    .line 137
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/ServiceDataManager;->getSosServices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/texa/careapp/utils/ServiceDataManager;->filterActiveSosServicesForHwId(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/ServiceDataManager;->getServicePriority(Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;->buildIntent(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "local_notification"

    const/4 v2, 0x1

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_0

    const/high16 v1, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    .line 145
    :goto_0
    iget-object v3, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 146
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mContext:Landroid/content/Context;

    const-string v4, "care_channel"

    invoke-direct {v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mContext:Landroid/content/Context;

    const v4, 0x7f110cc8

    .line 147
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f08011d

    .line 149
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f110c97

    .line 151
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onCareConnected$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing checks for notifications"

    .line 113
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing communication status"

    .line 81
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onCareConnected()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SOS notification onCareConnected"

    .line 90
    invoke-static {v2, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 95
    :cond_0
    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->today()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/texa/careapp/model/DongleModel;->getSOSService(Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;Ljava/util/Date;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 96
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "SOS notification SERVICE EXP NULL? %s"

    invoke-static {v5, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sget-object v4, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    invoke-virtual {v1, v4}, Lcom/texa/careapp/model/DongleModel;->getSOSService(Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 98
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v0

    const-string v0, "SOS notification SERVICE NULL? %s"

    invoke-static {v0, v4}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    return-void

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mCheckDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->observeChecksForNotification()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V

    sget-object v2, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda2;

    .line 105
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mCheckDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onCareNotConnected()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SOS notification onCareNotConnected"

    .line 117
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mCheckDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 119
    invoke-direct {p0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->cancelNotification()V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->shouldNotify:Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCareConnected$2$com-texa-careapp-app-service-SosPrerequisiteNotificationController(Lcom/texa/careapp/checks/Check$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    if-ne p1, v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->cancelNotification()V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->shouldNotify:Z

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean p1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->shouldNotify:Z

    if-eqz p1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->displayNotification()V

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->shouldNotify:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$0$com-texa-careapp-app-service-SosPrerequisiteNotificationController(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "communicationObservable status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p1, v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->onCareConnected()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->onCareNotConnected()V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V

    sget-object v2, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController$$ExternalSyntheticLambda3;

    .line 74
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mCommunicationDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mCommunicationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->mCheckDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
