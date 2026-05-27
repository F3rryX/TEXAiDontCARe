.class public Lcom/texa/careapp/app/service/ServiceNotificationController;
.super Ljava/lang/Object;
.source "ServiceNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;,
        Lcom/texa/careapp/app/service/ServiceNotificationController$SoundType;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x8

.field private static final ONE_MINUTE:J = 0xea60L

.field static final SOUND_TYPE_CONFIGURED:I = 0x2

.field static final SOUND_TYPE_DEFAULT:I = 0x0

.field static final SOUND_TYPE_NONE:I = -0x1

.field static final SOUND_TYPE_NOT_CONFIGURED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ServiceNotificationController"


# instance fields
.field private mCareDisposable:Lio/reactivex/disposables/Disposable;

.field private final mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

.field private final mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

.field private final mConnectedButNotConfiguredSoundUri:Landroid/net/Uri;

.field private final mConnectedSoundUri:Landroid/net/Uri;

.field private mConnectionInfo:Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;

.field private final mContext:Landroid/content/Context;

.field private final mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mGPSDisposable:Lio/reactivex/disposables/Disposable;

.field private final mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mSoundUri:Landroid/net/Uri;

.field private shouldPlaySoundOnConnection:Z


# direct methods
.method public static synthetic $r8$lambda$jgbJJ9EZuQqJ1OdAQmR69bDac0c(Lcom/texa/careapp/app/service/ServiceNotificationController;Lcom/texa/careapp/carelib/CommunicationObservable$Status;Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/service/ServiceNotificationController;->checkConnectionInfoForNotification(Lcom/texa/careapp/carelib/CommunicationObservable$Status;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/remotelogger/LoggerManager;Lcom/texa/careapp/model/DongleDataManager;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->shouldPlaySoundOnConnection:Z

    .line 83
    iput-object p2, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 84
    iput-object p7, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mPrefs:Landroid/content/SharedPreferences;

    .line 85
    iput-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    .line 87
    iput-object p3, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 88
    iput-object p4, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 90
    iput-object p5, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    .line 91
    iput-object p6, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    const/4 p2, 0x2

    .line 93
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mSoundUri:Landroid/net/Uri;

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "android.resource://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p5, 0x7f100019

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mConnectedSoundUri:Landroid/net/Uri;

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f100015

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mConnectedButNotConfiguredSoundUri:Landroid/net/Uri;

    return-void
.end method

.method private beepOptions(Ljava/lang/Integer;)V
    .locals 1

    .line 149
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    const/16 v0, 0x84

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    .line 151
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onCareConnected(I)V

    goto :goto_0

    :cond_0
    :pswitch_1
    const/4 p1, 0x1

    .line 163
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onCareConnected(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private cancelServiceNotification()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 289
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 290
    sget-object v1, Lcom/texa/careapp/app/service/ServiceNotificationController;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s#cancelServiceNotification()"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private cancelServiceNotification(I)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private checkConnectionInfoForNotification(Lcom/texa/careapp/carelib/CommunicationObservable$Status;Ljava/lang/Integer;)Z
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 130
    invoke-virtual {p1}, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string p2, "#checkConnectionInfoForNotification communication: %s Care: %s"

    invoke-static {p2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget-object p2, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p2, p1, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onCareConnected(I)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onCareNotConnected()V

    .line 140
    iget-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mGPSDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    :goto_0
    return v2
.end method

.method private checkGPSForNotification()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "checkGPSForNotification dongle == NULL"

    .line 209
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 213
    :cond_0
    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->today()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/texa/careapp/model/DongleModel;->getSOSService(Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;Ljava/util/Date;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "service is purchased and activated, don\'t show this notification"

    .line 215
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mGPSDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 220
    new-instance v0, Lcom/texa/careapp/checks/CheckGps;

    iget-object v1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/texa/careapp/checks/CheckGps;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/texa/careapp/checks/CheckGps;->check()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    new-instance v2, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    .line 221
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mGPSDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private getNotification(Ljava/lang/String;IIZ)Landroid/app/Notification;
    .locals 5

    .line 317
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/app/MainActivity;->buildIntentForDashboardScreen(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "local_notification"

    const/4 v2, 0x1

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_0

    const/high16 v1, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    .line 324
    :goto_0
    iget-object v3, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 325
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    if-nez p3, :cond_1

    const-string v4, "care_channel"

    goto :goto_1

    :cond_1
    const-string v4, "care_min_channel"

    .line 326
    :goto_1
    invoke-direct {v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    const v4, 0x7f110cc8

    .line 327
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f08011d

    .line 328
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 330
    invoke-virtual {v1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 333
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    .line 332
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 334
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 335
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 336
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->shouldPlaySoundOnConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Sound:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " autoCancel:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 339
    invoke-static {p3, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-boolean p3, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->shouldPlaySoundOnConnection:Z

    const/4 v0, 0x2

    if-eqz p3, :cond_5

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    if-eq p2, v0, :cond_2

    goto :goto_2

    .line 347
    :cond_2
    iget-object p2, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mConnectedSoundUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 350
    :cond_3
    iget-object p2, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mConnectedButNotConfiguredSoundUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 344
    :cond_4
    iget-object p2, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mSoundUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 357
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    if-nez p4, :cond_6

    .line 360
    iput v0, p1, Landroid/app/Notification;->flags:I

    :cond_6
    return-object p1
.end method

.method private getNotification(Ljava/lang/String;IZ)Landroid/app/Notification;
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/texa/careapp/app/service/ServiceNotificationController;->getNotification(Ljava/lang/String;IIZ)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$onCreate$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error CommunicationObserver"

    .line 114
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCreate$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error CareSubscription"

    .line 126
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onCareNotConnected()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "NOTIFICATION_ENABLE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f110b12

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/texa/careapp/app/service/ServiceNotificationController;->updateServiceNotification(Ljava/lang/String;II)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->cancelServiceNotification()V

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CARe not connected"

    .line 284
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateServiceNotification(ILjava/lang/String;IZ)V
    .locals 0

    .line 308
    invoke-direct {p0, p2, p3, p4}, Lcom/texa/careapp/app/service/ServiceNotificationController;->getNotification(Ljava/lang/String;IZ)Landroid/app/Notification;

    move-result-object p2

    .line 309
    iget-object p3, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private updateServiceNotification(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, p1, p2, v0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->getNotification(Ljava/lang/String;IZ)Landroid/app/Notification;

    move-result-object p1

    .line 299
    iget-object p2, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private updateServiceNotification(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->getNotification(Ljava/lang/String;IIZ)Landroid/app/Notification;

    move-result-object p1

    .line 304
    iget-object p2, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p3, 0x8

    invoke-virtual {p2, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$checkGPSForNotification$4$com-texa-careapp-app-service-ServiceNotificationController(Lcom/texa/careapp/checks/Check$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    const/16 v1, 0xc

    if-eq p1, v0, :cond_0

    .line 224
    iget-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    const v0, 0x7f110a92

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v2, 0x1

    .line 224
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/texa/careapp/app/service/ServiceNotificationController;->updateServiceNotification(ILjava/lang/String;IZ)V

    .line 227
    iget-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_CONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->GET_GPS_DISABLED:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/service/ServiceNotificationController;->cancelServiceNotification(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$checkGPSForNotification$5$com-texa-careapp-app-service-ServiceNotificationController(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mGPSSubscription#onError"

    .line 233
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xc

    .line 234
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/service/ServiceNotificationController;->cancelServiceNotification(I)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$com-texa-careapp-app-service-ServiceNotificationController(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne v0, p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onCareNotConnected()V

    .line 118
    iget-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mGPSDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreate$2$com-texa-careapp-app-service-ServiceNotificationController(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCareSubscription#onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-direct {p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onCareNotConnected()V

    return-void
.end method

.method protected onCareConnected(I)V
    .locals 2

    .line 179
    new-instance v0, Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;

    iget-object v1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {v1}, Lcom/texa/careapp/carelib/CommunicationObservable;->getCurrentDeviceInfo()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;-><init>(Lcom/texa/carelib/communication/DeviceInfo;)V

    .line 180
    iget-object v1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mConnectionInfo:Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;

    invoke-virtual {p0, v1, v0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->shouldPlaySoundOnConnection(Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->shouldPlaySoundOnConnection:Z

    .line 181
    iput-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mConnectionInfo:Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;

    .line 183
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f1108e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/texa/careapp/app/service/ServiceNotificationController;->updateServiceNotification(Ljava/lang/String;I)V

    .line 184
    invoke-direct {p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->checkGPSForNotification()V

    return-void
.end method

.method public onCreate(Landroid/app/Service;)V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "NOTIFICATION_ENABLE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 105
    iget-object v1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f110aa8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/texa/careapp/app/service/ServiceNotificationController;->getNotification(Ljava/lang/String;IIZ)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mCareDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 113
    iget-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {p1}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda5;

    .line 114
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    .line 115
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 120
    invoke-interface {v0}, Lcom/texa/careapp/carelib/ICareObserver;->observeCareStatus()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->distinct()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    .line 113
    invoke-static {p1, v0, v1}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    .line 122
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda6;->INSTANCE:Lcom/texa/careapp/app/service/ServiceNotificationController$$ExternalSyntheticLambda6;

    .line 126
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mCareDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onDestroy(Landroid/app/Service;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mCareDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 194
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mGPSDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 197
    invoke-direct {p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->cancelServiceNotification()V

    const/4 v0, 0x1

    .line 200
    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method shouldPlaySoundOnConnection(Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Last connection == null"

    .line 248
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->shouldPlaySoundOnConnectionEnabledFromPrefs()Z

    move-result p1

    return p1

    .line 252
    :cond_0
    iget-object p2, p2, Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;->hwId:Ljava/lang/String;

    iget-object v1, p1, Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;->hwId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->shouldPlaySoundOnConnectionEnabledFromPrefs()Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "CARe device has changed"

    .line 253
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 258
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide p1, p1, Lcom/texa/careapp/app/service/ServiceNotificationController$ConnectionInfo;->disconnectionTimestamp:J

    sub-long/2addr v2, p1

    const-wide/32 p1, 0xea60

    cmp-long v4, v2, p1

    if-lez v4, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    new-array p2, v1, [Ljava/lang/Object;

    .line 260
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p2, v0

    const-string v2, " elapsedTime value: %s"

    invoke-static {v2, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 262
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->shouldPlaySoundOnConnectionEnabledFromPrefs()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "elapsedTime > one minute"

    .line 263
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    return v0
.end method

.method shouldPlaySoundOnConnectionEnabledFromPrefs()Z
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/texa/careapp/app/service/ServiceNotificationController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "SOUND_ON_CONNECTION"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
