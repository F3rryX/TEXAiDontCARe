.class public Lcom/texa/careapp/lamps/LampsManager;
.super Ljava/lang/Object;
.source "LampsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;
    }
.end annotation


# static fields
.field public static final BEGIN_UPDATE_DISPOSABLE_KEY:Ljava/lang/String; = "BEGIN_UPDATE_DISPOSABLE_KEY"

.field static final DELAY_LAMPS_SUBSCRIPTION:J = 0x5L

.field static ENABLED_LAMPS_LIST:[Ljava/lang/Long; = null

.field static FILTER_WHITE_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAMP_FILTER_ENABLED:Z = true

.field private static final LAMP_SUBSCRIPTION_INTERVAL:J = 0x3a98L

.field static final RPM_THRESHOLD:S = 0x1f4s

.field static final SPEED_THRESHOLD:S = 0x3s


# instance fields
.field private lampListBeforeUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation
.end field

.field private lampsCheckDisposable:Lio/reactivex/disposables/Disposable;

.field private lampsQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/utils/Timestamped<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mCareWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

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

.field private mDtcManager:Lcom/texa/careapp/utils/DtcManager;

.field private mLampListSizeSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLampListSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleListener:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

.field private mVehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

.field private rpm:Ljava/lang/Double;

.field private speed:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Long;

    .line 103
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->LOW_FUEL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 104
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->HEADLAMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 105
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKE_PAD_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 106
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 107
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->BRAKEFLUID_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 108
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_ENGINE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 109
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->STEERING_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 110
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->ALTERNATOR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 111
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->ABS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 112
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->AIRBAG_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 113
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->ESP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 114
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->IMMO_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 115
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->PREHEAT_ERR_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 116
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->COOLANT_LOW_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 117
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->WARN_TEMP_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 118
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->OIL_LPRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 119
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->TIRE_PRESS_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 120
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->WASHFLUID_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 121
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->WATER_IN_FUEL_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 122
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Enum;->SERVICE_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    .line 123
    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/texa/careapp/lamps/LampsManager;->ENABLED_LAMPS_LIST:[Ljava/lang/Long;

    .line 130
    sget-object v0, Lcom/texa/carelib/diagresources/DataID$Enum;->MIL_LAMP_STATUS:Lcom/texa/carelib/diagresources/DataID$Enum;

    invoke-virtual {v0}, Lcom/texa/carelib/diagresources/DataID$Enum;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/lamps/LampsManager;->FILTER_WHITE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mLampListSubject:Lio/reactivex/subjects/PublishSubject;

    .line 139
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mLampListSizeSubject:Lio/reactivex/subjects/PublishSubject;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mDisposableHashMap:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->lampsQueue:Ljava/util/List;

    .line 171
    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/texa/careapp/lamps/LampsManager;->mDtcManager:Lcom/texa/careapp/utils/DtcManager;

    .line 173
    iput-object p3, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 175
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/lamps/LampsManager;)V

    return-void
.end method

.method static synthetic lambda$beginUpdateValuesDelayed$3(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$filterLampUpdate$1(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "lampsCheckSubscription error"

    .line 241
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private notifyLamps(Lcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/utils/Timestamped<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/careapp/model/VehicleModel;",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ")V"
        }
    .end annotation

    .line 276
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/texa/careapp/lamps/LampsManager;->lampListBeforeUpdate:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 279
    iget-object v1, p0, Lcom/texa/careapp/lamps/LampsManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->LAMPS_ON_DETECTED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lampType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p1}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " rpm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/texa/careapp/lamps/LampsManager;->rpm:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " speed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/texa/careapp/lamps/LampsManager;->speed:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {v1, v2, v3, v4}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 283
    :cond_0
    iput-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->lampListBeforeUpdate:Ljava/util/List;

    .line 286
    :try_start_0
    invoke-virtual {p1}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p2, v1}, Lcom/texa/careapp/model/VehicleModel;->getLampById(Ljava/lang/Long;)Lcom/texa/careapp/app/errorsDTC/LampStatus;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 288
    invoke-virtual {p2, v1}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->setFiltered(Z)V

    .line 289
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error updating lamp"

    .line 292
    invoke-static {p2, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/texa/careapp/lamps/LampsManager;->mLampListSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 296
    iget-object p2, p0, Lcom/texa/careapp/lamps/LampsManager;->mLampListSizeSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p1}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p3, p1, p2}, Lcom/texa/careapp/utils/Utils;->isActive(Lcom/texa/carelib/care/vehicle/Vehicle;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 299
    iget-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object p2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->DTCS_DETECTED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object p3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    const-string v0, "Lamp on, waiting for DTCs"

    invoke-virtual {p1, p2, p3, v0}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 302
    iget-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->mDtcManager:Lcom/texa/careapp/utils/DtcManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/DtcManager;->onActiveLampDetected()V

    :cond_2
    return-void
.end method


# virtual methods
.method beginUpdateValuesDelayed(Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V
    .locals 13

    move-object v6, p0

    .line 385
    iget-object v0, v6, Lcom/texa/careapp/lamps/LampsManager;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v7, "BEGIN_UPDATE_DISPOSABLE_KEY"

    invoke-static {v0, v7}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 386
    iget-object v8, v6, Lcom/texa/careapp/lamps/LampsManager;->mDisposableHashMap:Ljava/util/HashMap;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v9

    sget-object v10, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda3;

    new-instance v11, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V

    new-instance v12, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;

    move-object v0, v12

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V

    .line 387
    invoke-virtual {v9, v10, v11, v12}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 386
    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method filterLampUpdate(Ljava/util/List;Lcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/careapp/utils/Timestamped<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/careapp/model/VehicleModel;",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ")V"
        }
    .end annotation

    .line 207
    invoke-virtual {p2}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 209
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 210
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "Flag %d: flag is white listed. No filter is needed."

    invoke-static {v0, p1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/texa/careapp/lamps/LampsManager;->onLampsUpdated(ZLcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    .line 214
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v2, "Flag %d: BEGIN FILTER"

    invoke-static {v2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->lampsCheckDisposable:Lio/reactivex/disposables/Disposable;

    if-nez p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->lampsQueue:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p1, v1, [Ljava/lang/Object;

    .line 220
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Flag %d: Waiting for engine RPM and vehicle speed values..."

    invoke-static {p2, p1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {p1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeEngineRpm()Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleParametersManager:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    .line 223
    invoke-virtual {p2}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeVehicleSpeed()Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/lamps/LampsManager;JLcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    .line 222
    invoke-static {p1, p2, v0}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda4;

    .line 241
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->lampsCheckDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->lampsQueue:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected getNotification(Ljava/util/List;)Landroid/app/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->buildLampsNotification(Landroid/content/Context;Ljava/util/List;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method getVehicleListener()Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleListener:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    return-object v0
.end method

.method handleLampsUpdate(ZLcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/texa/careapp/utils/Timestamped<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/careapp/model/VehicleModel;",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 189
    sget-object p1, Lcom/texa/careapp/lamps/LampsManager;->FILTER_WHITE_LIST:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/careapp/lamps/LampsManager;->filterLampUpdate(Ljava/util/List;Lcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 191
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/careapp/lamps/LampsManager;->onLampsUpdated(ZLcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$beginUpdateValuesDelayed$4$com-texa-careapp-lamps-LampsManager(Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error beginUpdateValuesDelayed"

    .line 389
    invoke-static {p5, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 391
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/careapp/lamps/LampsManager;->beginUpdateValuesDelayed(Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public synthetic lambda$beginUpdateValuesDelayed$5$com-texa-careapp-lamps-LampsManager(Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    invoke-interface {p1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    sget-object v2, Lcom/texa/careapp/lamps/LampsManager;->ENABLED_LAMPS_LIST:[Ljava/lang/Long;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 396
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 397
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 400
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v2, 0x3a98

    .line 402
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-interface {p1, v2, v3, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->beginUpdateValues(J[Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Error Subscribing lamps"

    .line 404
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 406
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/careapp/lamps/LampsManager;->beginUpdateValuesDelayed(Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$filterLampUpdate$0$com-texa-careapp-lamps-LampsManager(JLcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/careapp/model/VehicleParam;Lcom/texa/careapp/model/VehicleParam;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    invoke-virtual {p5}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p5

    iput-object p5, p0, Lcom/texa/careapp/lamps/LampsManager;->rpm:Ljava/lang/Double;

    .line 225
    invoke-virtual {p6}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p5

    iput-object p5, p0, Lcom/texa/careapp/lamps/LampsManager;->speed:Ljava/lang/Double;

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    .line 226
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    const/4 v0, 0x0

    aput-object p6, p5, v0

    iget-object p6, p0, Lcom/texa/careapp/lamps/LampsManager;->rpm:Ljava/lang/Double;

    const/4 v1, 0x1

    aput-object p6, p5, v1

    iget-object p6, p0, Lcom/texa/careapp/lamps/LampsManager;->speed:Ljava/lang/Double;

    const/4 v2, 0x2

    aput-object p6, p5, v2

    const-string p6, "Flag %1$d: [rpm=%2$s,speed=%3$s]"

    invoke-static {p6, p5}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object p5, p0, Lcom/texa/careapp/lamps/LampsManager;->rpm:Ljava/lang/Double;

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    const-wide v2, 0x407f400000000000L    # 500.0

    cmpl-double v4, p5, v2

    if-lez v4, :cond_1

    iget-object p5, p0, Lcom/texa/careapp/lamps/LampsManager;->speed:Ljava/lang/Double;

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p5

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v4, p5, v2

    if-lez v4, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Flag: FILTER RESULT -> STATUS ACTIVE"

    .line 229
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->lampsQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/utils/Timestamped;

    .line 231
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/texa/careapp/lamps/LampsManager;->onLampsUpdated(ZLcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->lampsQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    new-array p3, v0, [Ljava/lang/Object;

    const-string p5, "Flag: At least one value is under threshold. Reading again the flag status."

    .line 235
    invoke-static {p5, p3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p3, v1, [Ljava/lang/Long;

    .line 236
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-interface {p4, p3}, Lcom/texa/carelib/care/vehicle/Vehicle;->loadValues([Ljava/lang/Long;)V

    .line 239
    :goto_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onLampsUpdated$2$com-texa-careapp-lamps-LampsManager(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 2

    .line 266
    invoke-virtual {p2}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/VehicleModel;->getLampById(Ljava/lang/Long;)Lcom/texa/careapp/app/errorsDTC/LampStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->isFiltered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, p2, p1, p3}, Lcom/texa/careapp/lamps/LampsManager;->notifyLamps(Lcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    :cond_0
    return-void
.end method

.method public observeActiveLamps()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;>;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mLampListSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->hide()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeActiveLampsSize()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mLampListSizeSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method onLampsUpdated(ZLcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/texa/careapp/utils/Timestamped<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/careapp/model/VehicleModel;",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 254
    invoke-virtual {p2}, Lcom/texa/careapp/utils/Timestamped;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onActiveLampDetected: %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p3, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string/jumbo p2, "vehicleModel is null!!"

    .line 257
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CARE_ENVIRONMENT"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIN_MISMATCH_ENVIRONMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p3, p1, p2, p4}, Lcom/texa/careapp/model/VehicleModel;->updateLamp(ZLcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;)Lcom/texa/careapp/app/errorsDTC/LampStatus;

    .line 263
    :cond_1
    invoke-virtual {p2}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p3, v0}, Lcom/texa/careapp/model/VehicleModel;->getLampById(Ljava/lang/Long;)Lcom/texa/careapp/app/errorsDTC/LampStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/texa/careapp/app/errorsDTC/LampStatus;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 265
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/texa/careapp/lamps/LampsManager$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    const-wide/16 p2, 0x4e20

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 271
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lcom/texa/careapp/lamps/LampsManager;->notifyLamps(Lcom/texa/careapp/utils/Timestamped;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    :goto_0
    return-void
.end method

.method registerVehicleListener(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleListener:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    invoke-direct {v0, p0, p2, p1}, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;-><init>(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/careapp/model/VehicleModel;)V

    iput-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleListener:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    .line 433
    invoke-interface {p2, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->addVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)Lcom/texa/carelib/care/vehicle/VehicleListener;

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;->getVehicleModel()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleListener:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    invoke-interface {p2, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->removeVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)V

    .line 436
    new-instance v0, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    invoke-direct {v0, p0, p2, p1}, Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;-><init>(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/careapp/model/VehicleModel;)V

    iput-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleListener:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    .line 437
    invoke-interface {p2, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->addVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)Lcom/texa/carelib/care/vehicle/VehicleListener;

    :cond_1
    :goto_0
    return-void
.end method

.method public scheduleLampSyncTask()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mCareWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleLampManager()V

    return-void
.end method

.method public start(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "vehicleModel is null!"

    .line 362
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->lampListBeforeUpdate:Ljava/util/List;

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/lamps/LampsManager;->registerVehicleListener(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    const-wide/16 v0, 0x5

    .line 371
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/texa/careapp/lamps/LampsManager;->beginUpdateValuesDelayed(Lcom/texa/carelib/care/vehicle/Vehicle;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public stop(Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 1

    .line 413
    invoke-virtual {p0, p1}, Lcom/texa/careapp/lamps/LampsManager;->unregisterVehicleListener(Lcom/texa/carelib/care/vehicle/Vehicle;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "observeLamps unsubscribe"

    .line 415
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->lampsCheckDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    const/4 p1, 0x0

    .line 418
    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->lampsCheckDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method unregisterVehicleListener(Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleListener:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    if-eqz v0, :cond_0

    .line 449
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->removeVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)V

    const/4 p1, 0x0

    .line 450
    iput-object p1, p0, Lcom/texa/careapp/lamps/LampsManager;->mVehicleListener:Lcom/texa/careapp/lamps/LampsManager$LampsVehicleListener;

    :cond_0
    return-void
.end method

.method public updateActiveLampNotification(Landroid/app/NotificationManager;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;)V"
        }
    .end annotation

    .line 335
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0, p2}, Lcom/texa/careapp/lamps/LampsManager;->getNotification(Ljava/util/List;)Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method
