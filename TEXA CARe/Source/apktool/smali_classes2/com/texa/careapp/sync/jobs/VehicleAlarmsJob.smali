.class public Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;
.super Landroidx/work/Worker;
.source "VehicleAlarmsJob.java"


# instance fields
.field mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;)V

    return-void
.end method

.method private getLocalData(Ljava/util/HashSet;Lcom/texa/careapp/model/AlarmType;)Lcom/texa/careapp/model/VehicleAlarm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/texa/careapp/model/VehicleAlarm;",
            ">;",
            "Lcom/texa/careapp/model/AlarmType;",
            ")",
            "Lcom/texa/careapp/model/VehicleAlarm;"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleAlarm;

    .line 103
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleAlarm;->getAlarmType()Lcom/texa/careapp/model/AlarmType;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRemoteData(Ljava/util/List;Lcom/texa/careapp/model/AlarmType;)Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;",
            ">;",
            "Lcom/texa/careapp/model/AlarmType;",
            ")",
            "Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;"
        }
    .end annotation

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;

    .line 113
    iget-object v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->alarmType:Lcom/texa/careapp/model/AlarmType;

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getVehicleAlarm(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/AlarmType;Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Lcom/texa/careapp/model/VehicleAlarm;
    .locals 2

    .line 133
    new-instance v0, Lcom/texa/careapp/model/VehicleAlarm;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleAlarm;-><init>()V

    .line 134
    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/VehicleAlarm;->setAlarmType(Lcom/texa/careapp/model/AlarmType;)V

    .line 135
    sget-object v1, Lcom/texa/careapp/Constants;->ALARM_TYPE_MEASURE_UNIT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v0, p2}, Lcom/texa/careapp/model/VehicleAlarm;->setMeasureUnit(Lcom/texa/careapp/utils/MeasureUnit;)V

    .line 136
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm;->setVehicleId(Ljava/lang/String;)V

    .line 137
    iget-object p1, p3, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->alarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm;->setAlarmStatus(Lcom/texa/careapp/model/AlarmStatus;)V

    .line 138
    iget-object p1, p3, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm;->setTimestamp(Ljava/util/Date;)V

    return-object v0
.end method

.method private push(Lcom/texa/careapp/model/VehicleAlarm;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "try to upload alarms: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 144
    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->postVehicleAlarms(Lcom/texa/careapp/model/VehicleAlarm;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/response/ServerResponse;

    const-string v1, "got response= %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 146
    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "alarm sync exception"

    .line 148
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private shouldPullRemoteData(Lcom/texa/careapp/model/VehicleAlarm;Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Z
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleAlarm;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    iget-object p2, p2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->timestamp:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-gez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shouldPushLocalData(Lcom/texa/careapp/model/VehicleAlarm;Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleAlarm;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    iget-object p2, p2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->timestamp:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-lez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 13

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onRunTask VehicleAlarm"

    .line 48
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v1

    .line 51
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    .line 52
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/VehicleModel;

    .line 53
    invoke-virtual {p0, v3}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->getVehicleAlarmFromServer(Lcom/texa/careapp/model/VehicleModel;)Ljava/util/List;

    move-result-object v4

    .line 55
    invoke-virtual {v3}, Lcom/texa/careapp/model/VehicleModel;->getAlarms()Ljava/util/HashSet;

    move-result-object v5

    .line 57
    invoke-static {}, Lcom/texa/careapp/model/AlarmType;->values()[Lcom/texa/careapp/model/AlarmType;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 58
    invoke-direct {p0, v5, v9}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->getLocalData(Ljava/util/HashSet;Lcom/texa/careapp/model/AlarmType;)Lcom/texa/careapp/model/VehicleAlarm;

    move-result-object v10

    .line 59
    invoke-direct {p0, v4, v9}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->getRemoteData(Ljava/util/List;Lcom/texa/careapp/model/AlarmType;)Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;

    move-result-object v11

    .line 61
    invoke-direct {p0, v10, v11}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->shouldPullRemoteData(Lcom/texa/careapp/model/VehicleAlarm;Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 63
    invoke-direct {p0, v3, v9, v11}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->getVehicleAlarm(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/AlarmType;Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Lcom/texa/careapp/model/VehicleAlarm;

    move-result-object v9

    .line 65
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 67
    :cond_0
    invoke-direct {p0, v10, v11}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->shouldPushLocalData(Lcom/texa/careapp/model/VehicleAlarm;Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 68
    invoke-direct {p0, v10}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->push(Lcom/texa/careapp/model/VehicleAlarm;)V

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v3, v5}, Lcom/texa/careapp/model/VehicleModel;->setAlarms(Ljava/util/HashSet;)V

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Could not save vehicle model to database."

    .line 76
    invoke-static {v2, v4, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object v2

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method protected getComponent(Landroid/content/Context;)Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 42
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    return-object p1
.end method

.method protected getVehicleAlarmFromServer(Lcom/texa/careapp/model/VehicleModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;",
            ">;"
        }
    .end annotation

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getVehicleDetailsBlocking(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/networking/response/VehicleResponse;

    if-eqz p1, :cond_1

    .line 89
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->vehicleAlarmCollectionResponse:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->vehicleAlarmCollectionResponse:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;->vehicleAlarmResponses:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->vehicleAlarmCollectionResponse:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;->vehicleAlarmResponses:Ljava/util/List;

    return-object p1

    .line 91
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignored exception "

    .line 96
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
