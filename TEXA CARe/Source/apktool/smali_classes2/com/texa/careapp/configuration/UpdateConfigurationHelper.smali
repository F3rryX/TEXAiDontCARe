.class public Lcom/texa/careapp/configuration/UpdateConfigurationHelper;
.super Ljava/lang/Object;
.source "UpdateConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateConfigurationHelper"


# instance fields
.field private mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

.field private mContext:Landroid/content/Context;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mTexaService:Lcom/texa/carelib/webservices/TexaService;

.field private mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/carelib/webservices/TexaService;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    .line 57
    iput-object p3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    .line 58
    iput-object p4, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 59
    iput-object p6, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 60
    iput-object p7, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 63
    invoke-virtual {p5}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    .line 64
    invoke-static {p2}, Lcom/texa/careapp/carelib/CommunicationObservable;->filterStatus(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Lio/reactivex/ObservableTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V

    sget-object p3, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda14;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda14;

    .line 65
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private buildConfigurationNeedsUpdateNotification()Landroid/app/Notification;
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remote_notification"

    const/4 v2, 0x1

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_0

    const/high16 v1, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    .line 144
    :goto_0
    iget-object v3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    const/16 v4, 0xca

    invoke-static {v3, v4, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1108dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x30

    .line 154
    iput v1, v0, Landroid/app/Notification;->flags:I

    return-object v0
.end method

.method private checkConfigurationStatusOnServer(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationHelper;Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private dismissAllNotifications()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private hideNeedsConfigurationNotification()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method static synthetic lambda$checkCareNotConfigured$2(Ljava/lang/Integer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 81
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 82
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x84

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$checkCareNotConfigured$4(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing care status"

    .line 97
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$checkConfigurationStatusOnServer$12(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;Lio/reactivex/ObservableEmitter;Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;)V
    .locals 3

    .line 217
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getVehicleConfigurationStatus()Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    move-result-object p2

    .line 220
    sget-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleConfigurationStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    .line 222
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError;->getException()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 226
    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 232
    :goto_0
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing connection status"

    .line 65
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeCareInfos$10(Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$observeCareInfos$11(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Integer;)Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {v0, p3, p1, p0, p2}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method static synthetic lambda$observeCareInfos$6(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serialNumberObservable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeCareInfos$7(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vinObservable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeCareInfos$8(Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interpreterVersionObservable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeCareInfos$9(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "careStatusObservable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeCareInfos()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v0}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessorySerialNumber()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda11;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda11;

    .line 193
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v1}, Lcom/texa/careapp/carelib/ICareObserver;->observeVinCode()Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda12;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda12;

    .line 195
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v2}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessoryInterpreterVersion()Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda15;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda15;

    .line 197
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v3}, Lcom/texa/careapp/carelib/ICareObserver;->observeCareStatus()Lio/reactivex/Observable;

    move-result-object v3

    sget-object v4, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda10;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda10;

    .line 199
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v3

    sget-object v4, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda5;

    .line 200
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v3

    .line 202
    sget-object v4, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda1;

    invoke-static {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function4;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildCareNotConfiguredNotification(Landroidx/core/app/NotificationCompat$Builder;ZLandroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 1

    .line 124
    iget-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f1100a4

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p3, :cond_0

    .line 128
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x20

    .line 132
    iput p2, p1, Landroid/app/Notification;->flags:I

    return-object p1
.end method

.method protected buildCareNotConfiguredNotification(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/VehicleObserver;)Landroid/app/Notification;
    .locals 2

    .line 103
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    .line 104
    invoke-virtual {p2}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object p2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 109
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/texa/careapp/app/MainActivity;->buildIntentForDashboardScreen(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x8000000

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 p2, 0xa000000

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    const/16 v1, 0xca

    invoke-static {v0, v1, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 117
    :goto_0
    iget-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->buildCareNotConfiguredNotification(Landroidx/core/app/NotificationCompat$Builder;ZLandroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public checkCareNotConfigured()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v0}, Lcom/texa/careapp/carelib/ICareObserver;->observeCareStatus()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda4;

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinct()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V

    sget-object v2, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda13;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda13;

    .line 84
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public displayCareNotConfiguredNotification()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {p0, v1, v2}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->buildCareNotConfiguredNotification(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/VehicleObserver;)Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public displayNeedsUpdateNotification()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->buildConfigurationNeedsUpdateNotification()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public synthetic lambda$checkCareNotConfigured$3$com-texa-careapp-configuration-UpdateConfigurationHelper(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x84

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->hideNeedsConfigurationNotification()V

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->isRunning(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->displayCareNotConfiguredNotification()V

    goto :goto_1

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->hideNeedsConfigurationNotification()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$checkConfigurationStatusOnServer$13$com-texa-careapp-configuration-UpdateConfigurationHelper(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    iget-object v0, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vin:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "vinCode could not be null!"

    .line 211
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0}, Lcom/texa/carelib/webservices/TexaService;->getVehicleConfigurationInfo()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->serialNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vin:Ljava/lang/String;

    iget-object v3, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->interpreterVersion:Ljava/math/BigInteger;

    new-instance v4, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, p2}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;Lio/reactivex/ObservableEmitter;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;->loadVehicleConfigurationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

.method public synthetic lambda$checkConfigurationStatusOnServer$14$com-texa-careapp-configuration-UpdateConfigurationHelper(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationHelper;Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$new$0$com-texa-careapp-configuration-UpdateConfigurationHelper(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->dismissAllNotifications()V

    return-void
.end method

.method public synthetic lambda$observeConfigurationInfos$5$com-texa-careapp-configuration-UpdateConfigurationHelper(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    iget v0, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->status:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->checkConfigurationStatusOnServer(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 181
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public observeConfigurationInfos()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->observeCareInfos()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V

    .line 177
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeConfigurationInfosLocal()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->observeCareInfos()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/configuration/UpdateConfigurationHelper$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
