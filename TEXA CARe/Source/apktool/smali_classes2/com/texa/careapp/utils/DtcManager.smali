.class public Lcom/texa/careapp/utils/DtcManager;
.super Ljava/lang/Object;
.source "DtcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/DtcManager$DTCScanStatus;
    }
.end annotation


# static fields
.field static final DTC_SCAN_STATUS_IDLE:I = 0x1

.field static final DTC_SCAN_STATUS_NOT_INITIALISED:I = 0x0

.field static final DTC_SCAN_STATUS_RUNNING:I = 0x2


# instance fields
.field private accessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private dtcResolutionIntegrator:Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

.field private featureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private final mAccessoryListener:Ljava/beans/PropertyChangeListener;

.field mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

.field private mDTCScanStatus:I

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSerialNumberDisposable:Lio/reactivex/disposables/Disposable;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private profile:Lcom/texa/carelib/profile/Profile;

.field private vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

.field private vehicleTroubles:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;


# direct methods
.method public static synthetic $r8$lambda$cFX1pHze35OStGg1NZdPgztRFhI(Lcom/texa/careapp/utils/DtcManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/DtcManager;->initializeDTCResolutionIntegrator(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/CareApplication;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lcom/texa/careapp/utils/DtcManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/DtcManager$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/utils/DtcManager;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->mAccessoryListener:Ljava/beans/PropertyChangeListener;

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/utils/DtcManager;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lcom/texa/careapp/utils/DtcManager;->mDTCScanStatus:I

    .line 94
    iput-object p3, p0, Lcom/texa/careapp/utils/DtcManager;->profile:Lcom/texa/carelib/profile/Profile;

    .line 95
    iput-object p4, p0, Lcom/texa/careapp/utils/DtcManager;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 96
    iput-object p5, p0, Lcom/texa/careapp/utils/DtcManager;->featureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    .line 97
    iput-object p6, p0, Lcom/texa/careapp/utils/DtcManager;->vehicleTroubles:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    .line 98
    iput-object p7, p0, Lcom/texa/careapp/utils/DtcManager;->dtcResolutionIntegrator:Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    .line 99
    iput-object p8, p0, Lcom/texa/careapp/utils/DtcManager;->vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 101
    invoke-virtual {p2}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/utils/DtcManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/utils/DtcManager;)Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/texa/careapp/utils/DtcManager;->vehicleTroubles:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    return-object p0
.end method

.method private executeDtcScanIfPossible()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->validatePreconditions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->unregisterAccessoryListeners()V

    const/4 v0, 0x1

    .line 192
    iget v1, p0, Lcom/texa/careapp/utils/DtcManager;->mDTCScanStatus:I

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->executeDtcScan()V

    :cond_0
    return-void
.end method

.method private initializeDTCResolutionIntegrator(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Initialising DTCResolutionIntegrator for CARe: %s"

    .line 157
    invoke-static {v1, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->dtcResolutionIntegrator:Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->setHardwareID(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    .line 159
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->onDTCResolutionIntegratorInitialized()V

    return-void
.end method

.method static synthetic lambda$initializeDTCResolutionIntegrator$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error initializing dtc resolution integrator"

    .line 141
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private registerAccessoryListeners()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/utils/DtcManager;->mAccessoryListener:Ljava/beans/PropertyChangeListener;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_IS_AUTHENTICATED"

    invoke-interface {v0, v2, v1}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 258
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/utils/DtcManager;->mAccessoryListener:Ljava/beans/PropertyChangeListener;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    invoke-interface {v0, v2, v1}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method


# virtual methods
.method executeDtcScan()V
    .locals 3

    .line 207
    iget v0, p0, Lcom/texa/careapp/utils/DtcManager;->mDTCScanStatus:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 214
    :try_start_0
    new-instance v1, Lcom/texa/careapp/utils/DtcManager$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/utils/DtcManager$1;-><init>(Lcom/texa/careapp/utils/DtcManager;)V

    .line 228
    iget-object v2, p0, Lcom/texa/careapp/utils/DtcManager;->vehicleTroubles:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    invoke-interface {v2, v1}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->addVehicleTroublesListener(Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;)Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesListener;

    .line 229
    iget-object v1, p0, Lcom/texa/careapp/utils/DtcManager;->vehicleTroubles:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    invoke-interface {v1}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->loadDTCs()V

    const/4 v1, 0x2

    .line 230
    invoke-virtual {p0, v1}, Lcom/texa/careapp/utils/DtcManager;->setDTCScanStatus(I)Lcom/texa/careapp/utils/DtcManager;

    const-string v1, "DTC SCAN: STARTED."

    new-array v2, v0, [Ljava/lang/Object;

    .line 231
    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 233
    invoke-virtual {v1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DTC SCAN: START ERROR."

    .line 234
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not perform DTC scan status. Object is not yet initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAccessoryListener()Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->mAccessoryListener:Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method getSerialNumberSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->mSerialNumberDisposable:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method initializeDTCResolutionIntegrator()V
    .locals 3

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/texa/careapp/utils/DtcManager;->setDTCScanStatus(I)Lcom/texa/careapp/utils/DtcManager;

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v0}, Lcom/texa/careapp/carelib/ICareObserver;->observeAccessorySerialNumber()Lio/reactivex/Observable;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/texa/careapp/utils/DtcManager;->mSerialNumberDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 140
    new-instance v1, Lcom/texa/careapp/utils/DtcManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/utils/DtcManager$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/utils/DtcManager;)V

    sget-object v2, Lcom/texa/careapp/utils/DtcManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/utils/DtcManager$$ExternalSyntheticLambda1;

    .line 141
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->mSerialNumberDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-careapp-utils-DtcManager(Ljava/beans/PropertyChangeEvent;)V
    .locals 0

    .line 344
    invoke-direct {p0}, Lcom/texa/careapp/utils/DtcManager;->executeDtcScanIfPossible()V

    return-void
.end method

.method public onActiveLampDetected()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/texa/careapp/utils/DtcManager;->executeDtcScanIfPossible()V

    return-void
.end method

.method public onCareConnected()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->initializeDTCResolutionIntegrator()V

    return-void
.end method

.method public onCareDisconnected()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->mSerialNumberDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/texa/careapp/utils/DtcManager;->setDTCScanStatus(I)Lcom/texa/careapp/utils/DtcManager;

    .line 117
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->unregisterAccessoryListeners()V

    return-void
.end method

.method onDTCResolutionIntegratorInitialized()V
    .locals 4

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, v0}, Lcom/texa/careapp/utils/DtcManager;->setDTCScanStatus(I)Lcom/texa/careapp/utils/DtcManager;

    .line 169
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->validatePreconditions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    if-eqz v0, :cond_0

    .line 171
    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->DTCS_DETECTED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    const-string v3, "Waiting for DTCs"

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/utils/DtcManager;->executeDtcScanIfPossible()V

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/utils/DtcManager;->registerAccessoryListeners()V

    :goto_0
    return-void
.end method

.method onDTCTReadError(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 300
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DTC SCAN: FAILED(%s)"

    invoke-static {p1, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p0, v0}, Lcom/texa/careapp/utils/DtcManager;->setDTCScanStatus(I)Lcom/texa/careapp/utils/DtcManager;

    return-void
.end method

.method onDTCTReadSuccess(Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/texa/careapp/utils/DtcManager;->vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p1, "VehicleModel is null, DTCs won\'t be notified."

    new-array v2, v0, [Ljava/lang/Object;

    .line 314
    invoke-static {p1, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-virtual {p0, v1}, Lcom/texa/careapp/utils/DtcManager;->setDTCScanStatus(I)Lcom/texa/careapp/utils/DtcManager;

    .line 334
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->scheduleDTCSyncTask()V

    return-void

    .line 318
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->getDTCs()Ljava/util/List;

    move-result-object p1

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/vehicletroubles/DTC;

    .line 321
    invoke-virtual {v5}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 322
    invoke-virtual {v5}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 325
    :cond_2
    iget-object v4, p0, Lcom/texa/careapp/utils/DtcManager;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v5, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->DTCS_DETECTED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v6, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    .line 326
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v4, v5, v6, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 327
    iget-object v3, p0, Lcom/texa/careapp/utils/DtcManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "CARE_ENVIRONMENT"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VIN_MISMATCH_ENVIRONMENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 328
    invoke-virtual {v2, p1}, Lcom/texa/careapp/model/VehicleModel;->updateDtcList(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "Could not update DTCs in database"

    new-array v0, v0, [Ljava/lang/Object;

    .line 331
    invoke-static {p1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/texa/careapp/utils/DtcManager;->setDTCScanStatus(I)Lcom/texa/careapp/utils/DtcManager;

    .line 334
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->scheduleDTCSyncTask()V

    return-void

    .line 333
    :goto_2
    invoke-virtual {p0, v1}, Lcom/texa/careapp/utils/DtcManager;->setDTCScanStatus(I)Lcom/texa/careapp/utils/DtcManager;

    .line 334
    invoke-virtual {p0}, Lcom/texa/careapp/utils/DtcManager;->scheduleDTCSyncTask()V

    .line 335
    throw p1
.end method

.method scheduleDTCSyncTask()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleDTCJob()V

    return-void
.end method

.method setDTCScanStatus(I)Lcom/texa/careapp/utils/DtcManager;
    .locals 0

    .line 248
    iput p1, p0, Lcom/texa/careapp/utils/DtcManager;->mDTCScanStatus:I

    return-object p0
.end method

.method unregisterAccessoryListeners()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/utils/DtcManager;->mAccessoryListener:Ljava/beans/PropertyChangeListener;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_IS_AUTHENTICATED"

    invoke-interface {v0, v2, v1}, Lcom/texa/carelib/care/accessory/Accessory;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    .line 267
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->accessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/utils/DtcManager;->mAccessoryListener:Ljava/beans/PropertyChangeListener;

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    invoke-interface {v0, v2, v1}, Lcom/texa/carelib/care/accessory/Accessory;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method validatePreconditions()Z
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/texa/careapp/utils/DtcManager;->featureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isDTCReadingAvailable()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 278
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "isDTCReadingAvailable= %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
