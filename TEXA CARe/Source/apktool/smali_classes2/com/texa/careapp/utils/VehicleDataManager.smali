.class public Lcom/texa/careapp/utils/VehicleDataManager;
.super Ljava/lang/Object;
.source "VehicleDataManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleDataManager"


# instance fields
.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mVehicleModelPublishSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/VehicleDataManager;->mVehicleModelPublishSubject:Lio/reactivex/subjects/PublishSubject;

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/utils/VehicleDataManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method private static deleteVehicle(Ljava/lang/String;)V
    .locals 3

    .line 52
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string/jumbo p0, "uid = ? "

    .line 53
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method private getVehicleAlarm(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Lcom/texa/careapp/model/VehicleAlarm;
    .locals 2

    .line 231
    new-instance v0, Lcom/texa/careapp/model/VehicleAlarm;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleAlarm;-><init>()V

    .line 232
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm;->setVehicleId(Ljava/lang/String;)V

    .line 233
    iget-object p1, p2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->timestamp:Ljava/util/Date;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm;->setTimestamp(Ljava/util/Date;)V

    .line 234
    sget-object p1, Lcom/texa/careapp/Constants;->ALARM_TYPE_MEASURE_UNIT_MAP:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->alarmType:Lcom/texa/careapp/model/AlarmType;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm;->setMeasureUnit(Lcom/texa/careapp/utils/MeasureUnit;)V

    .line 235
    iget-object p1, p2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->alarmType:Lcom/texa/careapp/model/AlarmType;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm;->setAlarmType(Lcom/texa/careapp/model/AlarmType;)V

    .line 236
    iget-object p1, p2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->alarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleAlarm;->setAlarmStatus(Lcom/texa/careapp/model/AlarmStatus;)V

    return-object v0
.end method

.method private isValidVehicleAlarmResponse(Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->alarmStatus:Lcom/texa/careapp/model/AlarmStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->alarmType:Lcom/texa/careapp/model/AlarmType;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isVehiclePersisted(Ljava/lang/String;)Z
    .locals 4

    .line 58
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string/jumbo p0, "uid = ? "

    .line 59
    invoke-virtual {v0, p0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->count()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$observeVehicleModel$0(Ljava/lang/String;Lcom/texa/careapp/model/VehicleModel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 449
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private persistAlarms(Lcom/texa/careapp/networking/response/VehicleResponse;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 2

    .line 198
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->vehicleAlarmCollectionResponse:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->vehicleAlarmCollectionResponse:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;->vehicleAlarmResponses:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->vehicleAlarmCollectionResponse:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;->vehicleAlarmResponses:Ljava/util/List;

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;

    .line 206
    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/VehicleDataManager;->isValidVehicleAlarmResponse(Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-direct {p0, p2, v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleAlarm(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;)Lcom/texa/careapp/model/VehicleAlarm;

    move-result-object v0

    .line 209
    invoke-virtual {p2, v0}, Lcom/texa/careapp/model/VehicleModel;->updateAlarm(Lcom/texa/careapp/model/VehicleAlarm;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 407
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 3

    .line 437
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "uid=?"

    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->exists()Z

    move-result p1

    return p1
.end method

.method public getAllVehicles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllVehicles(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "hwid = ?"

    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleDataManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "hwid = ? "

    invoke-virtual {v1, v0, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "isCurrentVehicle = ? "

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleDataManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "isSelectedVehicle = ? "

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public getUnSyncedVehicles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 441
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "sync_needed=?"

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleByHwId()Lcom/texa/careapp/model/VehicleModel;
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleDataManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "hwid = ? "

    invoke-virtual {v1, v0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public getVehicleByHwId(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;
    .locals 4

    .line 417
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "hwid=?"

    .line 418
    invoke-virtual {v0, p1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 419
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "isCurrentVehicle = ? "

    invoke-virtual {p1, v1, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleModel;

    return-object p1
.end method

.method public getVehicleById(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;
    .locals 3

    .line 411
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "uid=?"

    .line 412
    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleModel;

    return-object p1
.end method

.method public getVehicleByPlate(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;
    .locals 3

    .line 72
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "plate = ? "

    .line 73
    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/VehicleModel;

    return-object p1
.end method

.method getVehicleObservable(Lcom/texa/careapp/networking/response/VehicleResponse;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/response/VehicleResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lcom/texa/careapp/model/VehicleModel;->from(Lcom/texa/careapp/networking/response/VehicleResponse;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 92
    sget-object p1, Lcom/texa/careapp/utils/VehicleDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "vehiclemodel is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getVehiclesByHwId()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleDataManager;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 432
    :cond_0
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 433
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "hwid = ? "

    invoke-virtual {v1, v0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public insertVehicle(Lcom/texa/careapp/model/VehicleModelResponseEntity;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleModelResponseEntity;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-static {p1}, Lcom/texa/careapp/model/VehicleModel;->from(Lcom/texa/careapp/model/VehicleModelResponseEntity;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 172
    sget-object p1, Lcom/texa/careapp/utils/VehicleDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "vehiclemodel is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 176
    :cond_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    .line 179
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->isVehiclePersisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-static {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->deleteVehicle(Ljava/lang/String;)V

    .line 185
    :cond_1
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 187
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "cannot insert vehicle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 189
    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 194
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 191
    :goto_1
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 192
    throw p1
.end method

.method public insertVehicle(Lcom/texa/careapp/networking/response/VehicleResponse;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/response/VehicleResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/texa/careapp/model/VehicleModel;->from(Lcom/texa/careapp/networking/response/VehicleResponse;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    sget-object p1, Lcom/texa/careapp/utils/VehicleDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "vehiclemodel is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    const/4 v1, 0x0

    .line 114
    :try_start_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/texa/careapp/utils/VehicleDataManager;->isVehiclePersisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-static {v2}, Lcom/texa/careapp/utils/VehicleDataManager;->deleteVehicle(Ljava/lang/String;)V

    .line 120
    :cond_1
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 122
    iget-object v2, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v2, v2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->deadlines:Ljava/util/List;

    .line 123
    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;

    .line 125
    invoke-virtual {v0, v3}, Lcom/texa/careapp/model/VehicleModel;->updateSchedule(Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v2, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v2, v2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->thresholds:Ljava/util/HashMap;

    .line 130
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, "threshold type is null, skipping"

    new-array v5, v1, [Ljava/lang/Object;

    .line 132
    invoke-static {v4, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 136
    :cond_3
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;

    .line 138
    invoke-static {v4}, Lcom/texa/careapp/model/ThresholdModel$Type;->getValueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v4

    .line 139
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v4

    .line 140
    iget-object v6, v5, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;->date:Ljava/util/Date;

    invoke-virtual {v4, v6}, Lcom/texa/careapp/model/ThresholdModel;->setDate(Ljava/util/Date;)V

    .line 141
    iget-object v5, v5, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;->odometer:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/texa/careapp/model/ThresholdModel;->setOdometer(Ljava/lang/Integer;)V

    .line 143
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "threshold type not found"

    new-array v6, v1, [Ljava/lang/Object;

    .line 145
    invoke-static {v4, v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    :cond_4
    iget-object v2, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v2, v2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->lampStatusResponseCollection:Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseCollection;

    invoke-virtual {p0, v2, v0}, Lcom/texa/careapp/utils/VehicleDataManager;->persistLamps(Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseCollection;Lcom/texa/careapp/model/VehicleModel;)V

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/utils/VehicleDataManager;->persistAlarms(Lcom/texa/careapp/networking/response/VehicleResponse;Lcom/texa/careapp/model/VehicleModel;)V

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/utils/VehicleDataManager;->persistParameters(Lcom/texa/careapp/networking/response/VehicleResponse;Lcom/texa/careapp/model/VehicleModel;)V

    .line 157
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_3
    const-string v2, "cannot insert vehicle"

    new-array v1, v1, [Ljava/lang/Object;

    .line 159
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :goto_2
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 164
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 161
    :goto_3
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 162
    throw p1
.end method

.method observeVehicleModel(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleDataManager;->mVehicleModelPublishSubject:Lio/reactivex/subjects/PublishSubject;

    new-instance v1, Lcom/texa/careapp/utils/VehicleDataManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/texa/careapp/utils/VehicleDataManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 450
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleByHwId(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method persistLamps(Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseCollection;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 387
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseCollection;->list:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_1

    .line 391
    :cond_0
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseCollection;->list:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 392
    new-instance v2, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-direct {v2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;-><init>()V

    .line 393
    invoke-virtual {v2, v1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setDataId(Ljava/lang/Long;)V

    .line 394
    iget-object v3, p1, Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseCollection;->list:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseItem;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseItem;->timestamp:Ljava/util/Date;

    invoke-virtual {v2, v1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 395
    invoke-virtual {v2, v1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setStatus(Z)V

    .line 396
    invoke-virtual {v2, p2}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setVehicleModel(Lcom/texa/careapp/model/VehicleModel;)V

    .line 399
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not save lamp status in database."

    .line 401
    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method persistParameters(Lcom/texa/careapp/networking/response/VehicleResponse;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 9

    .line 331
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->parameterStatusReponseCollection:Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusReponseCollection;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->parameterStatusReponseCollection:Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusReponseCollection;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusReponseCollection;->list:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 335
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object p1, p1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->parameterStatusReponseCollection:Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusReponseCollection;

    .line 337
    iget-object v0, p1, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusReponseCollection;->list:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 339
    iget-object v2, p1, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusReponseCollection;->list:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;

    .line 341
    new-instance v3, Lcom/texa/careapp/model/VehicleParam;

    invoke-direct {v3}, Lcom/texa/careapp/model/VehicleParam;-><init>()V

    .line 344
    iget-object v4, v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;->type:Ljava/lang/String;

    const-string v5, "P_STRING"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 345
    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->STRING:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v3, v4}, Lcom/texa/careapp/model/VehicleParam;->setValueDataType(Lcom/texa/carelib/care/vehicle/ValueDataType;)V

    .line 346
    iget-object v4, v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/texa/careapp/model/VehicleParam;->setValueString(Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_2
    iget-object v4, v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;->type:Ljava/lang/String;

    const-string v7, "P_NUMBER"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    iget-object v4, v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    if-nez v4, :cond_3

    goto :goto_0

    .line 354
    :cond_3
    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v3, v4}, Lcom/texa/careapp/model/VehicleParam;->setValueDataType(Lcom/texa/carelib/care/vehicle/ValueDataType;)V

    .line 355
    iget-object v4, v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/careapp/model/VehicleParam;->setValueNumeric(Ljava/lang/Double;)V

    goto :goto_1

    .line 356
    :cond_4
    iget-object v4, v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;->type:Ljava/lang/String;

    const-string v7, "STATE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 357
    sget-object v4, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP_INVERSE:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;->value:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_5

    new-array v4, v6, [Ljava/lang/Object;

    .line 359
    iget-object v7, v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;->value:Ljava/lang/String;

    aput-object v7, v4, v5

    const-string v7, "invalid STATUS_CONVERSION_MAP_INVERSE: %s"

    invoke-static {v7, v4}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 361
    :cond_5
    sget-object v7, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v3, v7}, Lcom/texa/careapp/model/VehicleParam;->setValueDataType(Lcom/texa/carelib/care/vehicle/ValueDataType;)V

    .line 362
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/texa/careapp/model/VehicleParam;->setValueStatus(J)V

    .line 371
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/texa/careapp/model/VehicleParam;->setDataId(J)V

    .line 372
    invoke-virtual {v3, p2}, Lcom/texa/careapp/model/VehicleParam;->setVehicleModel(Lcom/texa/careapp/model/VehicleModel;)V

    .line 373
    iget-object v1, v2, Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;->unit:Lcom/texa/careapp/utils/MeasureUnit;

    invoke-virtual {v3, v1}, Lcom/texa/careapp/model/VehicleParam;->setUnit(Lcom/texa/careapp/utils/MeasureUnit;)V

    .line 377
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 379
    :catch_0
    sget-object v1, Lcom/texa/careapp/utils/VehicleDataManager;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Could not save diagnostic parameter in database"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public setVehicleLikeSelected(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;
    .locals 3

    .line 215
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleById(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "this vehicleModel not exist in DB: %s"

    .line 219
    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 223
    :cond_1
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->setVehicleSelected()V

    .line 224
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->save()Ljava/lang/Long;

    return-object v0
.end method

.method public updateVehicle(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleModel;",
            "Lcom/texa/careapp/networking/response/VehicleResponse;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->vehicleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    iget-object v0, p2, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    .line 254
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleById(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setHwid(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setBrandName(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setModelName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setDescription(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/careapp/model/VehicleModel;->setPlate(Ljava/lang/String;)V

    move-object p1, v1

    .line 265
    :cond_0
    iget-object v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->selectionData:Lcom/texa/careapp/networking/response/SelectionDataResponse;

    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getBrand()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getBrand()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/utils/ValueOrder;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/texa/careapp/model/VehicleModel;->setBrandName(Ljava/lang/String;)V

    .line 271
    :cond_1
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getModel()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 272
    invoke-virtual {v1}, Lcom/texa/careapp/networking/response/SelectionDataResponse;->getModel()Lcom/texa/careapp/utils/ValueOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/utils/ValueOrder;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setModelName(Ljava/lang/String;)V

    .line 277
    :cond_2
    iget-object v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->plate:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setPlate(Ljava/lang/String;)V

    .line 279
    iget-object v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->hwid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setHwid(Ljava/lang/String;)V

    .line 280
    iget-object v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->odometer:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setOdometer(Ljava/lang/Integer;)V

    .line 281
    iget-object v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->registrationDate:Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setRegistrationDate(Ljava/util/Date;)V

    .line 282
    iget-object v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->color:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setColor(Ljava/lang/String;)V

    .line 283
    iget-object v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->tyredTypeId:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setTyresTypeId(Ljava/lang/Integer;)V

    .line 284
    iget-object v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->country:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setNation(Ljava/lang/String;)V

    .line 286
    iget-boolean v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->haveAdvancedDiagnosis:Z

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setHaveAdvancedDiagnosis(Z)V

    .line 287
    iget-boolean v1, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->haveAutomaticTransmission:Z

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->setHaveAutomaticTransmission(Z)V

    .line 288
    iget-boolean v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->customerAvailability:Z

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/VehicleModel;->setCustomerAvailability(Z)V

    .line 290
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 296
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->deleteSchedules()V

    .line 297
    iget-object v0, p2, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object v0, v0, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->deadlines:Ljava/util/List;

    .line 298
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;

    .line 300
    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/VehicleModel;->updateSchedule(Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;)V

    goto :goto_0

    .line 305
    :cond_3
    iget-object p2, p2, Lcom/texa/careapp/networking/response/VehicleResponse;->vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;

    iget-object p2, p2, Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;->thresholds:Ljava/util/HashMap;

    if-eqz p2, :cond_5

    .line 307
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;

    .line 310
    :try_start_0
    invoke-static {v1}, Lcom/texa/careapp/model/ThresholdModel$Type;->getValueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v1

    .line 311
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel;->isSyncNeeded()Z

    move-result v3

    if-nez v3, :cond_4

    .line 315
    iget-object v3, v2, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;->date:Ljava/util/Date;

    invoke-virtual {v1, v3}, Lcom/texa/careapp/model/ThresholdModel;->setDate(Ljava/util/Date;)V

    .line 316
    iget-object v2, v2, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;->odometer:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/ThresholdModel;->setOdometer(Ljava/lang/Integer;)V

    .line 317
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "threshold type not found"

    .line 320
    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 325
    :cond_5
    iget-object p2, p0, Lcom/texa/careapp/utils/VehicleDataManager;->mVehicleModelPublishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p2, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 327
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 249
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "vehicle id mismatch!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
