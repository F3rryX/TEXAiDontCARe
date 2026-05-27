.class public final Lcom/texa/careapp/app/service/CareService_MembersInjector;
.super Ljava/lang/Object;
.source "CareService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/service/CareService;",
        ">;"
    }
.end annotation


# instance fields
.field private final communicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation
.end field

.field private final drivingStyleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/DrivingStyleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessoryProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlternatorStaticAnalyzerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field private final mArmadilloSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mAttitudeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/attitude/Attitude;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryServiceAnalyzerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/BatteryServiceAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCareConfigurationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mCareCrashlyticsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mCareObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommunicationObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommunicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation
.end field

.field private final mCrashLogReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashLogReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mCrashlyticsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentTripProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentTripProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end field

.field private final mDTCResolutionIntegratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataManagerConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mDongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mDtcManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlavorDelegatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpactDetectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/impacts/ImpactDetection;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpactDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final mLampsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalBroadcastManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LocationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoggerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TexaProfileDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRxProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecurePreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/securepreferences/SecurePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSosFeatureManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSosPrerequisiteNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpeakerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/tts/Speaker;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTripDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTripLogBookProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/TripLogBook;",
            ">;"
        }
    .end annotation
.end field

.field private final mTripLogBookReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripLogBookReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateConfigurationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakelockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/wakelock/WakelockManager;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LocationTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/tts/Speaker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/wakelock/WakelockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripLogBookReader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TexaProfileDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/securepreferences/SecurePreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/TripLogBook;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/impacts/ImpactDetection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/attitude/Attitude;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashLogReader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/DrivingStyleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/BatteryServiceAnalyzer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 215
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCurrentTripProvider:Ljavax/inject/Provider;

    move-object v1, p2

    .line 216
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 217
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 218
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 219
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mDtcManagerProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 220
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 221
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 222
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 223
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mDTCResolutionIntegratorProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 224
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mLocationTrackerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 225
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 226
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 227
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCareCrashlyticsHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 228
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCareConfigurationHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 229
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mAlternatorStaticAnalyzerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 230
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 231
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 232
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mSpeakerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 233
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mWakelockManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 234
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 235
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 236
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mServiceNotificationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 237
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mSosPrerequisiteNotificationControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 238
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTripLogBookReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 239
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mUpdateConfigurationHelperProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 240
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->communicationProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 241
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 242
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mProfileDelegateProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 243
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 244
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 245
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mSecurePreferencesProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 246
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mArmadilloSharedPreferencesProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 247
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 248
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p35

    .line 249
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mImpactDetectorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p36

    .line 250
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p37

    .line 251
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p38

    .line 252
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTripDataManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p39

    .line 253
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p40

    .line 254
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p41

    .line 255
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mDataManagerConfigurationProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p42

    .line 256
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p43

    .line 257
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mAccessoryProvider2:Ljavax/inject/Provider;

    move-object/from16 v1, p44

    .line 258
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mVehicleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p45

    .line 259
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCurrentTripProvider2:Ljavax/inject/Provider;

    move-object/from16 v1, p46

    .line 260
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTripLogBookProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p47

    .line 261
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mImpactDetectionProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p48

    .line 262
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mAttitudeProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p49

    .line 263
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCrashLogReaderProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p50

    .line 264
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->drivingStyleManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p51

    .line 265
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mBatteryServiceAnalyzerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p52

    .line 266
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p53

    .line 267
    iput-object v1, v0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCrashlyticsHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LocationTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/tts/Speaker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/wakelock/WakelockManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripLogBookReader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TexaProfileDelegate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/securepreferences/SecurePreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/TripLogBook;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/impacts/ImpactDetection;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/attitude/Attitude;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashLogReader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/DrivingStyleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/BatteryServiceAnalyzer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/service/CareService;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    move-object/from16 v48, p47

    move-object/from16 v49, p48

    move-object/from16 v50, p49

    move-object/from16 v51, p50

    move-object/from16 v52, p51

    move-object/from16 v53, p52

    .line 317
    new-instance v54, Lcom/texa/careapp/app/service/CareService_MembersInjector;

    move-object/from16 v0, v54

    invoke-direct/range {v0 .. v53}, Lcom/texa/careapp/app/service/CareService_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v54
.end method

.method public static injectCommunication(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->communication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectDrivingStyleManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/care/eco_driving/DrivingStyleManager;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->drivingStyleManager:Lcom/texa/care/eco_driving/DrivingStyleManager;

    return-void
.end method

.method public static injectMAccessory(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method

.method public static injectMAlternatorStaticAnalyzer(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mAlternatorStaticAnalyzer:Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;

    return-void
.end method

.method public static injectMArmadilloSharedPreferences(Lcom/texa/careapp/app/service/CareService;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mArmadilloSharedPreferences:Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    return-void
.end method

.method public static injectMAttitude(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/attitude/Attitude;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mAttitude:Lcom/texa/carelib/care/attitude/Attitude;

    return-void
.end method

.method public static injectMBatteryServiceAnalyzer(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mBatteryServiceAnalyzer:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    return-void
.end method

.method public static injectMCAReWorkerManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method public static injectMCareConfigurationHelper(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mCareConfigurationHelper:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    return-void
.end method

.method public static injectMCareCrashlyticsHelper(Lcom/texa/careapp/app/service/CareService;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/service/CareService;",
            "Ldagger/Lazy<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;)V"
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mCareCrashlyticsHelper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMCareObserver(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/carelib/ICareObserver;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mCareObserver:Lcom/texa/careapp/carelib/ICareObserver;

    return-void
.end method

.method public static injectMCrashLogReader(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/CrashLogReader;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mCrashLogReader:Lcom/texa/careapp/utils/CrashLogReader;

    return-void
.end method

.method public static injectMCrashlyticsHelper(Lcom/texa/careapp/app/service/CareService;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/app/service/CareService;",
            "Ldagger/Lazy<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;)V"
        }
    .end annotation

    .line 650
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mCrashlyticsHelper:Ldagger/Lazy;

    return-void
.end method

.method public static injectMCurrentTrip(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    return-void
.end method

.method public static injectMDTCResolutionIntegrator(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mDTCResolutionIntegrator:Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    return-void
.end method

.method public static injectMDataManagerConfiguration(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    return-void
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMDtcManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/DtcManager;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mDtcManager:Lcom/texa/careapp/utils/DtcManager;

    return-void
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/service/CareService;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMFlavorDelegator(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/FlavorDelegator;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mFlavorDelegator:Lcom/texa/careapp/FlavorDelegator;

    return-void
.end method

.method public static injectMImpactDetection(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/impacts/ImpactDetection;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mImpactDetection:Lcom/texa/carelib/care/impacts/ImpactDetection;

    return-void
.end method

.method public static injectMImpactDetector(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/impactdetection/ImpactDetector;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mImpactDetector:Lcom/texa/careapp/impactdetection/ImpactDetector;

    return-void
.end method

.method public static injectMLampsManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/lamps/LampsManager;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLampsManager:Lcom/texa/careapp/lamps/LampsManager;

    return-void
.end method

.method public static injectMLocalBroadcastManager(Lcom/texa/careapp/app/service/CareService;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method

.method public static injectMLocationTracker(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/LocationTracker;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLocationTracker:Lcom/texa/careapp/utils/LocationTracker;

    return-void
.end method

.method public static injectMLoggerManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/remotelogger/LoggerManager;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    return-void
.end method

.method public static injectMNotificationManager(Lcom/texa/careapp/app/service/CareService;Landroid/app/NotificationManager;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static injectMPreferences(Lcom/texa/careapp/app/service/CareService;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMProfile(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-void
.end method

.method public static injectMProfileDelegate(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/TexaProfileDelegate;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mProfileDelegate:Lcom/texa/careapp/utils/TexaProfileDelegate;

    return-void
.end method

.method public static injectMRxProfile(Lcom/texa/careapp/app/service/CareService;Lcom/texa/care/eco_driving/RxProfile;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mRxProfile:Lcom/texa/care/eco_driving/RxProfile;

    return-void
.end method

.method public static injectMSecurePreferences(Lcom/texa/careapp/app/service/CareService;Lcom/texa/securepreferences/SecurePreferences;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mSecurePreferences:Lcom/texa/securepreferences/SecurePreferences;

    return-void
.end method

.method public static injectMServiceNotificationController(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/app/service/ServiceNotificationController;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mServiceNotificationController:Lcom/texa/careapp/app/service/ServiceNotificationController;

    return-void
.end method

.method public static injectMSosFeatureManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mSosFeatureManager:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    return-void
.end method

.method public static injectMSosPrerequisiteNotificationController(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mSosPrerequisiteNotificationController:Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    return-void
.end method

.method public static injectMSpeaker(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/tts/Speaker;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mSpeaker:Lcom/texa/careapp/tts/Speaker;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMTexaService(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/webservices/TexaService;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mTexaService:Lcom/texa/carelib/webservices/TexaService;

    return-void
.end method

.method public static injectMTripDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/TripDataManager;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mTripDataManager:Lcom/texa/careapp/utils/TripDataManager;

    return-void
.end method

.method public static injectMTripLogBook(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/trips/TripLogBook;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mTripLogBook:Lcom/texa/carelib/care/trips/TripLogBook;

    return-void
.end method

.method public static injectMTripLogBookReader(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/TripLogBookReader;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mTripLogBookReader:Lcom/texa/careapp/utils/TripLogBookReader;

    return-void
.end method

.method public static injectMUpdateConfigurationHelper(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mUpdateConfigurationHelper:Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    return-void
.end method

.method public static injectMUserDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/UserDataManager;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    return-void
.end method

.method public static injectMVehicle(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method

.method public static injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mVehicleParametersManagerV2:Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-void
.end method

.method public static injectMWakelockManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/wakelock/WakelockManager;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->mWakelockManager:Lcom/texa/careapp/utils/wakelock/WakelockManager;

    return-void
.end method

.method public static injectNotificationManager(Lcom/texa/careapp/app/service/CareService;Landroid/app/NotificationManager;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/service/CareService;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCurrentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 323
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 324
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 325
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/communication/Communication;)V

    .line 326
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mDtcManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/DtcManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMDtcManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/DtcManager;)V

    .line 327
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/FlavorDelegator;)V

    .line 328
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 329
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 330
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mDTCResolutionIntegratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMDTCResolutionIntegrator(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;)V

    .line 331
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mLocationTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LocationTracker;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMLocationTracker(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/LocationTracker;)V

    .line 332
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/service/CareService;Landroid/content/SharedPreferences;)V

    .line 333
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/app/service/CareService;Landroid/app/NotificationManager;)V

    .line 334
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCareCrashlyticsHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCareCrashlyticsHelper(Lcom/texa/careapp/app/service/CareService;Ldagger/Lazy;)V

    .line 335
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCareConfigurationHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCareConfigurationHelper(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V

    .line 336
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mAlternatorStaticAnalyzerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMAlternatorStaticAnalyzer(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;)V

    .line 337
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 338
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 339
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mSpeakerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/tts/Speaker;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMSpeaker(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/tts/Speaker;)V

    .line 340
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mWakelockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/wakelock/WakelockManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMWakelockManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/wakelock/WakelockManager;)V

    .line 341
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectNotificationManager(Lcom/texa/careapp/app/service/CareService;Landroid/app/NotificationManager;)V

    .line 342
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/service/CareService;Lorg/greenrobot/eventbus/EventBus;)V

    .line 343
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mServiceNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMServiceNotificationController(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    .line 344
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mSosPrerequisiteNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMSosPrerequisiteNotificationController(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V

    .line 345
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTripLogBookReaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TripLogBookReader;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTripLogBookReader(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/TripLogBookReader;)V

    .line 346
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mUpdateConfigurationHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMUpdateConfigurationHelper(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V

    .line 347
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->communicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectCommunication(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/communication/Communication;)V

    .line 348
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/profile/Profile;)V

    .line 349
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mProfileDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TexaProfileDelegate;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMProfileDelegate(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/TexaProfileDelegate;)V

    .line 350
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/webservices/TexaService;)V

    .line 351
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 352
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mSecurePreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/securepreferences/SecurePreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMSecurePreferences(Lcom/texa/careapp/app/service/CareService;Lcom/texa/securepreferences/SecurePreferences;)V

    .line 353
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mArmadilloSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMArmadilloSharedPreferences(Lcom/texa/careapp/app/service/CareService;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)V

    .line 354
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 355
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/app/service/CareService;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 356
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mImpactDetectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMImpactDetector(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/impactdetection/ImpactDetector;)V

    .line 357
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 358
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 359
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTripDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TripDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTripDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/TripDataManager;)V

    .line 360
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 361
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 362
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mDataManagerConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMDataManagerConfiguration(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    .line 363
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    .line 364
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mAccessoryProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 365
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mVehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMVehicle(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    .line 366
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCurrentTripProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 367
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mTripLogBookProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/TripLogBook;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTripLogBook(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/trips/TripLogBook;)V

    .line 368
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mImpactDetectionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/impacts/ImpactDetection;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMImpactDetection(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/impacts/ImpactDetection;)V

    .line 369
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mAttitudeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/attitude/Attitude;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMAttitude(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/attitude/Attitude;)V

    .line 370
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCrashLogReaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/CrashLogReader;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCrashLogReader(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/CrashLogReader;)V

    .line 371
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->drivingStyleManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/DrivingStyleManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectDrivingStyleManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    .line 372
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mBatteryServiceAnalyzerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMBatteryServiceAnalyzer(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V

    .line 373
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/app/service/CareService;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 374
    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService_MembersInjector;->mCrashlyticsHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCrashlyticsHelper(Lcom/texa/careapp/app/service/CareService;Ldagger/Lazy;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/texa/careapp/app/service/CareService;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMembers(Lcom/texa/careapp/app/service/CareService;)V

    return-void
.end method
