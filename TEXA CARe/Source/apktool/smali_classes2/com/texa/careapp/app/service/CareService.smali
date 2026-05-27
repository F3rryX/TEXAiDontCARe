.class public Lcom/texa/careapp/app/service/CareService;
.super Lcom/texa/careapp/app/service/RxCareService;
.source "CareService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/texa/care/eco_driving/EcoDrivingCallback;


# static fields
.field public static final CHECK_LOCAL_MISMATCH_DISPOSABLE_KEY:Ljava/lang/String; = "CHECK_LOCAL_MISMATCH_DISPOSABLE_KEY"

.field private static final COMMAND_CONNECT_TO_DONGLE:I = 0x66

.field private static final COMMAND_TRIP_STARTED:I = 0x67

.field public static final ODOMETER_PERIODIC_UPDATE_DISPOSABLE_KEY:Ljava/lang/String; = "ODOMETER_PERIODIC_UPDATE_DISPOSABLE_KEY"

.field private static final SERVICE_COMMAND:Ljava/lang/String; = "SERVICE_COMMAND"

.field private static final TAG:Ljava/lang/String; = "CareService"

.field private static final TRIP_INFO_REQUEST:I = 0x1e


# instance fields
.field protected communication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private ecoDrivingSyncDisposable:Lio/reactivex/disposables/Disposable;

.field handler:Landroid/os/Handler;

.field private haveToNotify:Z

.field private lastStopTimestamp:J

.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

.field protected mAlternatorStaticAnalyzer:Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mAttitude:Lcom/texa/carelib/care/attitude/Attitude;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mBatteryServiceAnalyzer:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCareConfigurationHelper:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCareCrashlyticsHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

.field private mConfDisposable:Lio/reactivex/disposables/Disposable;

.field protected mCrashLogReader:Lcom/texa/careapp/utils/CrashLogReader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCrashlyticsHelper:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDTCResolutionIntegrator:Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

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

.field protected mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mDtcManager:Lcom/texa/careapp/utils/DtcManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLampsManager:Lcom/texa/careapp/lamps/LampsManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLocationTracker:Lcom/texa/careapp/utils/LocationTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mNotificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProfile:Lcom/texa/carelib/profile/Profile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mRxProfile:Lcom/texa/care/eco_driving/RxProfile;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSosPrerequisiteNotificationController:Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSpeaker:Lcom/texa/careapp/tts/Speaker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTexaService:Lcom/texa/carelib/webservices/TexaService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTripDataManager:Lcom/texa/careapp/utils/TripDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTripInfoDisposable:Lio/reactivex/disposables/Disposable;

.field protected mTripLogBook:Lcom/texa/carelib/care/trips/TripLogBook;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mTripLogBookReader:Lcom/texa/careapp/utils/TripLogBookReader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUpdateConfigurationHelper:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUpdateLampsDisposable:Lio/reactivex/disposables/Disposable;

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mWakelockManager:Lcom/texa/careapp/utils/wakelock/WakelockManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected notificationManager:Landroid/app/NotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private profileReadyDisposable:Lio/reactivex/disposables/Disposable;

.field private proximityAlert:Lcom/texa/careapp/app/proximityalert/ProximityAlert;

.field private refreshTokenExpiredDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$6KVpRFiTlyMN_xE1nFgRTLUy5lw(Lcom/texa/careapp/app/service/CareService;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->syncEcoDrivingTrips()V

    return-void
.end method

.method public static synthetic $r8$lambda$drF9NESNdj2rkvIo5DENfme9FnA(Lcom/texa/careapp/app/service/CareService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/service/CareService;->loadTripInfo(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hDLGb5aUfxiT51B4OP8goiPlApg(Lcom/texa/careapp/app/service/CareService;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->saveTripLogBook()V

    return-void
.end method

.method public static synthetic $r8$lambda$nar2iQ7VDzbRilmm4h28Ydkup2Y(Lcom/texa/careapp/app/service/CareService;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->saveProximityAlertPoint()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 147
    invoke-direct {p0}, Lcom/texa/careapp/app/service/RxCareService;-><init>()V

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDisposableHashMap:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    .line 280
    iput-wide v0, p0, Lcom/texa/careapp/app/service/CareService;->lastStopTimestamp:J

    .line 285
    new-instance v0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda22;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    .line 370
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->handler:Landroid/os/Handler;

    .line 372
    new-instance v0, Lcom/texa/careapp/app/service/CareService$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/CareService$1;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method public static buildConnectToDongleIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 434
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/service/CareService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "SERVICE_COMMAND"

    const/16 v1, 0x66

    .line 435
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/service/CareService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static buildTripStartedIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/service/CareService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "SERVICE_COMMAND"

    const/16 v1, 0x67

    .line 441
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private checkForConfigurationUpdates(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 2

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0}, Lcom/texa/carelib/webservices/TexaService;->getVehicleConfigurationInfo()Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/app/service/CareService;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;->loadVehicleConfigurationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 994
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->checkLocalMismatch()V

    .line 995
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 996
    sget-object p1, Lcom/texa/careapp/app/service/CareService;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "Could not check diagnostic configuration status at this moment. loadVehicleConfigurationInfo returns false."

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private checkLocalMismatch()V
    .locals 6

    .line 1022
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v1, "CHECK_LOCAL_MISMATCH_DISPOSABLE_KEY"

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDisposableHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mCareConfigurationHelper:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    invoke-virtual {v2}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->observeConfigurationInfosLocal()Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda29;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    sget-object v4, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda11;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda11;

    sget-object v5, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda21;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda21;

    invoke-virtual {v2, v3, v4, v5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private commandEquals(Landroid/content/Intent;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1109
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "SERVICE_COMMAND"

    .line 1110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private configureDriverId()V
    .locals 5

    .line 954
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    .line 956
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->isHostAuthenticated()Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 958
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "isHostAuthenticated= %s "

    invoke-static {v3, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 962
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->setDriverID(Ljava/util/UUID;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 964
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private currentVehicle(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;)Z"
        }
    .end annotation

    .line 1052
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/VehicleModel;

    .line 1054
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getVin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getVin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1055
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1056
    invoke-virtual {v2, v4}, Lcom/texa/careapp/model/VehicleModel;->setCurrentVehicle(Z)V

    const/4 v1, 0x1

    goto :goto_1

    .line 1058
    :cond_0
    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1059
    invoke-virtual {v2, v0}, Lcom/texa/careapp/model/VehicleModel;->setCurrentVehicle(Z)V

    .line 1063
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1065
    invoke-virtual {v2}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getLampsSubscription()Lio/reactivex/disposables/Disposable;
    .locals 4

    .line 730
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    invoke-virtual {v0}, Lcom/texa/careapp/lamps/LampsManager;->observeActiveLampsSize()Lio/reactivex/Observable;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinct()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    sget-object v2, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda12;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda12;

    sget-object v3, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda26;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda26;

    .line 732
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private isConnectedAndAuthenticated()Z
    .locals 2

    .line 1392
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->isHostAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHostAuthenticated()Z
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->isHostAuthenticated()Z

    move-result v0

    return v0
.end method

.method private isTermAccepted(Lcom/texa/careapp/model/UserModel;)Z
    .locals 1

    const-string v0, "privacy"

    .line 671
    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->getTermAcepted(Ljava/lang/String;)Lcom/texa/careapp/model/TermsModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 672
    iget p1, p1, Lcom/texa/careapp/model/TermsModel;->version:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$checkLocalMismatch$23(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "error checking local vin mismatch"

    .line 1039
    invoke-static {v0, p0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$checkLocalMismatch$24()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "check local vin mismatch completed"

    .line 1040
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getLampsSubscription$11(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ERROR lamp update"

    .line 758
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getLampsSubscription$12()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "complete lamp update"

    .line 759
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeRefreshTokenExpired$4(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$odometerPeriodicUpdate$14(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error observing current trip for odometer update"

    .line 772
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCreate$3(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error syncing trips"

    .line 572
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onTripStarted$7()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Stop subscription loadTripInfo()"

    .line 712
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onTripStarted$8(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onError loadTripInfo()"

    .line 713
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onTripStarted$9()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCompleted loadTripInfo()"

    .line 713
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setupCareLib$18(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 942
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setupCareLib$20(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 946
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$updateVehicleOdometer$25(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, " error on setStartingOdometer Observer"

    .line 1231
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 1232
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateVehicleOdometer$27(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1234
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private loadTripInfo(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 782
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "loadTripInfo(), iteration=%d"

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->loadTripInfo()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 786
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private observeForRemoteConfigurationUpdateStatus()V
    .locals 4

    .line 820
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCareConfigurationHelper:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    invoke-virtual {v0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->observeConfigurationInfos()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->lastElement()Lio/reactivex/Maybe;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda30;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    new-instance v2, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    .line 821
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Maybe;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mConfDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private observeRefreshTokenExpired()V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->refreshTokenExpiredDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 620
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->observeRefreshTokenExpired()Lio/reactivex/Observable;

    move-result-object v0

    .line 621
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 622
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda19;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda19;

    .line 623
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    sget-object v2, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda1;

    .line 624
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->refreshTokenExpiredDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private odometerPeriodicUpdate()V
    .locals 5

    .line 769
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v1, "ODOMETER_PERIODIC_UPDATE_DISPOSABLE_KEY"

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDisposableHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    invoke-interface {v2}, Lcom/texa/careapp/carelib/ICareObserver;->observeCurrentTrip()Lio/reactivex/Observable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->bindToTripLifecycle()Lio/reactivex/ObservableTransformer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda31;

    invoke-direct {v3, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda31;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    sget-object v4, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda13;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda13;

    .line 771
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 770
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onCareConfigurationStatusFirstConfiguration(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1012
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CARE LOG STATUS --> %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/service/CareService;->removeCurrentVehicle(Ljava/lang/String;)V

    .line 1016
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/events/FirstConfigurationEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/events/FirstConfigurationEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1017
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_NOT_CONF:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CARE_FIRST_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    :cond_0
    return-void
.end method

.method private onCareConfigurationStatusNeedsUpdated()V
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mUpdateConfigurationHelper:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    invoke-virtual {v0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->displayNeedsUpdateNotification()V

    return-void
.end method

.method private removeCurrentVehicle(Ljava/lang/String;)V
    .locals 3

    .line 1073
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleModel;

    .line 1074
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1075
    invoke-virtual {v1, v2}, Lcom/texa/careapp/model/VehicleModel;->setCurrentVehicle(Z)V

    .line 1076
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->save()Ljava/lang/Long;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveCrashLog()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "saveCrashLog, currentDongle is null"

    .line 461
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCrashLogReader:Lcom/texa/careapp/utils/CrashLogReader;

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    iput-object v1, v0, Lcom/texa/careapp/utils/CrashLogReader;->mCompleteAllOperation:Lcom/texa/careapp/utils/CrashLogReader$CompleteAllOperation;

    .line 466
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCrashLogReader:Lcom/texa/careapp/utils/CrashLogReader;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/CrashLogReader;->read(Lcom/texa/carelib/care/impacts/ImpactDetection;)V

    return-void
.end method

.method private saveLastDisconnectedDate()V
    .locals 3

    .line 886
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/DongleModel;->setLastParametersUpdate(Ljava/lang/Long;)V

    .line 891
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/service/CareService;->save(Lcom/texa/careapp/model/DongleModel;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not update dongle disconnection date."

    .line 893
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private saveProximityAlertPoint()V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->proximityAlert:Lcom/texa/careapp/app/proximityalert/ProximityAlert;

    invoke-virtual {v0}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 343
    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 345
    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    sget-object v0, Lcom/texa/careapp/app/service/CareService;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "permissions not granted accessing location"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 350
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getLastLocation()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "LATITUDE_POSITION"

    .line 352
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sput-wide v2, Lcom/texa/careapp/Constants;->POINT_PROXIMITY_LATITUDE:D

    const-string v0, "LONGITUDE_POSITION"

    .line 353
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lcom/texa/careapp/Constants;->POINT_PROXIMITY_LONGITUDE:D

    .line 354
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->proximityAlert:Lcom/texa/careapp/app/proximityalert/ProximityAlert;

    sget-wide v1, Lcom/texa/careapp/Constants;->POINT_PROXIMITY_LATITUDE:D

    sget-wide v3, Lcom/texa/careapp/Constants;->POINT_PROXIMITY_LONGITUDE:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->addProximityAlert(DD)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    const-string v1, "gps"

    .line 356
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_2

    .line 358
    sget-object v0, Lcom/texa/careapp/app/service/CareService;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "last known location is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    sput-wide v1, Lcom/texa/careapp/Constants;->POINT_PROXIMITY_LATITUDE:D

    .line 361
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lcom/texa/careapp/Constants;->POINT_PROXIMITY_LONGITUDE:D

    .line 362
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->proximityAlert:Lcom/texa/careapp/app/proximityalert/ProximityAlert;

    sget-wide v1, Lcom/texa/careapp/Constants;->POINT_PROXIMITY_LATITUDE:D

    sget-wide v3, Lcom/texa/careapp/Constants;->POINT_PROXIMITY_LONGITUDE:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->addProximityAlert(DD)V

    :cond_3
    :goto_0
    return-void
.end method

.method private saveTripLogBook()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "saveTripLogBook, vehicleModel is null"

    .line 449
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mTripLogBookReader:Lcom/texa/careapp/utils/TripLogBookReader;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mTripLogBook:Lcom/texa/carelib/care/trips/TripLogBook;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/TripLogBookReader;->read(Lcom/texa/carelib/care/trips/TripLogBook;)V

    return-void
.end method

.method private startEcoDriving()V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "ECO_DRIVING_ACTIVATION"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, v1, v2}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setScoreUpdateRate(D)V

    .line 678
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->start()V

    :cond_0
    return-void
.end method

.method private stopEcoDriving()V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "ECO_DRIVING_ACTIVATION"

    .line 684
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->stop()V

    :cond_0
    return-void
.end method

.method private syncEcoDrivingTrips()V
    .locals 7

    const-string v0, "ECO_DRIVING_TRIPS_TIMESTAMP"

    .line 628
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 629
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/service/CareService;->isTermAccepted(Lcom/texa/careapp/model/UserModel;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 633
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 634
    invoke-static {}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getUnSyncTrips()Ljava/util/List;

    move-result-object v3

    .line 635
    new-instance v4, Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;

    invoke-direct {v4, v3}, Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :try_start_1
    iget-object v5, p0, Lcom/texa/careapp/app/service/CareService;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v5, v4}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->postEcoDrivingTripsBlocking(Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;)Lretrofit2/Call;

    move-result-object v4

    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "EcoDrivingTrips sync error"

    new-array v6, v1, [Ljava/lang/Object;

    .line 639
    invoke-static {v4, v5, v6}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    .line 643
    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->saveAsSynced()Z

    goto :goto_1

    .line 647
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 648
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 649
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 650
    iget-object v3, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 651
    iget-object v3, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/careapp/model/UserModel;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 653
    iget-object v4, p0, Lcom/texa/careapp/app/service/CareService;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v4, v3, v2}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getEcoDrivingTripsBlocking(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 654
    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;

    if-eqz v2, :cond_3

    .line 657
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;

    .line 658
    iget-object v5, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v5}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->saveTripObject(Lcom/texa/careapp/app/ecodriving/serviceserializer/TripObjectEntity;Lcom/texa/careapp/model/UserModel;)Z

    goto :goto_2

    .line 661
    :cond_2
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 662
    iget-object v3, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/serviceserializer/BaseEntity;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "RETROFIT ERROR"

    .line 665
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private unsubscribeRxSubscription()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mTripInfoDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method protected buildAttitudeNotification()Landroid/app/Notification;
    .locals 5

    .line 1364
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1366
    invoke-static {v0, v1, v2}, Lcom/texa/careapp/app/calibration/CalibrationActivity;->buildIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v2

    .line 1368
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_0

    const/high16 v3, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v3, 0x8000000

    :goto_0
    const/16 v4, 0xcb

    .line 1371
    invoke-static {v0, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1374
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x7f110ad2

    .line 1375
    invoke-virtual {p0, v3}, Lcom/texa/careapp/app/service/CareService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1376
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1377
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1378
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method protected buildOdometerConfirmNotification()Landroid/app/Notification;
    .locals 5

    .line 1343
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1345
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "local_notification"

    const/4 v3, 0x1

    .line 1346
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1348
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_0

    const/high16 v2, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x8000000

    :goto_0
    const/16 v4, 0xc9

    .line 1351
    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1353
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f110b1a

    .line 1354
    invoke-virtual {p0, v2}, Lcom/texa/careapp/app/service/CareService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1355
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1356
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method protected buildPINConfirmNotification()Landroid/app/Notification;
    .locals 5

    .line 1296
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1298
    invoke-static {v0}, Lcom/texa/careapp/app/MainActivity;->buildIntentForPinRequest(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "local_notification"

    const/4 v3, 0x1

    .line 1299
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1301
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_0

    const/high16 v2, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x8000000

    :goto_0
    const/16 v4, 0xcc

    .line 1304
    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1306
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1307
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1108dc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1308
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1309
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1310
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x30

    .line 1311
    iput v1, v0, Landroid/app/Notification;->flags:I

    return-object v0
.end method

.method protected buildRefreshTokenNotification()Landroid/app/Notification;
    .locals 4

    .line 1320
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1322
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/texa/careapp/app/auth/LoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1324
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    const/high16 v2, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x8000000

    :goto_0
    const/16 v3, 0xcd

    .line 1327
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1329
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->getDefaultNotificationBuilder(Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1330
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1108dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 1331
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1332
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1333
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x30

    .line 1334
    iput v1, v0, Landroid/app/Notification;->flags:I

    return-object v0
.end method

.method protected connectToDongle()V
    .locals 6

    .line 911
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    .line 912
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_2

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 917
    :cond_0
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    if-eq v1, v0, :cond_1

    .line 918
    new-instance v0, Lcom/texa/careapp/utils/KnownDeviceHistoryImpl;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleDataManager;->buildDeviceInfoList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/KnownDeviceHistoryImpl;-><init>(Ljava/util/List;)V

    .line 919
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1, v0}, Lcom/texa/carelib/communication/Communication;->setKnownDeviceHistory(Lcom/texa/carelib/communication/KnownDeviceHistory;)V

    .line 923
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v4, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/texa/careapp/FlavorDelegator;->connectToDongle(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/carelib/communication/Communication;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/texa/careapp/utils/exceptions/CareException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 925
    sget-object v1, Lcom/texa/careapp/app/service/CareService;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "got exception"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 913
    :cond_2
    :goto_1
    sget-object v1, Lcom/texa/careapp/app/service/CareService;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "WARN: Called connectToDongle() during illegal state. State: %1$s"

    aput-object v5, v4, v3

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public drivingEventCall(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Z)V
    .locals 7

    .line 1401
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 1403
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getRideId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->checkIfHaveToCloseOtherTrips(Ljava/lang/String;)V

    .line 1407
    :cond_0
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1408
    :cond_1
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/app/service/CareService;->lastStopTimestamp:J

    .line 1411
    :cond_2
    iget-wide v0, p0, Lcom/texa/careapp/app/service/CareService;->lastStopTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/texa/careapp/app/service/CareService;->lastStopTimestamp:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xafc8

    cmp-long v6, v0, v4

    if-gtz v6, :cond_3

    .line 1412
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1413
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1414
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 1417
    :cond_3
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1418
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1419
    iput-wide v2, p0, Lcom/texa/careapp/app/service/CareService;->lastStopTimestamp:J

    .line 1422
    :cond_4
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getJson()Ljava/lang/String;

    move-result-object v0

    .line 1423
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    invoke-virtual {v1, v2, v3, v0}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 1425
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->checkEcoDrivingMinFirmwareVersion(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/model/DongleModel;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "TripEventModel not saved"

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 1428
    new-instance p2, Lcom/activeandroid/query/Select;

    invoke-direct {p2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    .line 1430
    invoke-virtual {p2, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1431
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "UUID = ? "

    invoke-virtual {p2, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p2

    .line 1432
    invoke-virtual {p2}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    if-eqz p2, :cond_6

    .line 1434
    invoke-static {p1, p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->setUpdatableDataFromEvent(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V

    .line 1435
    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->isSyncNeeded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1437
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 1438
    invoke-static {}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->getInstance()Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    move-result-object p2

    new-instance v2, Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result p1

    invoke-direct {v2, p1}, Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;-><init>(I)V

    invoke-virtual {p2, v2}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->post(Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 1440
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1441
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void

    .line 1448
    :cond_6
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getHardwareId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1449
    iget-object p2, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v2}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleByHwId(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1451
    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/UserModel;->getUid()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    move-object v2, v3

    .line 1452
    :goto_2
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->from(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1454
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setVehicleId(Ljava/lang/String;)V

    .line 1455
    iget-object p2, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p2}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p2}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/careapp/model/UserModel;->getUid()Ljava/lang/String;

    move-result-object v3

    :cond_9
    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setDriverId(Ljava/lang/String;)V

    .line 1456
    iget-object p2, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p2}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 1457
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getTripNumber()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1458
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getHardwareId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setHwId(Ljava/lang/String;)V

    .line 1461
    :cond_a
    invoke-static {p1, v2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->from(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object p2

    const-string v3, "1.0"

    .line 1462
    invoke-virtual {p2, v3}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->setDataVersion(Ljava/lang/String;)V

    .line 1465
    :try_start_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 1466
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/texa/careapp/app/service/CareService;->saveCurrentTripPrefs(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 1468
    invoke-static {}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->getInstance()Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    move-result-object p2

    new-instance v2, Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;->getType()Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result p1

    invoke-direct {v2, p1}, Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;-><init>(I)V

    invoke-virtual {p2, v2}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->post(Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;)V
    :try_end_1
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 1470
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1471
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :cond_b
    :goto_3
    return-void
.end method

.method protected isTripInfoSubscribed()Z
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mTripInfoDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$checkForConfigurationUpdates$21$com-texa-careapp-app-service-CareService(Ljava/lang/String;Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;)V
    .locals 4

    .line 973
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 974
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getVehicleConfigurationStatus()Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "Configuration update state: %1$s"

    .line 976
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->FirstConfiguration:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    if-ne v0, p2, :cond_0

    .line 979
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/service/CareService;->onCareConfigurationStatusFirstConfiguration(Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_0
    sget-object p1, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->NeedsUpdated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    if-ne p1, p2, :cond_1

    .line 981
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->onCareConfigurationStatusNeedsUpdated()V

    goto :goto_0

    .line 983
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->checkLocalMismatch()V

    goto :goto_0

    .line 987
    :cond_2
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/app/service/CareService;->TAG:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/core/CareError;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "%1$s, Could not check diagnostic configuration status. Error: %2$s"

    invoke-static {p1, p2, v0}, Ltimber/log/Timber;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->checkLocalMismatch()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$checkLocalMismatch$22$com-texa-careapp-app-service-CareService(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1024
    sget-object v0, Lcom/texa/careapp/app/service/CareService;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "vin retrieved from current dongle: %1$s"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vin:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "vin retrieved from dongleModel: %1$s"

    aput-object v2, v1, v4

    .line 1025
    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleModel;->getVinCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1026
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleDataManager;->getAllVehicles()Ljava/util/List;

    move-result-object v1

    .line 1027
    iget-object v2, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vin:Ljava/lang/String;

    iget-object v3, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->serialNumber:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/texa/careapp/app/service/CareService;->currentVehicle(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    const-string v2, "CARE_ENVIRONMENT"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 1028
    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/DongleModel;->getVinCode()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vin:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v5, [Ljava/lang/Object;

    const-string v1, "local vin match with previous"

    aput-object v1, p1, v4

    .line 1035
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1036
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "CONFIGURED_ENVIRONMENT"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1037
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->startEcoDriving()V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "local vin mismatch "

    aput-object v3, v1, v4

    .line 1029
    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1030
    iget-object p1, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->serialNumber:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/service/CareService;->removeCurrentVehicle(Ljava/lang/String;)V

    .line 1032
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "VIN_MISMATCH_ENVIRONMENT"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1033
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$getLampsSubscription$10$com-texa-careapp-app-service-CareService(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "received lamp update"

    .line 733
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    invoke-virtual {v0}, Lcom/texa/careapp/lamps/LampsManager;->scheduleLampSyncTask()V

    .line 736
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, " DongleModel is NULL"

    .line 738
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 742
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/DongleModel;->setLastParametersUpdate(Ljava/lang/Long;)V

    .line 744
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-nez v0, :cond_1

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "vehicleModel is NULL"

    .line 752
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 756
    :cond_1
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getActiveLamps()Ljava/util/List;

    move-result-object p1

    .line 757
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/lamps/LampsManager;->updateActiveLampNotification(Landroid/app/NotificationManager;Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Could not save dongle model."

    .line 746
    invoke-static {v0, v1, p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-service-CareService(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 286
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 288
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mBatteryServiceAnalyzer:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->onCommunicationStatusChanged(Lcom/texa/carelib/communication/CommunicationStatus;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 290
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-string v1, "COMMUNICATION --> %s"

    invoke-static {v1, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    sget-object p1, Lcom/texa/careapp/app/service/CareService$3;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 331
    :pswitch_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 332
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    const-string v1, "NULL"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "deviceName"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_COMMON_BLUETOOTH_CONNECTED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 319
    :pswitch_1
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 320
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleByMacAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 323
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/DongleModel;

    .line 325
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-virtual {p1, v1, v2}, Lcom/texa/careapp/model/DongleModel;->getPin(Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/TexaProfileDelegate;->setPassword(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_RECON:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CARE_CONNECTING:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    goto :goto_0

    .line 311
    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 312
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 313
    new-instance v0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda23;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->connectToDongle()V

    goto :goto_0

    .line 306
    :pswitch_3
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_RECON:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CARE_RECONNECTING:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    goto :goto_0

    .line 302
    :pswitch_4
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_RECON:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CARE_SCANNING:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    goto :goto_0

    .line 294
    :pswitch_5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 295
    new-instance v0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda25;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_DISCONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CARE_CONNECTION_LOST:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$observeForRemoteConfigurationUpdateStatus$15$com-texa-careapp-app-service-CareService(Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 821
    iget-object v0, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->serialNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->vin:Ljava/lang/String;

    iget-object p1, p1, Lcom/texa/careapp/configuration/UpdateConfigurationHelper$CareConfigurationInfos;->interpreterVersion:Ljava/math/BigInteger;

    invoke-direct {p0, v0, v1, p1}, Lcom/texa/careapp/app/service/CareService;->checkForConfigurationUpdates(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)V

    return-void
.end method

.method public synthetic lambda$observeForRemoteConfigurationUpdateStatus$16$com-texa-careapp-app-service-CareService(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 823
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "error observing remote config: %1$s"

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->checkLocalMismatch()V

    return-void
.end method

.method public synthetic lambda$observeRefreshTokenExpired$5$com-texa-careapp-app-service-CareService(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 624
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->buildRefreshTokenNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public synthetic lambda$odometerPeriodicUpdate$13$com-texa-careapp-app-service-CareService(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 771
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/service/CareService;->updateVehicleOdometer(Lcom/texa/carelib/care/trips/TripEndInfo;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$com-texa-careapp-app-service-CareService(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 571
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda24;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$com-texa-careapp-app-service-CareService(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 572
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->syncEcoDrivingTrips()V

    return-void
.end method

.method public synthetic lambda$onTripStarted$6$com-texa-careapp-app-service-CareService(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Start subscription loadTripInfo()"

    .line 709
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    .line 710
    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/service/CareService;->loadTripInfo(J)V

    return-void
.end method

.method public synthetic lambda$setupCareLib$17$com-texa-careapp-app-service-CareService(Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 939
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->buildPINConfirmNotification()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public synthetic lambda$setupCareLib$19$com-texa-careapp-app-service-CareService(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 944
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {p1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onCareConnected()V

    .line 945
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mDtcManager:Lcom/texa/careapp/utils/DtcManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/DtcManager;->onCareConnected()V

    return-void
.end method

.method public synthetic lambda$updateVehicleOdometer$26$com-texa-careapp-app-service-CareService(FLjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1234
    iget-object p2, p0, Lcom/texa/careapp/app/service/CareService;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-interface {p2, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->setStartingOdometer(F)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 471
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onCareConnectedAndAuthenticated()V
    .locals 4

    .line 796
    invoke-super {p0}, Lcom/texa/careapp/app/service/RxCareService;->onCareConnectedAndAuthenticated()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CARe connected BT and authenticated"

    .line 798
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/texa/careapp/app/service/CareService;->haveToNotify:Z

    .line 802
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->configureDriverId()V

    .line 804
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CARE_ENVIRONMENT"

    const-string v2, "IDLE_ENVIRONMENT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 806
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_CONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CARE_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 808
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAttitude:Lcom/texa/carelib/care/attitude/Attitude;

    invoke-interface {v0}, Lcom/texa/carelib/care/attitude/Attitude;->needsEstimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->checkCalibrationMinFirmwareVersion(Lcom/texa/carelib/care/accessory/Accessory;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->buildAttitudeNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleVehicleSync()V

    .line 814
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->observeForRemoteConfigurationUpdateStatus()V

    return-void
.end method

.method protected onCareDisconnected()V
    .locals 8

    .line 832
    invoke-super {p0}, Lcom/texa/careapp/app/service/RxCareService;->onCareDisconnected()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CARe disconnected"

    .line 833
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    iput-boolean v0, p0, Lcom/texa/careapp/app/service/CareService;->haveToNotify:Z

    .line 837
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mConfDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 839
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mTripInfoDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 841
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mUpdateLampsDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 843
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mDtcManager:Lcom/texa/careapp/utils/DtcManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/DtcManager;->onCareDisconnected()V

    .line 845
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v1}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onCareDisconnected()V

    .line 847
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-virtual {v1, v2}, Lcom/texa/careapp/lamps/LampsManager;->stop(Lcom/texa/carelib/care/vehicle/Vehicle;)V

    .line 849
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->stopEcoDriving()V

    .line 851
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->saveLastDisconnectedDate()V

    .line 853
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mLocationTracker:Lcom/texa/careapp/utils/LocationTracker;

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/careapp/utils/LocationTracker;->onTripEnded(Lcom/texa/careapp/model/VehicleModel;)V

    .line 855
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    .line 856
    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    .line 857
    invoke-interface {v2}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v3

    .line 858
    iget-object v4, p0, Lcom/texa/careapp/app/service/CareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v4}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object v4

    .line 859
    iget-object v5, p0, Lcom/texa/careapp/app/service/CareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-interface {v5}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v5

    .line 861
    invoke-virtual {p0, v2, v1}, Lcom/texa/careapp/app/service/CareService;->saveCurrentTrip(Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/model/VehicleModel;)V

    .line 862
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->scheduleSyncTripTask()V

    const-string v2, ";"

    if-eqz v5, :cond_1

    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    invoke-virtual {v5}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getVoltageCounters()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 868
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/texa/carelib/core/CounterInfo;

    .line 869
    invoke-virtual {v7}, Lcom/texa/carelib/core/CounterInfo;->getValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 872
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v0, "Voltage Counters: %s"

    invoke-static {v0, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAlternatorStaticAnalyzer:Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;

    invoke-virtual {v0, v4, v3, v1}, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;->parse(Lcom/texa/carelib/care/trips/TripBeginInfo;Lcom/texa/carelib/care/trips/TripEndInfo;Lcom/texa/careapp/model/VehicleModel;)V

    .line 878
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->CARE_DISCONN:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CARE_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    iget-object v5, p0, Lcom/texa/careapp/app/service/CareService;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-virtual {v5}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->IMPACT_DETECTED_BY_SMARTPHONE_NOT_SUPPORTED:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    invoke-virtual {v0, v1, v3, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "playServices onConnected"

    .line 1089
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .line 1095
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz p1, :cond_0

    .line 1096
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 557
    invoke-super {p0}, Lcom/texa/careapp/app/service/RxCareService;->onCreate()V

    .line 559
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/service/CareService;)V

    .line 562
    invoke-static {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->registerCallback(Lcom/texa/care/eco_driving/EcoDrivingCallback;)V

    .line 563
    new-instance v0, Lcom/texa/careapp/app/proximityalert/ProximityAlert;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->proximityAlert:Lcom/texa/careapp/app/proximityalert/ProximityAlert;

    .line 564
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->setupCareLib()V

    .line 566
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    const-string v2, "ECO_DRIVING_ACTIVATION"

    .line 567
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x5

    .line 568
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 569
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 570
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    .line 571
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    sget-object v2, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda14;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda14;

    .line 572
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->ecoDrivingSyncDisposable:Lio/reactivex/disposables/Disposable;

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    .line 577
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 579
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 580
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 585
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/DongleDataManager;->startConnectionListener(Lcom/texa/carelib/communication/Communication;)V

    .line 587
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->connectToDongle()V

    .line 591
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->isConnectedAndAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "service onCreate(): CARe connesso BT e autenticato"

    .line 592
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->onCareConnectedAndAuthenticated()V

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-virtual {v0, p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onCreate(Landroid/app/Service;)V

    .line 597
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mSosPrerequisiteNotificationController:Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    invoke-virtual {v0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->onCreate()V

    .line 599
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->scheduleSyncServiceDataTask()V

    .line 602
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-virtual {v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->registerImpactDetectorListener()V

    .line 604
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-virtual {v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->startDetection()V

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mProfile:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 609
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onCareConnected()V

    .line 613
    :cond_4
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCrashlyticsHelper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/CrashlyticsHelper;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/CrashlyticsHelper;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 615
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->observeRefreshTokenExpired()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 498
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->unregisterListeners()V

    .line 499
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mWakelockManager:Lcom/texa/careapp/utils/wakelock/WakelockManager;

    invoke-interface {v0}, Lcom/texa/careapp/utils/wakelock/WakelockManager;->onServiceDestroyed()V

    .line 500
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->refreshTokenExpiredDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 504
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->proximityAlert:Lcom/texa/careapp/app/proximityalert/ProximityAlert;

    invoke-virtual {v0}, Lcom/texa/careapp/app/proximityalert/ProximityAlert;->unregisterReceivers()V

    .line 505
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-virtual {v0, p0}, Lcom/texa/careapp/app/service/ServiceNotificationController;->onDestroy(Landroid/app/Service;)V

    .line 506
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mSosPrerequisiteNotificationController:Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    invoke-virtual {v0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;->onDestroy()V

    .line 507
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/DongleDataManager;->stopConnectionListener(Lcom/texa/carelib/communication/Communication;)V

    .line 508
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-virtual {v0}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;->onDestroy()V

    .line 510
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->cancelPeriodicTask()V

    .line 511
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->unsubscribeRxSubscription()V

    .line 513
    invoke-static {p0}, Lcom/texa/care/eco_driving/score/BaseScore;->unRegisterCallback(Lcom/texa/care/eco_driving/EcoDrivingCallback;)V

    .line 516
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-virtual {v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-virtual {v0}, Lcom/texa/careapp/impactdetection/ImpactDetector;->stopDetection()V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->unregisterImpactDetectorListener()V

    .line 523
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 525
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v3, Lcom/texa/careapp/model/ServerLogModel$LogNote;->SERVICE_DESTROYED:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 527
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->ecoDrivingSyncDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 528
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->disconnect()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :catch_0
    :cond_2
    invoke-super {p0}, Lcom/texa/careapp/app/service/RxCareService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/16 p2, 0x67

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/service/CareService;->commandEquals(Landroid/content/Intent;I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    new-array p2, p3, [Ljava/lang/Object;

    const-string v0, "received command: COMMAND_TRIP_STARTED"

    .line 479
    invoke-static {v0, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    iget-object p2, p0, Lcom/texa/careapp/app/service/CareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-virtual {p0, p2}, Lcom/texa/careapp/app/service/CareService;->onTripStarted(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    :cond_0
    const/16 p2, 0x66

    .line 483
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/service/CareService;->commandEquals(Landroid/content/Intent;I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "received command: COMMAND_CONNECT_TO_DONGLE, trying to connect..."

    .line 484
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->connectToDongle()V

    .line 487
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mWakelockManager:Lcom/texa/careapp/utils/wakelock/WakelockManager;

    invoke-interface {p1}, Lcom/texa/careapp/utils/wakelock/WakelockManager;->onServiceStarted()V

    .line 489
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object p2, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object p3, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogNote;->START_ON_SERVICE_LAUNCH:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 491
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isBluetoothEnabled(Lcom/texa/careapp/remotelogger/LoggerManager;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onTripStarted(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 4

    .line 697
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-super {p0, v0}, Lcom/texa/careapp/app/service/RxCareService;->onTripStarted(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 699
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "A new trip is begun: %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->saveCrashLog()V

    .line 703
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mLocationTracker:Lcom/texa/careapp/utils/LocationTracker;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/LocationTracker;->onTripStarted(Lcom/texa/careapp/model/VehicleModel;)V

    .line 705
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mTripInfoDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 707
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->bindToTripLifecycle()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    .line 708
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda27;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda27;

    .line 712
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnTerminate(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    sget-object v2, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda15;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda15;

    sget-object v3, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda28;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda28;

    .line 713
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mTripInfoDisposable:Lio/reactivex/disposables/Disposable;

    .line 715
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->odometerPeriodicUpdate()V

    .line 717
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/lamps/LampsManager;->start(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    .line 719
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mBatteryServiceAnalyzer:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->onTripStatusChanged(Lcom/texa/carelib/care/trips/TripStatus;)V

    .line 721
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mUpdateLampsDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 722
    invoke-direct {p0}, Lcom/texa/careapp/app/service/CareService;->getLampsSubscription()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mUpdateLampsDisposable:Lio/reactivex/disposables/Disposable;

    .line 724
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/app/update/FirmwareUpdateService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/service/CareService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 726
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mBatteryServiceAnalyzer:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->scheduleSyncBatteryData()V

    return-void
.end method

.method protected save(Lcom/texa/careapp/model/DongleModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 906
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

.method protected saveBatteryVoltageParameter(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/TripModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 1158
    invoke-virtual {p2}, Lcom/texa/careapp/model/TripModel;->getBatteryState()Lcom/texa/careapp/model/TripModel$BatteryState;

    move-result-object v0

    iget v0, v0, Lcom/texa/careapp/model/TripModel$BatteryState;->off:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    const-wide/32 v0, 0x499602d2

    .line 1159
    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/model/VehicleModel;->getOrAddParameter(J)Lcom/texa/careapp/model/VehicleParam;

    move-result-object v0

    .line 1160
    invoke-virtual {p2}, Lcom/texa/careapp/model/TripModel;->getBatteryState()Lcom/texa/careapp/model/TripModel$BatteryState;

    move-result-object v1

    iget v1, v1, Lcom/texa/careapp/model/TripModel$BatteryState;->off:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleParam;->setValueNumeric(Ljava/lang/Double;)V

    const/4 v1, 0x1

    .line 1161
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleParam;->setSyncNeeded(Z)V

    .line 1162
    sget-object v1, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleParam;->setValueDataType(Lcom/texa/carelib/care/vehicle/ValueDataType;)V

    .line 1163
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 1165
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParam;->getHistoryParam()Ljava/util/List;

    move-result-object v1

    .line 1166
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 1167
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->delete()V

    .line 1169
    :cond_0
    new-instance v1, Lcom/texa/careapp/model/VehicleParamHistoryModel;

    invoke-direct {v1}, Lcom/texa/careapp/model/VehicleParamHistoryModel;-><init>()V

    .line 1170
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setOdoValue(D)V

    .line 1171
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setValue(D)V

    .line 1172
    invoke-virtual {p2}, Lcom/texa/careapp/model/TripModel;->getTripEnd()Lcom/texa/careapp/model/TripModel$TripData;

    move-result-object p1

    iget-object p1, p1, Lcom/texa/careapp/model/TripModel$TripData;->time:Ljava/util/Date;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setDate(Ljava/util/Date;)V

    .line 1173
    invoke-virtual {p2}, Lcom/texa/careapp/model/TripModel;->getTripNumber()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setTrip(J)V

    .line 1174
    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/VehicleParamHistoryModel;->setVehicleParam(Lcom/texa/careapp/model/VehicleParam;)V

    .line 1175
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    :cond_1
    return-void
.end method

.method protected saveCurrentTrip(Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "currentTrip is null"

    .line 1116
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1120
    :cond_0
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object v1

    if-nez v1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "tripStartInfo is null"

    .line 1121
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1125
    :cond_1
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v1

    if-nez v1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "tripStopInfo is null"

    .line 1126
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "checkCurrentVehicle is null"

    .line 1131
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1136
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mTripDataManager:Lcom/texa/careapp/utils/TripDataManager;

    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/texa/careapp/utils/TripDataManager;->getTripDataCached(J)Lcom/texa/careapp/model/TripModel;

    move-result-object v1

    .line 1137
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/texa/careapp/app/service/CareService;->updateVehicleOdometer(Lcom/texa/carelib/care/trips/TripEndInfo;)V

    .line 1138
    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v2

    if-nez v1, :cond_4

    .line 1140
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/careapp/model/TripModel;->from(Lcom/texa/carelib/care/trips/CurrentTrip;Ljava/lang/String;)Lcom/texa/careapp/model/TripModel;

    move-result-object p1

    .line 1141
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 1142
    invoke-virtual {p0, v2, p1}, Lcom/texa/careapp/app/service/CareService;->saveBatteryVoltageParameter(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/TripModel;)V

    goto :goto_0

    .line 1144
    :cond_4
    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/careapp/model/TripModel;->from(Lcom/texa/carelib/care/trips/CurrentTrip;Ljava/lang/String;)Lcom/texa/careapp/model/TripModel;

    move-result-object p1

    .line 1145
    invoke-virtual {v1, p1}, Lcom/texa/careapp/model/TripModel;->updateData(Lcom/texa/careapp/model/TripModel;)V

    .line 1146
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 1147
    invoke-virtual {p0, v2, p1}, Lcom/texa/careapp/app/service/CareService;->saveBatteryVoltageParameter(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/TripModel;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "saveCurrentTrip: DataError"

    .line 1152
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "saveCurrentTrip: DBError"

    .line 1150
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected saveCurrentTripPrefs(Ljava/lang/String;)V
    .locals 2

    .line 1536
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PREFS_KEY_CURRENT_TRIP"

    .line 1537
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1538
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected saveVehicle(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 2

    .line 1286
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not save vehicle model to database."

    .line 1288
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected scheduleSyncServiceDataTask()V
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->schedulePeriodicTask()V

    return-void
.end method

.method protected scheduleSyncTripTask()V
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleTripSync()V

    return-void
.end method

.method public scoreUpdateCall(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;)V
    .locals 6

    .line 1483
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->checkCurrentEcoDrivingMinFirmwareVersion(Lcom/texa/carelib/care/accessory/Accessory;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1484
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v1, v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleByHwId(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1492
    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/careapp/model/UserModel;->getUid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 1494
    :goto_0
    new-instance v4, Lcom/texa/careapp/app/service/CareService$2;

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/texa/careapp/app/service/CareService$2;-><init>(Lcom/texa/careapp/app/service/CareService;Lcom/texa/care/eco_driving/score/BaseScore;)V

    .line 1501
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->from(Lcom/texa/care/eco_driving/events/drivingevents/DrivingEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1503
    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setVehicleId(Ljava/lang/String;)V

    .line 1504
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/UserModel;->getUid()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setDriverId(Ljava/lang/String;)V

    .line 1505
    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 1506
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;->getTripNumber()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1507
    invoke-virtual {v2, v0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setHwId(Ljava/lang/String;)V

    .line 1510
    :cond_3
    invoke-static {p1, v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;->from(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripObjectLastScore;

    move-result-object v0

    .line 1512
    invoke-static {p1, v2}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->from(Lcom/texa/care/eco_driving/events/scoreevents/ScoreUpdateEvent;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;

    move-result-object p1

    const-string v1, "1.0"

    .line 1513
    invoke-virtual {p1, v1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->setDataVersion(Ljava/lang/String;)V

    .line 1516
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 1517
    invoke-virtual {v2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/texa/careapp/app/service/CareService;->saveCurrentTripPrefs(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 1519
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 1521
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/texa/care/eco_driving/score/ScoreType;->OVERALL:Lcom/texa/care/eco_driving/score/ScoreType;

    invoke-virtual {v1}, Lcom/texa/care/eco_driving/score/ScoreType;->getNumericType()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1522
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getPreviousScore()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripScoreUpdateModel;->getScore()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 1523
    invoke-static {}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->getInstance()Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->post(Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TripScoreUpdateModel not saved"

    .line 1526
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1527
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected setupCareLib()V
    .locals 3

    .line 931
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mProfile:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v0, v1}, Lcom/texa/carelib/webservices/TexaService;->setCareProxy(Lcom/texa/carelib/care/profile/CareProxy;)V

    .line 932
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mProfile:Lcom/texa/carelib/profile/Profile;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/Profile;->setServiceProxy(Lcom/texa/carelib/webservices/ServiceProxy;)V

    .line 935
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 936
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mCareCrashlyticsHelper:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 937
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 938
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mRxProfile:Lcom/texa/care/eco_driving/RxProfile;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxProfile;->observeAuthenticationError()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda32;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 941
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mRxProfile:Lcom/texa/care/eco_driving/RxProfile;

    invoke-virtual {v0}, Lcom/texa/care/eco_driving/RxProfile;->ready()Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda20;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda20;

    .line 942
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/service/CareService;)V

    sget-object v2, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda16;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda16;

    .line 943
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/CareService;->profileReadyDisposable:Lio/reactivex/disposables/Disposable;

    .line 947
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->registerImpactDetectionListener()V

    .line 949
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mCareConfigurationHelper:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    invoke-virtual {v0}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;->checkCareNotConfigured()V

    return-void
.end method

.method protected unregisterListeners()V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-interface {v0}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;->unregisterImpactDetectionListener()V

    .line 547
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mCommunicationChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 548
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->profileReadyDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    .line 550
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mAccessoryPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 551
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/app/service/CareService;->mCareCrashlyticsHelper:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method protected updateVehicleOdometer(Lcom/texa/carelib/care/trips/TripEndInfo;)V
    .locals 7

    .line 1186
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "TripStopInfo == null in #updateVehicleOdometer()"

    .line 1189
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "VehicleModel == null in #updateVehicleOdometer()"

    .line 1192
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1196
    :cond_1
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    .line 1199
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/TripEndInfo;->getOdometer()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1200
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 1201
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1207
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "DataManagerConfigurationP odometer current value= %s, new value= %s"

    invoke-static {v5, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1214
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isOdometerEstimated(Lcom/texa/carelib/care/trips/TripEndInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1225
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1227
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-boolean v5, p0, Lcom/texa/careapp/app/service/CareService;->haveToNotify:Z

    invoke-virtual {p0, v4, p1, v5}, Lcom/texa/careapp/app/service/CareService;->validateOdometerValue(Ljava/lang/Float;Ljava/lang/Float;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    cmpg-float p1, v3, v2

    if-gez p1, :cond_2

    .line 1229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda18;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda18;

    .line 1230
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, v2}, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/app/service/CareService;F)V

    sget-object v1, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda17;->INSTANCE:Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda17;

    .line 1234
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_2
    new-array p1, v6, [Ljava/lang/Object;

    .line 1236
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p1, v1

    const-string/jumbo v1, "updating vehicle odometer with new value: %s"

    invoke-static {v1, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleModel;->setOdometer(Ljava/lang/Integer;)V

    .line 1238
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/service/CareService;->saveVehicle(Lcom/texa/careapp/model/VehicleModel;)V

    goto :goto_0

    .line 1241
    :cond_3
    iput-boolean v1, p0, Lcom/texa/careapp/app/service/CareService;->haveToNotify:Z

    .line 1242
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->INVALID_ODOMETER:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->FAILED:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "old odometer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " - actual odometer: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    goto :goto_0

    .line 1246
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/VehicleModel;->setOdometer(Ljava/lang/Integer;)V

    .line 1247
    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/service/CareService;->saveVehicle(Lcom/texa/careapp/model/VehicleModel;)V

    :goto_0
    return-void

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "(odometerTrip == null || odometerTrip == 0 )in #updateVehicleOdometer()"

    .line 1203
    invoke-static {v0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected validateOdometerValue(Ljava/lang/Float;Ljava/lang/Float;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "New odometer is null! It must be ignored."

    .line 1259
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Old odometer is null! It must be ignored."

    .line 1264
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 1268
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "CARe has sent an invalid odometer value: %f. It must be ignored."

    const/4 v4, 0x1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 1269
    invoke-static {v3, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 1273
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v5, 0x43fa0000    # 500.0f

    add-float/2addr v2, v5

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr p1, v5

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    .line 1275
    iget-object p1, p0, Lcom/texa/careapp/app/service/CareService;->notificationManager:Landroid/app/NotificationManager;

    const/16 p3, 0xa

    invoke-virtual {p0}, Lcom/texa/careapp/app/service/CareService;->buildOdometerConfirmNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_5
    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 1277
    invoke-static {v3, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
