.class public Lcom/texa/careapp/model/ScheduleDataManager;
.super Ljava/lang/Object;
.source "ScheduleDataManager.java"


# static fields
.field public static final SYNC_THRESHOLDS_TO_SERVER_DISPOSABLE_KEY:Ljava/lang/String; = "SYNC_THRESHOLDS_TO_SERVER_DISPOSABLE_KEY"

.field public static final SYNC_USER_TO_SERVER_DISPOSABLE_KEY:Ljava/lang/String; = "SYNC_USER_TO_SERVER_DISPOSABLE_KEY"

.field private static final TAG:Ljava/lang/String; = "ScheduleDataManager"

.field public static final UPDATE_VEHICLE_DISPSABLE_KEY:Ljava/lang/String; = "UPDATE_VEHICLE_DISPSABLE_KEY"

.field private static final schemaVersion:I = 0x2


# instance fields
.field private mApplication:Lcom/texa/careapp/CareApplication;

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

.field private mEventBus:Lorg/greenrobot/eventbus/EventBus;

.field private mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

.field private mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

.field private mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mDisposableHashMap:Ljava/util/HashMap;

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 66
    iput-object p2, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    .line 67
    iput-object p3, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mApplication:Lcom/texa/careapp/CareApplication;

    .line 68
    iput-object p4, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 69
    iput-object p5, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method private convertScheduleInThreshold(Lcom/texa/careapp/model/ScheduleType;Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/model/ThresholdModel;
    .locals 2

    .line 187
    sget-object v0, Lcom/texa/careapp/model/ScheduleDataManager$1;->$SwitchMap$com$texa$careapp$model$ScheduleType:[I

    invoke-virtual {p1}, Lcom/texa/careapp/model/ScheduleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 193
    sget-object v0, Lcom/texa/careapp/Constants;->CONVERSION_SCHEDULE_THRESHOLD:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 194
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object p1

    return-object p1

    .line 189
    :cond_0
    new-instance p1, Lcom/texa/careapp/model/ThresholdModel;

    invoke-direct {p1}, Lcom/texa/careapp/model/ThresholdModel;-><init>()V

    .line 190
    sget-object p2, Lcom/texa/careapp/model/ThresholdModel$Type;->LICENCE:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/ThresholdModel;->setType(Lcom/texa/careapp/model/ThresholdModel$Type;)V

    return-object p1
.end method

.method private deleteTyreSwapSchedule(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 4

    .line 89
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_SWAP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ThresholdModel;->setOdometer(Ljava/lang/Integer;)V

    .line 91
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->TYRES_FITTING:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v1}, Lcom/texa/careapp/model/ThresholdModel;->setOdometer(Ljava/lang/Integer;)V

    .line 95
    :try_start_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->saveForSync()V

    .line 96
    invoke-virtual {v2}, Lcom/texa/careapp/model/ThresholdModel;->saveForSync()V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUnsyncedThresholds()Lcom/texa/careapp/model/ThresholdModelList;

    move-result-object v0

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/model/ScheduleDataManager;->syncThresholdsToServer(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ThresholdModelList;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not save threshold from database. ThresholdType = TYRES_SWAP. ThresholdType = TYRES_FITTING."

    .line 98
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mApplication:Lcom/texa/careapp/CareApplication;

    const v0, 0x7f110a24

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private markThresholdsAsSynced(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;)V"
        }
    .end annotation

    .line 327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ThresholdModel;

    .line 329
    :try_start_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->markAsSynced()V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 331
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Could not save threshold from database. ThresholdType = %s"

    invoke-static {v1, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static markUserAsSynced(Lcom/texa/careapp/model/UserModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/UserModel;->setSyncNeeded(Z)V

    .line 322
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 323
    sget-object v0, Lcom/texa/careapp/model/ScheduleDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marked parameter as synced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;Ljava/util/Date;Ljava/lang/Integer;)Z
    .locals 1

    .line 120
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object p1

    .line 121
    sget-object v0, Lcom/texa/careapp/model/ScheduleType;->TYRES_SWAP:Lcom/texa/careapp/model/ScheduleType;

    if-eq p1, v0, :cond_0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/model/ScheduleDataManager;->convertScheduleInThreshold(Lcom/texa/careapp/model/ScheduleType;Lcom/texa/careapp/model/VehicleModel;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/texa/careapp/model/ScheduleDataManager;->setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/lang/Integer;Ljava/util/Date;)V

    const/4 p1, 0x0

    return p1

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need multiple Thresholds for set this schedule"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private syncThresholdsToServerWithUpdateVehicle(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ThresholdModelList;)V
    .locals 13

    .line 238
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getRegistrationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 239
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 240
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 242
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 244
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 249
    :goto_1
    new-instance v0, Lcom/texa/careapp/model/VehicleModelUpdateEntity;

    .line 250
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->formatModel()Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getNation()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 254
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getColor()Ljava/lang/String;

    move-result-object v8

    .line 255
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getTyresTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    .line 257
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getRescueContact()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/texa/careapp/model/VehicleModelUpdateEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;ILjava/lang/String;IZLjava/lang/String;I)V

    .line 259
    iget-object v1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v2, "UPDATE_VEHICLE_DISPSABLE_KEY"

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mDisposableHashMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->updateVehicle(Ljava/lang/String;Lcom/texa/careapp/model/VehicleModelUpdateEntity;)Lio/reactivex/Completable;

    move-result-object v0

    .line 261
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 262
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v3, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, p2}, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/model/ScheduleDataManager;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ThresholdModelList;)V

    new-instance p1, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 263
    invoke-virtual {v0, v3, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 260
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public deleteByType(Lcom/texa/careapp/model/ScheduleType;)V
    .locals 3

    .line 73
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/VehicleScheduleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "type = ?"

    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public deleteSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;)Z
    .locals 2

    .line 77
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ScheduleType;->TYRES_SWAP:Lcom/texa/careapp/model/ScheduleType;

    if-ne v0, v1, :cond_0

    .line 78
    invoke-direct {p0, p2}, Lcom/texa/careapp/model/ScheduleDataManager;->deleteTyreSwapSchedule(Lcom/texa/careapp/model/VehicleModel;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/texa/careapp/model/ScheduleDataManager;->setSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;Ljava/util/Date;Ljava/lang/Integer;)Z

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/UserUpdatedEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/UserUpdatedEvent;-><init>()V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return p1
.end method

.method public getIScheduleModels(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleModel;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/VehicleModel;->getSchedulesForUser(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/IScheduleModel;

    .line 296
    invoke-interface {v2}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ScheduleType;->LICENSE:Lcom/texa/careapp/model/ScheduleType;

    if-ne v2, v3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 301
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->getDriverLicenseExpireDate(Lcom/texa/careapp/model/UserModel;)Lcom/texa/careapp/model/UserScheduleModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 303
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public synthetic lambda$syncThresholdsToServer$2$com-texa-careapp-model-ScheduleDataManager(Lcom/texa/careapp/model/ThresholdModelList;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1}, Lcom/texa/careapp/model/ScheduleDataManager;->markThresholdsAsSynced(Ljava/util/List;)V

    .line 227
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/utils/VehicleObserver;->forceVehicleUpdateFromServer(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$syncThresholdsToServer$3$com-texa-careapp-model-ScheduleDataManager(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "thresholds sync error"

    .line 229
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 231
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110a25

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$syncThresholdsToServerWithUpdateVehicle$4$com-texa-careapp-model-ScheduleDataManager(Lcom/texa/careapp/model/ThresholdModelList;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1}, Lcom/texa/careapp/model/ScheduleDataManager;->markThresholdsAsSynced(Ljava/util/List;)V

    .line 269
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/utils/VehicleObserver;->forceVehicleUpdateFromServer(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$syncThresholdsToServerWithUpdateVehicle$5$com-texa-careapp-model-ScheduleDataManager(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "thresholds sync error"

    .line 272
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110a25

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$syncThresholdsToServerWithUpdateVehicle$6$com-texa-careapp-model-ScheduleDataManager(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ThresholdModelList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->putThresholds(Ljava/lang/String;Lcom/texa/careapp/model/ThresholdModelList;)Lio/reactivex/Completable;

    move-result-object v0

    .line 264
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 265
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/model/ScheduleDataManager;Lcom/texa/careapp/model/ThresholdModelList;Lcom/texa/careapp/model/VehicleModel;)V

    new-instance p1, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 266
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$syncThresholdsToServerWithUpdateVehicle$7$com-texa-careapp-model-ScheduleDataManager(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "thresholds sync error"

    .line 277
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 279
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110a25

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$syncUserToServer$0$com-texa-careapp-model-ScheduleDataManager(Lcom/texa/careapp/model/UserModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    :try_start_0
    invoke-static {p1}, Lcom/texa/careapp/model/ScheduleDataManager;->markUserAsSynced(Lcom/texa/careapp/model/UserModel;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    .line 211
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/UserUpdatedEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/UserUpdatedEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$syncUserToServer$1$com-texa-careapp-model-ScheduleDataManager(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "user sync error"

    .line 213
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110a25

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public setSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;Ljava/lang/Integer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/texa/careapp/model/ScheduleDataManager;->setSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;Ljava/util/Date;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public setSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;Ljava/util/Date;)Z
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/texa/careapp/model/ScheduleDataManager;->setSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;Ljava/util/Date;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/texa/careapp/model/ScheduleDataManager;->setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/lang/Integer;Ljava/util/Date;)V

    return-void
.end method

.method setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/lang/Integer;Ljava/util/Date;)V
    .locals 7

    .line 141
    sget-object v0, Lcom/texa/careapp/model/ScheduleDataManager$1;->$SwitchMap$com$texa$careapp$model$ThresholdModel$Type:[I

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/ThresholdModel$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    const v3, 0x7f110a24

    const-string v4, "Could not save threshold from database. ThresholdType = %s"

    const-string v5, "Threshold saved: %s"

    const/4 v6, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 164
    invoke-virtual {p1, p4}, Lcom/texa/careapp/model/ThresholdModel;->setDate(Ljava/util/Date;)V

    .line 165
    invoke-virtual {p1, p3}, Lcom/texa/careapp/model/ThresholdModel;->setOdometer(Ljava/lang/Integer;)V

    .line 167
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->saveForSync()V

    new-array p3, v1, [Ljava/lang/Object;

    .line 168
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v6

    invoke-static {v5, p3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    .line 176
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getUnsyncedThresholds()Lcom/texa/careapp/model/ThresholdModelList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getUnsyncedThresholds()Lcom/texa/careapp/model/ThresholdModelList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModelList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 177
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getUnsyncedThresholds()Lcom/texa/careapp/model/ThresholdModelList;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/texa/careapp/model/ScheduleDataManager;->syncThresholdsToServer(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ThresholdModelList;)V

    goto :goto_0

    :catch_0
    move-exception p2

    .line 170
    iget-object p3, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p4, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {p4}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {p3, p4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    new-array p3, v1, [Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object p1

    aput-object p1, p3, v6

    invoke-static {p2, v4, p3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 149
    :cond_0
    invoke-virtual {p1, p4}, Lcom/texa/careapp/model/ThresholdModel;->setDate(Ljava/util/Date;)V

    .line 150
    invoke-virtual {p1, p3}, Lcom/texa/careapp/model/ThresholdModel;->setOdometer(Ljava/lang/Integer;)V

    .line 152
    :try_start_1
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->saveForSync()V

    new-array p3, v1, [Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v6

    invoke-static {v5, p3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getUnsyncedThresholds()Lcom/texa/careapp/model/ThresholdModelList;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/texa/careapp/model/ScheduleDataManager;->syncThresholdsToServerWithUpdateVehicle(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ThresholdModelList;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 155
    iget-object p3, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p4, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {p4}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {p3, p4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    new-array p3, v1, [Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object p1

    aput-object p1, p3, v6

    invoke-static {p2, v4, p3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    .line 144
    invoke-virtual {p1, p4}, Lcom/texa/careapp/model/UserModel;->setLicenseExpireDate(Ljava/util/Date;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/ScheduleDataManager;->syncUserToServer(Lcom/texa/careapp/model/UserModel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/util/Date;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/texa/careapp/model/ScheduleDataManager;->setScheduleFromThreshold(Lcom/texa/careapp/model/ThresholdModel;Lcom/texa/careapp/model/VehicleModel;Ljava/lang/Integer;Ljava/util/Date;)V

    return-void
.end method

.method syncThresholdsToServer(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/ThresholdModelList;)V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v1, "SYNC_THRESHOLDS_TO_SERVER_DISPOSABLE_KEY"

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mDisposableHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->putThresholds(Ljava/lang/String;Lcom/texa/careapp/model/ThresholdModelList;)Lio/reactivex/Completable;

    move-result-object v2

    .line 222
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    .line 223
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, p1}, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/model/ScheduleDataManager;Lcom/texa/careapp/model/ThresholdModelList;Lcom/texa/careapp/model/VehicleModel;)V

    new-instance p1, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 224
    invoke-virtual {v2, v3, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 221
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method syncUserToServer(Lcom/texa/careapp/model/UserModel;)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v1, "SYNC_USER_TO_SERVER_DISPOSABLE_KEY"

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mDisposableHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/careapp/model/ScheduleDataManager;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v2, p1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->putUserData(Lcom/texa/careapp/model/UserModel;)Lio/reactivex/Completable;

    move-result-object v2

    .line 203
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    .line 204
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/model/ScheduleDataManager;Lcom/texa/careapp/model/UserModel;)V

    new-instance p1, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 205
    invoke-virtual {v2, v3, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 202
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
