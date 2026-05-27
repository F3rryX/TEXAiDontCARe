.class public Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;
.super Landroidx/work/Worker;
.source "ServiceOneOffJob.java"


# static fields
.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "extra-notification-id"

.field public static final EXTRA_NOTIFICATION_MESSAGE:Ljava/lang/String; = "msg"


# instance fields
.field private final context:Landroid/content/Context;

.field mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;)V

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->context:Landroid/content/Context;

    return-void
.end method

.method private forwardNotification(ILjava/lang/String;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x2000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/app/MainActivity;->buildIntentForDashboardScreen(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 116
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 119
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method private notifyNewSosService(Ljava/lang/String;)V
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->context:Landroid/content/Context;

    const-string v1, "notification"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 142
    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/texa/careapp/app/MainActivity;->buildIntentForDashboardScreen(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 144
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_0

    const/high16 v2, 0x2000000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 147
    :goto_0
    iget-object v4, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->context:Landroid/content/Context;

    invoke-static {v4, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 150
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v4, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v2, v4}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-string/jumbo p1, "uid = ?"

    .line 151
    invoke-virtual {v2, p1, v5}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 153
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v2

    sget-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v2, v5, :cond_2

    .line 154
    iget-object v2, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleByHwId(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    if-nez v2, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, " Vehicle is NULL !!"

    .line 156
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 159
    :cond_1
    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object v2

    .line 162
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "dd/MM/yyyy"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 163
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getLastExpirationDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v5, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->context:Landroid/content/Context;

    const v6, 0x7f110c82

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v3

    aput-object p1, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->context:Landroid/content/Context;

    const v2, 0x7f110c07

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 171
    :goto_1
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 173
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    .line 172
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 174
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/16 v1, 0x12e

    .line 177
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected checkForNewItems(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 126
    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    .line 127
    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleDataManager;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->notifyNewSosService(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 7

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/LoginHelperRx;->isUserLogged()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/ServiceDataManager;->getUUIDsActiveGenericSosServices()Ljava/util/List;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->dongleServicesBlocking()Lretrofit2/Call;

    move-result-object v2

    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/networking/response/ServiceListResponse;

    .line 81
    iget-object v3, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v3, v2}, Lcom/texa/careapp/utils/ServiceDataManager;->saveServiceData(Lcom/texa/careapp/networking/response/ServiceListResponse;)Ljava/util/List;

    .line 83
    iget-object v2, p0, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/ServiceDataManager;->getUUIDsActiveGenericSosServices()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->getInputData()Landroidx/work/Data;

    move-result-object v3

    const-string v4, "extra-notification-id"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroidx/work/Data;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 90
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->getInputData()Landroidx/work/Data;

    move-result-object v4

    const-string v6, "msg"

    invoke-virtual {v4, v6}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v3, v5, :cond_0

    if-eqz v4, :cond_0

    .line 93
    invoke-direct {p0, v3, v4}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->forwardNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "checkForNewItems(preList, postList)"

    .line 97
    invoke-static {v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0, v0, v2}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;->checkForNewItems(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "service data sync error"

    .line 85
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "service data sync success"

    .line 102
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method protected getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 67
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    return-object p1
.end method
