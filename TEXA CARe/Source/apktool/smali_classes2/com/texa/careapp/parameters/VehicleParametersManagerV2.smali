.class public Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
.super Ljava/lang/Object;
.source "VehicleParametersManagerV2.java"


# static fields
.field static final HIGH_FREQ_TIME_IN_MILLIS:J = 0x3e8L

.field static final LOW_FREQ_TIME_IN_MILLIS:J = 0x7530L

.field static final MID_FREQ_TIME_IN_MILLIS:J = 0x1388L

.field static final RPM_AND_SPEED:[Ljava/lang/Long;


# instance fields
.field private mAllParamsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

.field private mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

.field private mCurrentUpdateFrequency:J

.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mParamsForegroundSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/texa/careapp/model/VehicleParam;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

.field private mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

.field private parameterChangedDisposable:Lio/reactivex/disposables/Disposable;

.field private rxVehicle:Lcom/texa/care/eco_driving/RxVehicle;

.field private subscribedParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private supportedParameterDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    .line 47
    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->RPM_AND_SPEED:[Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/care/eco_driving/RxVehicle;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mParamsForegroundSubject:Lio/reactivex/subjects/PublishSubject;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->subscribedParams:Ljava/util/List;

    .line 63
    iput-object p6, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->rxVehicle:Lcom/texa/care/eco_driving/RxVehicle;

    .line 64
    iput-object p3, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    .line 66
    iput-object p2, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    .line 67
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 68
    sget-object p2, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    sget-object p2, Lcom/texa/careapp/Constants;->CARE_PARAMETERS_FOR_MECHANIC:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    sget-object p2, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {p2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72
    sget-object p2, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {p2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mAllParamsArray:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-wide/16 p1, 0x7530

    .line 76
    iput-wide p1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentUpdateFrequency:J

    .line 78
    iput-object p4, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    .line 79
    iput-object p5, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-void
.end method

.method private static buildVehicleParam(Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/careapp/model/VehicleModel;J)Lcom/texa/careapp/model/VehicleParam;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/utils/Timestamped<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            "Lcom/texa/careapp/model/VehicleModel;",
            "J)",
            "Lcom/texa/careapp/model/VehicleParam;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/texa/careapp/model/VehicleModel;->getOrAddParameter(J)Lcom/texa/careapp/model/VehicleParam;

    move-result-object p2

    .line 88
    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/texa/careapp/model/VehicleParam;->update(Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;J)Lcom/texa/careapp/model/VehicleParam;

    const/4 p0, 0x1

    .line 89
    invoke-virtual {p2, p0}, Lcom/texa/careapp/model/VehicleParam;->setSyncNeeded(Z)V

    .line 90
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-object p2

    :cond_0
    const-string p2, "no vehicle model was found in db. Parameter will be displayed to user but not persisted!"

    new-array v2, v1, [Ljava/lang/Object;

    .line 94
    invoke-static {p2, v2}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance p2, Lcom/texa/careapp/model/VehicleParam;

    invoke-direct {p2}, Lcom/texa/careapp/model/VehicleParam;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/texa/careapp/utils/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/texa/careapp/model/VehicleParam;->setDataId(J)V

    .line 97
    invoke-virtual {p2, p0, p1, p3, p4}, Lcom/texa/careapp/model/VehicleParam;->update(Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;J)Lcom/texa/careapp/model/VehicleParam;
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Error meanwhile #buildVehicleParam() (VehicleParam is NULL)"

    .line 104
    invoke-static {p0, p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catch_1
    move-exception p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Could not save parameter model in database."

    .line 101
    invoke-static {p0, p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private disposeVehicleListener()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->parameterChangedDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 161
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->subscribedParams:Ljava/util/List;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isParametersAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->subscribedParams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/Vehicle;->endUpdateValues([Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->subscribedParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private endUpdateValues()V
    .locals 3

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mAllParamsArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/Vehicle;->endUpdateValues([Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 239
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    sget-object v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->RPM_AND_SPEED:[Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/vehicle/Vehicle;->endUpdateValues([Ljava/lang/Long;)V
    :try_end_1
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 241
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private getFrequencyForRpmAndSpeed()J
    .locals 4

    .line 229
    iget-wide v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentUpdateFrequency:J

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$observeEngineRpm$10(Lcom/texa/careapp/model/VehicleParam;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object p0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {p0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$observeEngineTemp$9(Lcom/texa/careapp/model/VehicleParam;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object p0, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_TEMP:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {p0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$observeVehicleSpeed$11(Lcom/texa/careapp/model/VehicleParam;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/texa/careapp/model/VehicleParam;->getDataId()J

    move-result-wide v0

    sget-object p0, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {p0}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onCareConnected$0(Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCareConnected$2([Ljava/lang/Long;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isEmpty([Ljava/lang/Long;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$restartUpdateValues$6(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, " error on restartUpdateValues Observer"

    .line 199
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$restartUpdateValues$8(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error on restartUpdateValues Observer"

    .line 203
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private observeParameter()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->parameterChangedDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->rxVehicle:Lcom/texa/care/eco_driving/RxVehicle;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxVehicle;->observeParameterUpdates()Lio/reactivex/Observable;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    sget-object v2, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;

    .line 150
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->parameterChangedDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onParameterUpdated(Ljava/lang/Long;)V
    .locals 5

    .line 270
    new-instance v0, Lcom/texa/careapp/utils/Timestamped;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lcom/texa/careapp/utils/Timestamped;-><init>(JLjava/lang/Object;)V

    .line 271
    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    .line 272
    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v3}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 271
    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->buildVehicleParam(Lcom/texa/careapp/utils/Timestamped;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/careapp/model/VehicleModel;J)Lcom/texa/careapp/model/VehicleParam;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    sget-object v1, Lcom/texa/careapp/Constants;->CARE_DRIVER_PARAMETERS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParam;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "onNext vehicleParam:  %s"

    invoke-static {v1, p1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object p1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mParamsForegroundSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private restartUpdateValuesInner()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 209
    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mAllParamsArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->toString([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "endUpdateValues:  %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->endUpdateValues()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    iget-wide v4, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentUpdateFrequency:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mAllParamsArray:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->toString([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "endUpdateValues: freq= %s , params= %s"

    .line 212
    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-wide v1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentUpdateFrequency:J

    iget-object v3, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mAllParamsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Long;

    invoke-interface {v0, v1, v2, v3}, Lcom/texa/carelib/care/vehicle/Vehicle;->beginUpdateValues(J[Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 222
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->getFrequencyForRpmAndSpeed()J

    move-result-wide v1

    sget-object v3, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->RPM_AND_SPEED:[Ljava/lang/Long;

    invoke-interface {v0, v1, v2, v3}, Lcom/texa/carelib/care/vehicle/Vehicle;->beginUpdateValues(J[Ljava/lang/Long;)V
    :try_end_1
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 224
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private scheduleParametersSyncTask()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "scheduling parameters sync"

    .line 288
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleParameterSend()V

    return-void
.end method


# virtual methods
.method getAllParamsArray()[Ljava/lang/Long;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mAllParamsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    return-object v0
.end method

.method getCurrentUpdateFrequency()J
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentUpdateFrequency:J

    return-wide v0
.end method

.method public synthetic lambda$observeParameter$5$com-texa-careapp-parameters-VehicleParametersManagerV2(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string/jumbo v2, "updated param:  %s"

    .line 152
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0, v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onParameterUpdated(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCareConnected$1$com-texa-careapp-parameters-VehicleParametersManagerV2(Ljava/util/Set;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mAllParamsArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 120
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mAllParamsArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 125
    iget-object p1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mAllParamsArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Long;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onCareConnected$3$com-texa-careapp-parameters-VehicleParametersManagerV2([Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->getFrequencyForRpmAndSpeed()J

    move-result-wide v1

    sget-object v3, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->RPM_AND_SPEED:[Ljava/lang/Long;

    invoke-interface {v0, v1, v2, v3}, Lcom/texa/carelib/care/vehicle/Vehicle;->beginUpdateValues(J[Ljava/lang/Long;)V

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->subscribedParams:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-wide v1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentUpdateFrequency:J

    invoke-interface {v0, v1, v2, p1}, Lcom/texa/carelib/care/vehicle/Vehicle;->beginUpdateValues(J[Ljava/lang/Long;)V

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->subscribedParams:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 135
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic lambda$onCareConnected$4$com-texa-careapp-parameters-VehicleParametersManagerV2(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->disposeVehicleListener()V

    .line 139
    iget-object p1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    invoke-interface {p1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isParametersAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onCareConnected()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$restartUpdateValues$7$com-texa-careapp-parameters-VehicleParametersManagerV2(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->restartUpdateValuesInner()V

    return-void
.end method

.method public observeEngineRpm()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleParam;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mParamsForegroundSubject:Lio/reactivex/subjects/PublishSubject;

    sget-object v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda10;->INSTANCE:Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda10;

    .line 253
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 254
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeEngineTemp()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleParam;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mParamsForegroundSubject:Lio/reactivex/subjects/PublishSubject;

    sget-object v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda11;->INSTANCE:Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda11;

    .line 247
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 248
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeForegroundParams()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleParam;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mParamsForegroundSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeVehicleSpeed()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleParam;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mParamsForegroundSubject:Lio/reactivex/subjects/PublishSubject;

    sget-object v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda1;

    .line 259
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 260
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->applySchedulers()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public onCareConnected()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    iget-wide v1, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentUpdateFrequency:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "VehicleParametersManagerV2 - onCareConnected, mCurrentupdateFrequency= %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->supportedParameterDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 113
    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->observeParameter()V

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->rxVehicle:Lcom/texa/care/eco_driving/RxVehicle;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxVehicle;->observeSupportedParametersIDs()Lio/reactivex/Observable;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda2;

    .line 116
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 117
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda3;

    .line 127
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    new-instance v2, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 128
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->supportedParameterDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onCareDisconnected()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VehicleParametersManagerV2 - onCareDisconnected"

    .line 175
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->disposeVehicleListener()V

    .line 177
    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->scheduleParametersSyncTask()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->endUpdateValues()V

    .line 265
    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->disposeVehicleListener()V

    return-void
.end method

.method restartUpdateValues()V
    .locals 3

    const/4 v0, 0x1

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda9;->INSTANCE:Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda9;

    .line 198
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    sget-object v2, Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda7;->INSTANCE:Lcom/texa/careapp/parameters/VehicleParametersManagerV2$$ExternalSyntheticLambda7;

    .line 202
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public startHighFreqUpdate()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VehicleParametersManagerV2 - startHighFreqUpdate"

    .line 182
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    .line 184
    iput-wide v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentUpdateFrequency:J

    .line 185
    invoke-virtual {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->restartUpdateValues()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->endUpdateValues()V

    return-void
.end method

.method public stopHighFreqUpdate()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VehicleParametersManagerV2 - stopHighFreqUpdate"

    .line 190
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x7530

    .line 191
    iput-wide v0, p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->mCurrentUpdateFrequency:J

    .line 192
    invoke-virtual {p0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->restartUpdateValues()V

    return-void
.end method
