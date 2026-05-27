.class public Lcom/texa/careapp/fcm/FcmMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FcmMessagingService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FcmMessagingService"

.field private static final isNotificationAutoCancel:Z = true


# instance fields
.field protected mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private getVehicle(Lcom/texa/careapp/fcm/FcmAlarmNotification;)Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/texa/careapp/fcm/FcmAlarmNotification;->getVehicle_id()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleById(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private manageNotification(Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " notificationType: %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Lcom/texa/careapp/fcm/FcmMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "remote_notification"

    const-string v3, "Body"

    if-eqz p2, :cond_1

    const/16 v4, 0x67

    if-eq p2, v4, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 161
    invoke-static {v1}, Lcom/texa/careapp/app/MainActivity;->buildIntentForDashboardScreen(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService;->sendNotification(Ljava/lang/String;ILandroid/content/Intent;Z)V

    goto :goto_0

    :pswitch_0
    const/16 p2, 0x12f

    .line 157
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/texa/careapp/fcm/FcmMessagingService;->scheduleSyncServiceDataTask(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 p2, 0x12d

    .line 148
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/texa/careapp/fcm/FcmMessagingService;->scheduleSyncServiceDataTask(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/16 p2, 0x12c

    .line 144
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/texa/careapp/fcm/FcmMessagingService;->scheduleSyncServiceDataTask(ILjava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {v1}, Lcom/texa/careapp/app/MainActivity;->buildIntentForDashboardScreen(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    new-instance v0, Lcom/texa/careapp/fcm/FcmAlarmNotification;

    invoke-direct {v0, p1}, Lcom/texa/careapp/fcm/FcmAlarmNotification;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/texa/careapp/fcm/FcmMessagingService;->notificationBattery(Lcom/texa/careapp/fcm/FcmAlarmNotification;Ljava/lang/String;ILandroid/content/Intent;)Z

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, Lcom/texa/careapp/app/MainActivity;->buildIntentForTexaCarePageOnGooglePlay()Landroid/content/Intent;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService;->sendNotification(Ljava/lang/String;ILandroid/content/Intent;Z)V

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private sendNotification(Ljava/lang/String;ILandroid/content/Intent;Z)V
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, " Intent to launch on click NULL"

    .line 212
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 216
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x2000000

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 219
    :goto_0
    invoke-static {p0, v0, p3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 220
    invoke-virtual {p0}, Lcom/texa/careapp/fcm/FcmMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_2

    const v3, 0x7f110cc8

    .line 223
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 225
    :goto_1
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "care_channel"

    invoke-direct {v3, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f08011d

    .line 226
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 227
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p4

    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 230
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    .line 229
    invoke-virtual {p4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p4

    .line 231
    invoke-virtual {p4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p4

    iput-object p4, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 233
    invoke-virtual {p4, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 237
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getMurmurhash3x8632toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-array p3, v0, [Ljava/lang/Object;

    const-string p4, "getMurmurhash3x8632toHexString error"

    .line 239
    invoke-static {p1, p4, p3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :goto_2
    iget-object p1, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p3, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, v2, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected notificationBattery(Lcom/texa/careapp/fcm/FcmAlarmNotification;Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 5

    .line 172
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v4, "notificationBattery: %s"

    .line 175
    invoke-static {v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/fcm/FcmMessagingService;->getVehicle(Lcom/texa/careapp/fcm/FcmAlarmNotification;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "BATTERY_STATE"

    .line 182
    invoke-virtual {v3, v4}, Lcom/texa/careapp/model/VehicleModel;->getAdditionalDataByType(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleAdditionalDataModel;

    move-result-object v3

    .line 184
    invoke-virtual {v3, v0}, Lcom/texa/careapp/model/VehicleAdditionalDataModel;->setValue(Ljava/lang/String;)V

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/fcm/FcmMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Could not save notification additional data in database."

    .line 190
    invoke-static {v0, v4, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleVehicleAlarm()V

    goto :goto_1

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "notificationBattery vehicle not present in DB"

    .line 194
    invoke-static {v3, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :goto_1
    sget-object v0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->ALARM_STATE_ACTIVE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/texa/careapp/fcm/FcmAlarmNotification;->getAlarm_state()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/texa/careapp/fcm/FcmAlarmNotification;->ALARM_STATE_WARNING:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Lcom/texa/careapp/fcm/FcmAlarmNotification;->getAlarm_state()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 200
    :cond_2
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/texa/careapp/fcm/FcmMessagingService;->sendNotification(Ljava/lang/String;ILandroid/content/Intent;Z)V

    .line 203
    :cond_3
    iget-object p1, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/events/BatteryChargeEvent;

    invoke-direct {p2}, Lcom/texa/careapp/app/events/BatteryChargeEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "notificationBattery consumed"

    .line 204
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public onDeletedMessages()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FirebaseCloudMessaging.MESSAGE_TYPE_DELETED"

    .line 120
    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5

    .line 82
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 84
    invoke-virtual {p0}, Lcom/texa/careapp/fcm/FcmMessagingService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    .line 85
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/fcm/FcmMessagingService;)V

    .line 87
    sget-object v0, Lcom/texa/careapp/fcm/FcmMessagingService;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "From: %s"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v1, "notification_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, " NOTIFICATION_TYPE == null"

    .line 94
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 103
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, " parseTypeFcmError"

    .line 105
    invoke-static {p1, v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/fcm/FcmMessagingService;->manageNotification(Ljava/util/Map;I)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 3

    .line 72
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "refreshed token: %s"

    .line 73
    invoke-static {v2, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "fcm_registration_token"

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/fcm/FcmMessagingService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fcm_current_token"

    .line 76
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 113
    invoke-super {p0, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "FirebaseCloudMessaging.MESSAGE_TYPE_SEND_ERROR %s"

    .line 114
    invoke-static {p1, p2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected scheduleSyncServiceDataTask(ILjava/lang/String;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmMessagingService;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleOneOffJob(ILjava/lang/String;)V

    return-void
.end method
