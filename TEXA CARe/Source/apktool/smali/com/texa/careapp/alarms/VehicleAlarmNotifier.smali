.class public Lcom/texa/careapp/alarms/VehicleAlarmNotifier;
.super Ljava/lang/Object;
.source "VehicleAlarmNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleAlarmNotifier"


# instance fields
.field private final mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

.field private mContext:Landroid/content/Context;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/model/DongleDataManager;Landroid/app/NotificationManager;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 45
    iput-object p3, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    iput-object p4, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method private getBatteryVehicleAlarm(Lcom/texa/careapp/model/AlarmType;Lcom/texa/careapp/model/AlarmStatus;Ljava/util/ArrayList;Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/model/VehicleAlarm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/AlarmType;",
            "Lcom/texa/careapp/model/AlarmStatus;",
            "Ljava/util/ArrayList<",
            "Lcom/texa/careapp/model/VehicleAlarm$AlarmData;",
            ">;",
            "Lcom/texa/careapp/model/VehicleModel;",
            ")",
            "Lcom/texa/careapp/model/VehicleAlarm;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/texa/careapp/model/VehicleAlarm;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleAlarm;-><init>()V

    .line 92
    invoke-virtual {p4}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/texa/careapp/model/VehicleAlarm;->setVehicleId(Ljava/lang/String;)V

    .line 93
    sget-object p4, Lcom/texa/careapp/utils/MeasureUnit;->VOLTAGE:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v0, p4}, Lcom/texa/careapp/model/VehicleAlarm;->setMeasureUnit(Lcom/texa/careapp/utils/MeasureUnit;)V

    .line 94
    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/VehicleAlarm;->setAlarmStatus(Lcom/texa/careapp/model/AlarmStatus;)V

    .line 95
    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm;->setAlarmType(Lcom/texa/careapp/model/AlarmType;)V

    .line 96
    invoke-virtual {v0, p3}, Lcom/texa/careapp/model/VehicleAlarm;->setAlarmDataList(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method protected addAlarmToVehicle(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/VehicleAlarm;)V
    .locals 1

    .line 108
    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/VehicleModel;->updateAlarm(Lcom/texa/careapp/model/VehicleAlarm;)V

    .line 111
    :try_start_0
    iget-object p2, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Could not save vehicle model to database."

    .line 113
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected getAlternatorMessage(I)Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "getAlternatorMessage cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyAlternatorAlarm(Lcom/texa/careapp/model/AlarmType;Lcom/texa/careapp/model/AlarmStatus;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/AlarmType;",
            "Lcom/texa/careapp/model/AlarmStatus;",
            "Ljava/util/ArrayList<",
            "Lcom/texa/careapp/model/VehicleAlarm$AlarmData;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "NotifyAlternatorAlarm - dongle model is null!"

    .line 54
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "NotifyAlternatorAlarm - vehicle model is null!"

    .line 60
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lcom/texa/careapp/model/AlarmType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 65
    invoke-virtual {p2}, Lcom/texa/careapp/model/AlarmStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const-string v1, "notifyAlternatorAlarm %s %s %s"

    .line 64
    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    sget-object v1, Lcom/texa/careapp/model/AlarmStatus;->RED:Lcom/texa/careapp/model/AlarmStatus;

    if-ne p2, v1, :cond_4

    .line 68
    sget-object v1, Lcom/texa/careapp/alarms/VehicleAlarmNotifier$1;->$SwitchMap$com$texa$careapp$model$AlarmType:[I

    invoke-virtual {p1}, Lcom/texa/careapp/model/AlarmType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_3

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x7f110053

    .line 73
    invoke-virtual {p0, v1}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->getAlternatorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->notifyDriver(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const v1, 0x7f110052

    .line 70
    invoke-virtual {p0, v1}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->getAlternatorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->notifyDriver(Ljava/lang/String;)V

    .line 78
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->getBatteryVehicleAlarm(Lcom/texa/careapp/model/AlarmType;Lcom/texa/careapp/model/AlarmStatus;Ljava/util/ArrayList;Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/model/VehicleAlarm;

    move-result-object p1

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->addAlarmToVehicle(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/VehicleAlarm;)V

    .line 81
    iget-object p1, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {p1}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleVehicleAlarm()V

    return-void
.end method

.method protected notifyDriver(Ljava/lang/String;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->buildAlternatorNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
