.class public final Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;
.super Ljava/lang/Object;
.source "DaggerCareApplication_ApplicationComponent.java"

# interfaces
.implements Lcom/texa/careapp/CareApplication$ApplicationComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;
    }
.end annotation


# instance fields
.field private final apiModule:Lcom/texa/careapp/dagger/ApiModule;

.field private final applicationComponent:Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;

.field private final careModule:Lcom/texa/careapp/dagger/CareModule;

.field private provideAccessTokenManagerClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessTokenManagerUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccountManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/accounts/AccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAlternatorStaticAnalyzerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field private provideApiAuthenticatorClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideApiAuthenticatorUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;",
            ">;"
        }
    .end annotation
.end field

.field private provideAttitudeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/attitude/Attitude;",
            ">;"
        }
    .end annotation
.end field

.field private provideAvgCalculatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private provideBatteryAnalyzerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field private provideBatteryChargeNotifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/alarms/VehicleAlarmNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private provideBatteryServiceAnalyzerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/BatteryServiceAnalyzer;",
            ">;"
        }
    .end annotation
.end field

.field private provideBinderScheduleViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/schedule/BinderScheduleView;",
            ">;"
        }
    .end annotation
.end field

.field private provideCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideCareConfigurationHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/configuration/UpdateConfigurationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideCareObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;"
        }
    .end annotation
.end field

.field private provideChecksFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/checks/ChecksFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideClientIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideClientSecretProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideCommunicationObservableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/CommunicationObservable;",
            ">;"
        }
    .end annotation
.end field

.field private provideCommunicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideCrashLogReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashLogReader;",
            ">;"
        }
    .end annotation
.end field

.field private provideCrashlyticsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/CrashlyticsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideCurrentTripProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end field

.field private provideDTCResolutionIntegratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;",
            ">;"
        }
    .end annotation
.end field

.field private provideDataManagerConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private provideDiagnosticConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private provideDongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDrivingStyleManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/DrivingStyleManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideDtcManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private provideFcmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/fcm/FcmManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideFeatureVerifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private provideFirmwareUpdateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/update/FirmwareUpdateController;",
            ">;"
        }
    .end annotation
.end field

.field private provideFirmwareUpgradeProcedureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;",
            ">;"
        }
    .end annotation
.end field

.field private provideFlavorDelegatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;"
        }
    .end annotation
.end field

.field private provideFormValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/FormValidator;",
            ">;"
        }
    .end annotation
.end field

.field private provideImpactDetectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/impacts/ImpactDetection;",
            ">;"
        }
    .end annotation
.end field

.field private provideImpactDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/impactdetection/ImpactDetector;",
            ">;"
        }
    .end annotation
.end field

.field private provideLampsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/lamps/LampsManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocationTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LocationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideLogConfiguratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LogConfigurator;",
            ">;"
        }
    .end annotation
.end field

.field private provideLoggerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideMechanicDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/MechanicDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePercentColorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/PercentColorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private providePreferenceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private provideProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private provideReactiveLocationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideRetrofitErrorParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/RetrofitErrorParser;",
            ">;"
        }
    .end annotation
.end field

.field private provideRxProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
            ">;"
        }
    .end annotation
.end field

.field private provideRxVehicleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxVehicle;",
            ">;"
        }
    .end annotation
.end field

.field private provideScheduleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/ScheduleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSecurePreferecesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/securepreferences/SecurePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private provideSecurePreferecesV2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private provideSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideServiceDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/ServiceDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideServiceNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/ServiceNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSosFeatureManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSosPrerequisiteNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideSpeakerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/tts/Speaker;",
            ">;"
        }
    .end annotation
.end field

.field private provideTexaCareApiClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field

.field private provideTexaCareAuthServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;"
        }
    .end annotation
.end field

.field private provideTexaCareServiceBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareServiceBus;",
            ">;"
        }
    .end annotation
.end field

.field private provideTexaProfileDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TexaProfileDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private provideTexaServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/webservices/TexaService;",
            ">;"
        }
    .end annotation
.end field

.field private provideTripDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideTripLogBookProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/TripLogBook;",
            ">;"
        }
    .end annotation
.end field

.field private provideTripLogBookReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/TripLogBookReader;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideVehicleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideVehicleInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;"
        }
    .end annotation
.end field

.field private provideVehicleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;"
        }
    .end annotation
.end field

.field private provideVehicleTroublesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            ">;"
        }
    .end annotation
.end field

.field private provideWakelockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/wakelock/WakelockManager;",
            ">;"
        }
    .end annotation
.end field

.field private vehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/dagger/ApiModule;)V
    .locals 0

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->applicationComponent:Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;

    .line 666
    iput-object p1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    .line 667
    iput-object p2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->initialize(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/dagger/ApiModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/dagger/ApiModule;Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$1;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;-><init>(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/dagger/ApiModule;)V

    return-void
.end method

.method private armadilloSharedPreferences()Lat/favre/lib/armadillo/ArmadilloSharedPreferences;
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesV2Factory;->provideSecurePreferecesV2(Lcom/texa/careapp/dagger/CareModule;Landroid/content/Context;)Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;
    .locals 2

    .line 673
    new-instance v0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;-><init>(Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$1;)V

    return-object v0
.end method

.method private checksFactory()Lcom/texa/careapp/checks/ChecksFactory;
    .locals 6

    .line 689
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/UserDataManager;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/carelib/CommunicationObservable;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideReactiveLocationProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static/range {v0 .. v5}, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->provideChecksFactory(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/utils/ServiceDataManager;)Lcom/texa/careapp/checks/ChecksFactory;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/dagger/ApiModule;)V
    .locals 13

    .line 694
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideLogConfiguratorFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideLogConfiguratorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLogConfiguratorProvider:Ljavax/inject/Provider;

    .line 695
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideCommunicationFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideCommunicationFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    .line 696
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideFlavorDelegatorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    .line 697
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideDongleDataManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideDongleDataManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 698
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSecurePreferecesProvider:Ljavax/inject/Provider;

    .line 699
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideContextProvider:Ljavax/inject/Provider;

    .line 700
    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesV2Factory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesV2Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSecurePreferecesV2Provider:Ljavax/inject/Provider;

    .line 701
    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSecurePreferecesProvider:Ljavax/inject/Provider;

    invoke-static {p1, v1, v2, v3, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaProfileDelegateProvider:Ljavax/inject/Provider;

    .line 702
    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-static {p1, v1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideProfileFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideProfileFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    .line 703
    invoke-static {p2}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->create(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideClientIdProvider:Ljavax/inject/Provider;

    .line 704
    invoke-static {p2}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientSecretFactory;->create(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/dagger/ApiModule_ProvideClientSecretFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideClientSecretProvider:Ljavax/inject/Provider;

    .line 705
    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideClientIdProvider:Ljavax/inject/Provider;

    invoke-static {p1, v1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    .line 706
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideNotificationManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideNotificationManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    .line 707
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideUserDataManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideUserDataManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    .line 708
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvidePreferenceManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvidePreferenceManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    .line 709
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideCommunicationObservableFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCommunicationObservableFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    .line 710
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideAccessoryFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    .line 711
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideContextProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideCAReWorkerManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCAReWorkerManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    .line 712
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideLoggerManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    .line 713
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideRxProfileFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    .line 714
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideContextProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLocalBroadcastManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideLocalBroadcastManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    .line 715
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideFeatureVerifierFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideFeatureVerifierFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    .line 716
    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-static {p1, v1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCurrentTripFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    .line 717
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideVehicleFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleProvider:Ljavax/inject/Provider;

    .line 718
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleTroublesFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideVehicleTroublesFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleTroublesProvider:Ljavax/inject/Provider;

    .line 719
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleInfoFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideVehicleInfoFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v8

    iput-object v8, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleInfoProvider:Ljavax/inject/Provider;

    .line 720
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleTroublesProvider:Ljavax/inject/Provider;

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    .line 721
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideAccountManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideAccountManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccountManagerProvider:Ljavax/inject/Provider;

    .line 722
    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerUserFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerUserFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerUserProvider:Ljavax/inject/Provider;

    .line 723
    invoke-static {p2}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareAuthServiceFactory;->create(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareAuthServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    .line 724
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerUserProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideClientIdProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideClientSecretProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    move-object v1, p2

    invoke-static/range {v1 .. v7}, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->create(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideApiAuthenticatorUserProvider:Ljavax/inject/Provider;

    .line 725
    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerUserProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0, v1}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;->create(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 726
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleDataManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideVehicleDataManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 727
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideEventBusFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideEventBusFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    .line 728
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    .line 729
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxVehicleProvider:Ljavax/inject/Provider;

    .line 730
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v7}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    .line 731
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideServiceDataManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideServiceDataManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    .line 732
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideFcmManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideFcmManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFcmManagerProvider:Ljavax/inject/Provider;

    .line 733
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideReactiveLocationProviderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideReactiveLocationProvider:Ljavax/inject/Provider;

    .line 734
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v6}, Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideChecksFactoryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideChecksFactoryProvider:Ljavax/inject/Provider;

    .line 735
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideImpactDetectionFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideImpactDetectionFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideImpactDetectionProvider:Ljavax/inject/Provider;

    .line 736
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideContextProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideSensorManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSensorManagerProvider:Ljavax/inject/Provider;

    .line 737
    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-static {p1, v1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideImpactDetectorFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideImpactDetectorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideImpactDetectorProvider:Ljavax/inject/Provider;

    .line 738
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCrashLogReaderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v12

    iput-object v12, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCrashLogReaderProvider:Ljavax/inject/Provider;

    .line 739
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideChecksFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideImpactDetectionProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideImpactDetectorProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    move-object v1, p1

    invoke-static/range {v1 .. v12}, Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideSosFeatureManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosFeatureManagerProvider:Ljavax/inject/Provider;

    .line 740
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideRetrofitErrorParserFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideRetrofitErrorParserFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    .line 741
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideFormValidatorFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideFormValidatorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFormValidatorProvider:Ljavax/inject/Provider;

    .line 742
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleTroublesProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideDTCResolutionIntegratorFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideDTCResolutionIntegratorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v7

    iput-object v7, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDTCResolutionIntegratorProvider:Ljavax/inject/Provider;

    .line 743
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleTroublesProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDtcManagerProvider:Ljavax/inject/Provider;

    .line 744
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v6}, Lcom/texa/careapp/dagger/CareModule_ProvideLocationTrackerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideLocationTrackerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocationTrackerProvider:Ljavax/inject/Provider;

    .line 745
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideCrashlyticsHelperFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCrashlyticsHelperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCrashlyticsHelperProvider:Ljavax/inject/Provider;

    .line 746
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v7}, Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCareConfigurationHelperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareConfigurationHelperProvider:Ljavax/inject/Provider;

    .line 747
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideBatteryChargeNotifierFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideBatteryChargeNotifierProvider:Ljavax/inject/Provider;

    .line 748
    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideAlternatorStaticAnalyzerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAlternatorStaticAnalyzerProvider:Ljavax/inject/Provider;

    .line 749
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDtcManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLampsManagerProvider:Ljavax/inject/Provider;

    .line 750
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideSpeakerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideSpeakerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSpeakerProvider:Ljavax/inject/Provider;

    .line 751
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideWakelockManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideWakelockManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideWakelockManagerProvider:Ljavax/inject/Provider;

    .line 752
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/texa/careapp/dagger/CareModule_ProvideServiceNotificationControllerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideServiceNotificationControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceNotificationControllerProvider:Ljavax/inject/Provider;

    .line 753
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/texa/careapp/dagger/CareModule_ProvideSosPrerequisiteNotificationControllerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideSosPrerequisiteNotificationControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosPrerequisiteNotificationControllerProvider:Ljavax/inject/Provider;

    .line 754
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTripLogBookReaderProvider:Ljavax/inject/Provider;

    .line 755
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideTripDataManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideTripDataManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTripDataManagerProvider:Ljavax/inject/Provider;

    .line 756
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideDataManagerConfigurationFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideDataManagerConfigurationFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDataManagerConfigurationProvider:Ljavax/inject/Provider;

    .line 757
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTripLogBookProvider:Ljavax/inject/Provider;

    .line 758
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideAttitudeFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideAttitudeFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAttitudeProvider:Ljavax/inject/Provider;

    .line 759
    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDataManagerConfigurationProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxVehicleProvider:Ljavax/inject/Provider;

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDrivingStyleManagerProvider:Ljavax/inject/Provider;

    .line 760
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryServiceAnalyzerFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideBatteryServiceAnalyzerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideBatteryServiceAnalyzerProvider:Ljavax/inject/Provider;

    .line 761
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerClientProvider:Ljavax/inject/Provider;

    .line 762
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/texa/careapp/dagger/CareModule_ProvideScheduleDataManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideScheduleDataManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideScheduleDataManagerProvider:Ljavax/inject/Provider;

    .line 763
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideMechanicDataManagerProvider:Ljavax/inject/Provider;

    .line 764
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideDiagnosticConfigurationFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDiagnosticConfigurationProvider:Ljavax/inject/Provider;

    .line 765
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerClientProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideClientIdProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideClientSecretProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0, v1, v2, v3}, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->create(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideApiAuthenticatorClientProvider:Ljavax/inject/Provider;

    .line 766
    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerClientProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0, v1}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiClientFactory;->create(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiClientFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiClientProvider:Ljavax/inject/Provider;

    .line 767
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0}, Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideBinderScheduleViewProvider:Ljavax/inject/Provider;

    .line 768
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvidePercentColorHelperFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvidePercentColorHelperFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePercentColorHelperProvider:Ljavax/inject/Provider;

    .line 769
    invoke-static {p1}, Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;->create(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/dagger/CareModule_ProvideAvgCalculatorFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAvgCalculatorProvider:Ljavax/inject/Provider;

    .line 770
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpdateControllerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFirmwareUpdateControllerProvider:Ljavax/inject/Provider;

    .line 771
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideBatteryAnalyzerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideBatteryAnalyzerProvider:Ljavax/inject/Provider;

    .line 772
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFeatureVerifierProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpgradeProcedureFactory;->create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideFirmwareUpgradeProcedureFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFirmwareUpgradeProcedureProvider:Ljavax/inject/Provider;

    .line 773
    invoke-static {p2}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;->create(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareServiceBusFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareServiceBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectAcceptTermsOfServiceAndPolicyScreenDialog(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;)Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;
    .locals 1

    .line 2963
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectAcceptationTermsActivity(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;)Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;
    .locals 1

    .line 2516
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2517
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2518
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2519
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2520
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2521
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2522
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectAcceptationTermsScreen(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;
    .locals 1

    .line 2527
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2528
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2529
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    return-object p1
.end method

.method private injectAcceptationTermsSosServiceScreen(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;
    .locals 1

    .line 2601
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2602
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2603
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2604
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectUserDataManager(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2605
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectDongleDataManager(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2606
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Landroid/content/SharedPreferences;)V

    .line 2607
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2608
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen_MembersInjector;->injectCaReWorkerManager(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectAccountAuthenticator(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;)Lcom/texa/careapp/utils/authentication/AccountAuthenticator;
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->injectMTexaCareService(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;Lcom/texa/careapp/networking/TexaCareAuthService;)V

    .line 1720
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->provideClientId(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->injectClientId(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;Ljava/lang/String;)V

    .line 1721
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientSecretFactory;->provideClientSecret(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->injectClientSecret(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;Ljava/lang/String;)V

    return-object p1
.end method

.method private injectActivationLightForeignServiceScreen(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;
    .locals 1

    .line 2623
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2624
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectActivationLightServiceScreen(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;
    .locals 1

    .line 2575
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2576
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2577
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectActivationPhoneNumberActivity(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;)Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;
    .locals 1

    .line 2969
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2970
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2971
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2972
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2973
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2974
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2975
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectActivationPlusServiceScreen(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;
    .locals 1

    .line 2166
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2167
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2168
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2169
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2170
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectActivationServiceActivity(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;)Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;
    .locals 1

    .line 2122
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2123
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2124
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2125
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2126
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2127
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2128
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2129
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2130
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-object p1
.end method

.method private injectActivationServiceCompletedScreen(Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;
    .locals 1

    .line 2176
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2177
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2178
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectActivationServiceContactActivity(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;)Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;
    .locals 1

    .line 2535
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2536
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2537
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2538
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2539
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2540
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2541
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2542
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectActivationServiceContactScreen(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;
    .locals 1

    .line 2548
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2549
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2550
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2551
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    return-object p1
.end method

.method private injectActivationServiceDeleteContactDialog(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;)Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;
    .locals 1

    .line 2583
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectActivationServiceSelectContactNumberDialog(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;)Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;
    .locals 1

    .line 2557
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectActivationServiceVehicleDialog(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;
    .locals 1

    .line 2594
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2595
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectActivationTrialServiceScreen(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;
    .locals 1

    .line 2147
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2148
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2149
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectAddNewThresholdActivity(Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;)Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;
    .locals 1

    .line 2233
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2234
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2235
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2236
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2237
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2238
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2239
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectAlertCentralActivity(Lcom/texa/careapp/app/sos/AlertCentralActivity;)Lcom/texa/careapp/app/sos/AlertCentralActivity;
    .locals 1

    .line 1701
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 1702
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 1703
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1704
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMFlavourDelegator(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/FlavorDelegator;)V

    .line 1705
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/carelib/profile/Profile;)V

    .line 1706
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideReactiveLocationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMLocationProvider(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    .line 1707
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/sos/AlertCentralActivity;Landroid/content/SharedPreferences;)V

    .line 1708
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1709
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AlertCentralActivity_MembersInjector;->injectMCaReWorkerManager(Lcom/texa/careapp/app/sos/AlertCentralActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectApiHeaders(Lcom/texa/careapp/utils/authentication/ApiHeaders;)Lcom/texa/careapp/utils/authentication/ApiHeaders;
    .locals 1

    .line 1805
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/utils/authentication/ApiHeaders;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1806
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/utils/authentication/ApiHeaders;Landroid/content/SharedPreferences;)V

    .line 1807
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFcmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/fcm/FcmManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/ApiHeaders_MembersInjector;->injectFcmManager(Lcom/texa/careapp/utils/authentication/ApiHeaders;Lcom/texa/careapp/fcm/FcmManager;)V

    return-object p1
.end method

.method private injectAutomaticSosPresenter(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)Lcom/texa/careapp/app/sos/AutomaticSosPresenter;
    .locals 1

    .line 1829
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 1830
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1831
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/carelib/profile/Profile;)V

    .line 1832
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/FlavorDelegator;)V

    .line 1833
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideReactiveLocationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectReactiveLocationProvider(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;)V

    .line 1834
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Landroid/content/SharedPreferences;)V

    .line 1835
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1836
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Landroid/content/Context;)V

    .line 1837
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter_MembersInjector;->injectMCaReWorkerManager(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectBaseFragment(Lcom/texa/careapp/base/BaseFragment;)Lcom/texa/careapp/base/BaseFragment;
    .locals 1

    .line 1714
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseFragment_MembersInjector;->injectMContext(Lcom/texa/careapp/base/BaseFragment;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectBaseVehicleDataScreen(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;
    .locals 1

    .line 2878
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 2879
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2880
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2881
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMLogInHelper(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 2882
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2883
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMAccessTokenPersistenceManagerClient(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    .line 2884
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMTexaCareAuthService(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Lcom/texa/careapp/networking/TexaCareAuthService;)V

    .line 2885
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->provideClientId(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMClientId(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Ljava/lang/String;)V

    .line 2886
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientSecretFactory;->provideClientSecret(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen_MembersInjector;->injectMClientSecret(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;Ljava/lang/String;)V

    return-object p1
.end method

.method private injectBatteryAnalyzerJob(Lcom/texa/careapp/sync/jobs/BatteryAnalyzerJob;)Lcom/texa/careapp/sync/jobs/BatteryAnalyzerJob;
    .locals 1

    .line 3117
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/BatteryAnalyzerJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/BatteryAnalyzerJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectBatteryServiceAnalyzer(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)Lcom/texa/careapp/utils/BatteryServiceAnalyzer;
    .locals 1

    .line 2800
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideBatteryAnalyzerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->injectMBatteryAnalyzer(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;)V

    .line 2801
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2802
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2803
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectBootCompletedReceiver(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;)Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;
    .locals 1

    .line 2263
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2264
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->injectMPrefs(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;Landroid/content/SharedPreferences;)V

    .line 2265
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object p1
.end method

.method private injectCalibrationActivity(Lcom/texa/careapp/app/calibration/CalibrationActivity;)Lcom/texa/careapp/app/calibration/CalibrationActivity;
    .locals 1

    .line 3047
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 3048
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 3049
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 3050
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 3051
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 3052
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectCalibrationDialogScreen(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;)Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;
    .locals 1

    .line 3062
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAttitudeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/attitude/Attitude;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen_MembersInjector;->injectMAttitude(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;Lcom/texa/carelib/care/attitude/Attitude;)V

    .line 3063
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/calibration/CalibrationDialogScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectCalibrationScreen(Lcom/texa/careapp/app/calibration/CalibrationScreen;)Lcom/texa/careapp/app/calibration/CalibrationScreen;
    .locals 1

    .line 3057
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/calibration/CalibrationScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/calibration/CalibrationScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectCareApplication(Lcom/texa/careapp/CareApplication;)Lcom/texa/careapp/CareApplication;
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLogConfiguratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LogConfigurator;

    invoke-static {p1, v0}, Lcom/texa/careapp/CareApplication_MembersInjector;->injectMLogConfigurator(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/utils/LogConfigurator;)V

    .line 1669
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/CareApplication_MembersInjector;->injectMProfile(Lcom/texa/careapp/CareApplication;Lcom/texa/carelib/profile/Profile;)V

    .line 1670
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/CareApplication_MembersInjector;->injectMTexaService(Lcom/texa/careapp/CareApplication;Lcom/texa/carelib/webservices/TexaService;)V

    .line 1671
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/CareApplication_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/CareApplication;Landroid/app/NotificationManager;)V

    return-object p1
.end method

.method private injectCareAuthenticationScreen(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;
    .locals 1

    .line 2913
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2914
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaProfileDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TexaProfileDelegate;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMTexaProfileDelegate(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/utils/TexaProfileDelegate;)V

    .line 2915
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/carelib/profile/Profile;)V

    .line 2916
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2917
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 2918
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMICareObserver(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 2919
    invoke-direct {p0}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->armadilloSharedPreferences()Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen_MembersInjector;->injectMArmadilloSharedPreferences(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)V

    return-object p1
.end method

.method private injectCareConfigurationRequestDialog(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;
    .locals 1

    .line 2058
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2059
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog_MembersInjector;->injectMLogInHelper(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 2060
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectCareService(Lcom/texa/careapp/app/service/CareService;)Lcom/texa/careapp/app/service/CareService;
    .locals 1

    .line 1748
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 1749
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 1750
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 1751
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/communication/Communication;)V

    .line 1752
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDtcManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/DtcManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMDtcManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/DtcManager;)V

    .line 1753
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/FlavorDelegator;)V

    .line 1754
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 1755
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 1756
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDTCResolutionIntegratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMDTCResolutionIntegrator(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;)V

    .line 1757
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocationTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LocationTracker;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMLocationTracker(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/LocationTracker;)V

    .line 1758
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/service/CareService;Landroid/content/SharedPreferences;)V

    .line 1759
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/app/service/CareService;Landroid/app/NotificationManager;)V

    .line 1760
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCrashlyticsHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCareCrashlyticsHelper(Lcom/texa/careapp/app/service/CareService;Ldagger/Lazy;)V

    .line 1761
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareConfigurationHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCareConfigurationHelper(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V

    .line 1762
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAlternatorStaticAnalyzerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMAlternatorStaticAnalyzer(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;)V

    .line 1763
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 1764
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 1765
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSpeakerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/tts/Speaker;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMSpeaker(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/tts/Speaker;)V

    .line 1766
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideWakelockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/wakelock/WakelockManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMWakelockManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/wakelock/WakelockManager;)V

    .line 1767
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectNotificationManager(Lcom/texa/careapp/app/service/CareService;Landroid/app/NotificationManager;)V

    .line 1768
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/service/CareService;Lorg/greenrobot/eventbus/EventBus;)V

    .line 1769
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMServiceNotificationController(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    .line 1770
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosPrerequisiteNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMSosPrerequisiteNotificationController(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V

    .line 1771
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTripLogBookReaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TripLogBookReader;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTripLogBookReader(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/TripLogBookReader;)V

    .line 1772
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareConfigurationHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMUpdateConfigurationHelper(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/configuration/UpdateConfigurationHelper;)V

    .line 1773
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectCommunication(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/communication/Communication;)V

    .line 1774
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/profile/Profile;)V

    .line 1775
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaProfileDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TexaProfileDelegate;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMProfileDelegate(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/TexaProfileDelegate;)V

    .line 1776
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/webservices/TexaService;)V

    .line 1777
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1778
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideSecurePreferecesFactory;->provideSecurePrefereces(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/securepreferences/SecurePreferences;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMSecurePreferences(Lcom/texa/careapp/app/service/CareService;Lcom/texa/securepreferences/SecurePreferences;)V

    .line 1779
    invoke-direct {p0}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->armadilloSharedPreferences()Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMArmadilloSharedPreferences(Lcom/texa/careapp/app/service/CareService;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)V

    .line 1780
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 1781
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/app/service/CareService;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 1782
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideImpactDetectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMImpactDetector(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/impactdetection/ImpactDetector;)V

    .line 1783
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1784
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 1785
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTripDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TripDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTripDataManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/TripDataManager;)V

    .line 1786
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 1787
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1788
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDataManagerConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMDataManagerConfiguration(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    .line 1789
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    .line 1790
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 1791
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMVehicle(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    .line 1792
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 1793
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTripLogBookProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/TripLogBook;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMTripLogBook(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/trips/TripLogBook;)V

    .line 1794
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideImpactDetectionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/impacts/ImpactDetection;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMImpactDetection(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/impacts/ImpactDetection;)V

    .line 1795
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAttitudeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/attitude/Attitude;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMAttitude(Lcom/texa/careapp/app/service/CareService;Lcom/texa/carelib/care/attitude/Attitude;)V

    .line 1796
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCrashLogReaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/CrashLogReader;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCrashLogReader(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/CrashLogReader;)V

    .line 1797
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDrivingStyleManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/DrivingStyleManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectDrivingStyleManager(Lcom/texa/careapp/app/service/CareService;Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    .line 1798
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideBatteryServiceAnalyzerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMBatteryServiceAnalyzer(Lcom/texa/careapp/app/service/CareService;Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V

    .line 1799
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/app/service/CareService;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 1800
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCrashlyticsHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/CareService_MembersInjector;->injectMCrashlyticsHelper(Lcom/texa/careapp/app/service/CareService;Ldagger/Lazy;)V

    return-object p1
.end method

.method private injectChangeLockStatusJob(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;)Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;
    .locals 1

    .line 3122
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectCompanyInfoActivity(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoActivity;)Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoActivity;
    .locals 1

    .line 2677
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2678
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2679
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2680
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2681
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2682
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectCompanyInfoScreen(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;)Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;
    .locals 1

    .line 2687
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectContactsActivity(Lcom/texa/careapp/app/sos/ContactsActivity;)Lcom/texa/careapp/app/sos/ContactsActivity;
    .locals 1

    .line 2392
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2393
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2394
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2395
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2396
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2397
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectContactsScreen(Lcom/texa/careapp/app/sos/ContactsScreen;)Lcom/texa/careapp/app/sos/ContactsScreen;
    .locals 1

    .line 1918
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1919
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/FlavorDelegator;)V

    .line 1920
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 1921
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 1922
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1923
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 1924
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideMechanicDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMMechanicDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/utils/MechanicDataManager;)V

    .line 1925
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectEventBus(Lcom/texa/careapp/app/sos/ContactsScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 1926
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1927
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 1928
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/ContactsScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/profile/Profile;)V

    return-object p1
.end method

.method private injectCountryScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;
    .locals 1

    .line 2951
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectCrashLogJob(Lcom/texa/careapp/sync/jobs/CrashLogJob;)Lcom/texa/careapp/sync/jobs/CrashLogJob;
    .locals 1

    .line 3127
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/CrashLogJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/CrashLogJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectDTCJob(Lcom/texa/careapp/sync/jobs/DTCJob;)Lcom/texa/careapp/sync/jobs/DTCJob;
    .locals 1

    .line 3132
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/DTCJob_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/DTCJob;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 3133
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/DTCJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/DTCJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectDashboardScreenAdapter(Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;)Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;
    .locals 1

    .line 2311
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectDashboardScreenV2(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Lcom/texa/careapp/app/dashboard/DashboardScreenV2;
    .locals 1

    .line 2290
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 2291
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 2292
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 2293
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Landroid/content/SharedPreferences;)V

    .line 2294
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2295
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/FlavorDelegator;)V

    .line 2296
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2297
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Landroid/content/Context;)V

    .line 2298
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2299
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2300
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2301
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2302
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 2303
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2304
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 2305
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePercentColorHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMPercentColorHelper(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/utils/PercentColorHelper;)V

    .line 2306
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectDiagnosisActivity(Lcom/texa/careapp/app/diagnosis/DiagnosisActivity;)Lcom/texa/careapp/app/diagnosis/DiagnosisActivity;
    .locals 1

    .line 2270
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2271
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2272
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2273
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2274
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2275
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectDiagnosisCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;
    .locals 1

    .line 2317
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Landroid/content/Context;)V

    .line 2318
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2319
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 2320
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;Lcom/texa/carelib/communication/Communication;)V

    return-object p1
.end method

.method private injectDiagnosisDataActivity(Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;)Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;
    .locals 1

    .line 2280
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2281
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2282
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2283
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2284
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2285
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectDiagnosisDataPagerAdapter(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;)Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;
    .locals 1

    .line 2363
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectDiagnosisScreen(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;
    .locals 1

    .line 2352
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2353
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePercentColorHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/PercentColorHelper;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMPercentColorHelper(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/utils/PercentColorHelper;)V

    .line 2354
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 2355
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 2356
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectVehicleParametersManager(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 2357
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-object p1
.end method

.method private injectDongleDiscoveryScreen(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;
    .locals 1

    .line 2899
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 2900
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2901
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaProfileDelegateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TexaProfileDelegate;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMTexaProfileDelegate(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/utils/TexaProfileDelegate;)V

    .line 2902
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMTexaCareApiServiceClient(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/networking/TexaCareApiServiceClient;)V

    .line 2903
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 2904
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 2905
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2906
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2907
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectDtcManager(Lcom/texa/careapp/utils/DtcManager;)Lcom/texa/careapp/utils/DtcManager;
    .locals 1

    .line 2793
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2794
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/utils/DtcManager;Landroid/content/SharedPreferences;)V

    .line 2795
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/DtcManager_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectEcoDrivingActivity(Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;)Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;
    .locals 1

    .line 2402
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2403
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2404
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2405
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2406
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2407
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2408
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2409
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectEcoDrivingCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;
    .locals 1

    .line 2462
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Landroid/content/Context;)V

    .line 2463
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Landroid/content/SharedPreferences;)V

    .line 2464
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2465
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectCareObserver(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 2466
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAvgCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter_MembersInjector;->injectAvgCalculator(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V

    return-object p1
.end method

.method private injectEcoDrivingDialogHideTrip(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;
    .locals 1

    .line 2509
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2510
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectEcoDrivingHintActivity(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;
    .locals 1

    .line 2441
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2442
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2443
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2444
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2445
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2446
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectEcoDrivingHintAdapter(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;)Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;
    .locals 1

    .line 2451
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectEcoDrivingScreen(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;
    .locals 1

    .line 2414
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2415
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAvgCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->injectAvgCalculator(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V

    .line 2416
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2417
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen_MembersInjector;->injectCareObserver(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    return-object p1
.end method

.method private injectEcoDrivingScreenDayAdapter(Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;)Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;
    .locals 1

    .line 2423
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectEcoDrivingTripDetailScreen(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;
    .locals 1

    .line 2436
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAvgCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen_MembersInjector;->injectAvgCalculator(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V

    return-object p1
.end method

.method private injectEcoDrivingTutorialActivity(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;
    .locals 1

    .line 2478
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2479
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2480
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2481
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2482
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2483
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2484
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;Landroid/content/SharedPreferences;)V

    .line 2485
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    return-object p1
.end method

.method private injectEcoDrivingTutorialAdapter(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;)Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;
    .locals 1

    .line 2472
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectEmergencyInfoJob(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;)Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;
    .locals 1

    .line 3111
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 3112
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;->injectMPreferences(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectEmergencyInfoMessageJob(Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;)Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;
    .locals 1

    .line 3210
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 3211
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob_MembersInjector;->injectMPreferences(Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectEnableBluetoothScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;
    .locals 1

    .line 3088
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectErrorDTCViewPresenter(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;)Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;
    .locals 1

    .line 2368
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;Landroid/content/Context;)V

    .line 2369
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLampsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/lamps/LampsManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->injectMLampsManager(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;Lcom/texa/careapp/lamps/LampsManager;)V

    .line 2370
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object p1
.end method

.method private injectFactoryResetScreenDialog(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;
    .locals 1

    .line 3080
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 3081
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 3082
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/FactoryResetScreenDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectFcmMessagingService(Lcom/texa/careapp/fcm/FcmMessagingService;)Lcom/texa/careapp/fcm/FcmMessagingService;
    .locals 1

    .line 2023
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2024
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2025
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMEventBus(Lcom/texa/careapp/fcm/FcmMessagingService;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2026
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 2027
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/fcm/FcmMessagingService;Landroid/app/NotificationManager;)V

    .line 2028
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/fcm/FcmMessagingService_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/fcm/FcmMessagingService;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectFindVehicleCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;
    .locals 1

    .line 2345
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;Landroid/content/Context;)V

    .line 2346
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;Lcom/texa/carelib/communication/Communication;)V

    .line 2347
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-object p1
.end method

.method private injectFirmwareUpdateController(Lcom/texa/careapp/app/update/FirmwareUpdateController;)Lcom/texa/careapp/app/update/FirmwareUpdateController;
    .locals 1

    .line 3094
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lorg/greenrobot/eventbus/EventBus;)V

    .line 3095
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFirmwareUpgradeProcedureProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectMFirmwareUpgradeProcedure(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;)V

    .line 3096
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectProfile(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/profile/Profile;)V

    .line 3097
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectAccessory(Lcom/texa/careapp/app/update/FirmwareUpdateController;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 3098
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController_MembersInjector;->injectMPrefs(Lcom/texa/careapp/app/update/FirmwareUpdateController;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectFirmwareUpdateService(Lcom/texa/careapp/app/update/FirmwareUpdateService;)Lcom/texa/careapp/app/update/FirmwareUpdateService;
    .locals 1

    .line 3033
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 3034
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 3035
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 3036
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/communication/Communication;)V

    .line 3037
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/carelib/webservices/TexaService;)V

    .line 3038
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFirmwareUpdateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/update/FirmwareUpdateController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMFirmwareUpdateController(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/careapp/app/update/FirmwareUpdateController;)V

    .line 3039
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideWakelockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/wakelock/WakelockManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMWakelockManager(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/careapp/utils/wakelock/WakelockManager;)V

    .line 3040
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMServiceNotificationController(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    .line 3041
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 3042
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/update/FirmwareUpdateService_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/update/FirmwareUpdateService;Lcom/texa/carelib/profile/Profile;)V

    return-object p1
.end method

.method private injectGeneralSettingsActivity(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;)Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;
    .locals 1

    .line 2490
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2491
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2492
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2493
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2494
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2495
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectGeneralSettingsScreen(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;
    .locals 1

    .line 2699
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;Landroid/content/SharedPreferences;)V

    .line 2700
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDrivingStyleManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/DrivingStyleManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->injectDrivingStyleManager(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;Lcom/texa/care/eco_driving/DrivingStyleManager;)V

    .line 2701
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceNotificationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/service/ServiceNotificationController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen_MembersInjector;->injectMServiceNotificationController(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;Lcom/texa/careapp/app/service/ServiceNotificationController;)V

    return-object p1
.end method

.method private injectHintPresenter(Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;)Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;
    .locals 1

    .line 2456
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectInsertNewThresholdActivity(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdActivity;)Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdActivity;
    .locals 1

    .line 2013
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2014
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2015
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2016
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2017
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2018
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectInsertNewThresholdScreen(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;)Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;
    .locals 1

    .line 2693
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2694
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectInstallationHelpScreen(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;)Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;
    .locals 1

    .line 2891
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 2892
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2893
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Landroid/content/SharedPreferences;)V

    .line 2894
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/InstallationHelpScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectLampJob(Lcom/texa/careapp/sync/jobs/LampJob;)Lcom/texa/careapp/sync/jobs/LampJob;
    .locals 1

    .line 3138
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/LampJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/LampJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 3139
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/LampJob_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/LampJob;Lcom/texa/careapp/utils/VehicleDataManager;)V

    return-object p1
.end method

.method private injectLampsManager(Lcom/texa/careapp/lamps/LampsManager;)Lcom/texa/careapp/lamps/LampsManager;
    .locals 1

    .line 2786
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/lamps/LampsManager_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2787
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/lamps/LampsManager_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/lamps/LampsManager;Landroid/content/SharedPreferences;)V

    .line 2788
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/lamps/LampsManager_MembersInjector;->injectMCareWorkerManager(Lcom/texa/careapp/lamps/LampsManager;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectLogJob(Lcom/texa/careapp/sync/jobs/LogJob;)Lcom/texa/careapp/sync/jobs/LogJob;
    .locals 1

    .line 3144
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/LogJob;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 3145
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareServiceBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareServiceBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/LogJob_MembersInjector;->injectMTexaCareServiceBus(Lcom/texa/careapp/sync/jobs/LogJob;Lcom/texa/careapp/networking/TexaCareServiceBus;)V

    return-object p1
.end method

.method private injectLoginActivity(Lcom/texa/careapp/app/auth/LoginActivity;)Lcom/texa/careapp/app/auth/LoginActivity;
    .locals 1

    .line 1812
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1813
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1814
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 1815
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1816
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 1817
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 1818
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1819
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 1820
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDataManagerConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMDataManagerConfiguration(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    .line 1821
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMTexaCareAuthService(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/networking/TexaCareAuthService;)V

    .line 1822
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->provideClientId(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMClientId(Lcom/texa/careapp/app/auth/LoginActivity;Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientSecretFactory;->provideClientSecret(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMClientSecret(Lcom/texa/careapp/app/auth/LoginActivity;Ljava/lang/String;)V

    .line 1824
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/LoginActivity_MembersInjector;->injectMAccessTokenPersistenceManagerClient(Lcom/texa/careapp/app/auth/LoginActivity;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    return-object p1
.end method

.method private injectLoginHelperRx(Lcom/texa/careapp/utils/LoginHelperRx;)Lcom/texa/careapp/utils/LoginHelperRx;
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->provideClientId(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMClientId(Lcom/texa/careapp/utils/LoginHelperRx;Ljava/lang/String;)V

    .line 1843
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientSecretFactory;->provideClientSecret(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMClientSecret(Lcom/texa/careapp/utils/LoginHelperRx;Ljava/lang/String;)V

    .line 1844
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1845
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 1846
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccountManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMAccountManager(Lcom/texa/careapp/utils/LoginHelperRx;Landroid/accounts/AccountManager;)V

    .line 1847
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMContext(Lcom/texa/careapp/utils/LoginHelperRx;Landroid/content/Context;)V

    .line 1848
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMTexaCareAuthService(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/networking/TexaCareAuthService;)V

    .line 1849
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMAccessTokenPersistenceManagerClient(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    .line 1850
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMAccessTokenPersistenceManagerUser(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    .line 1851
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 1852
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCrashlyticsHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMCrashlyticsHelper(Lcom/texa/careapp/utils/LoginHelperRx;Ldagger/Lazy;)V

    .line 1853
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/FlavorDelegator;)V

    .line 1854
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1855
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/utils/LoginHelperRx;Landroid/content/SharedPreferences;)V

    .line 1856
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 1857
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 1858
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 1859
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/LoginHelperRx_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/utils/LoginHelperRx;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectMainActivity(Lcom/texa/careapp/app/MainActivity;)Lcom/texa/careapp/app/MainActivity;
    .locals 1

    .line 1676
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1677
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1678
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 1679
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1680
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 1681
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 1682
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1683
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 1684
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/MainActivity;Lcom/texa/carelib/communication/Communication;)V

    .line 1685
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/MainActivity;Landroid/content/SharedPreferences;)V

    .line 1686
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/app/MainActivity;Landroid/app/NotificationManager;)V

    .line 1687
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 1688
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 1689
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1690
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 1691
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 1692
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFcmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/fcm/FcmManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectFcmManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/fcm/FcmManager;)V

    .line 1693
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 1694
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 1695
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1696
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/MainActivity_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/MainActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectMechanicActivity(Lcom/texa/careapp/app/sos/MechanicActivity;)Lcom/texa/careapp/app/sos/MechanicActivity;
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2066
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2067
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2068
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2069
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2070
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2071
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideMechanicDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->injectMMechanicDataManager(Lcom/texa/careapp/app/sos/MechanicActivity;Lcom/texa/careapp/utils/MechanicDataManager;)V

    .line 2072
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/MechanicActivity_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/sos/MechanicActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V

    return-object p1
.end method

.method private injectNavigationDrawerFragment(Lcom/texa/careapp/base/NavigationDrawerFragment;)Lcom/texa/careapp/base/NavigationDrawerFragment;
    .locals 1

    .line 1984
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMEventBus(Lcom/texa/careapp/base/NavigationDrawerFragment;Lorg/greenrobot/eventbus/EventBus;)V

    .line 1985
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1986
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 1987
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMCommunicationObserver(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 1988
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMCommunication(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/carelib/communication/Communication;)V

    .line 1989
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/base/NavigationDrawerFragment;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 1990
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMContext(Lcom/texa/careapp/base/NavigationDrawerFragment;Landroid/content/Context;)V

    .line 1991
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/base/NavigationDrawerFragment;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectNoSosServiceActivity(Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;)Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2155
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2156
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2157
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2158
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2159
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2160
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectNoSosServiceScreen(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;)Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;
    .locals 1

    .line 2588
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectNumberValidatorFinalStepScreen(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;
    .locals 1

    .line 2981
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2982
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2983
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    return-object p1
.end method

.method private injectNumberValidatorScreen(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;
    .locals 1

    .line 2988
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2989
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2990
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectOnBoardingActivity(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)Lcom/texa/careapp/app/onboarding/OnBoardingActivity;
    .locals 1

    .line 2861
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2862
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2863
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2864
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2865
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2866
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2867
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDiagnosticConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity_MembersInjector;->injectMDiagnosticConfiguration(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;)V

    .line 2868
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2869
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/carelib/communication/Communication;)V

    .line 2870
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2871
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 2872
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2873
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/OnBoardingActivity_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    return-object p1
.end method

.method private injectOnBoardingConfigurationActivity(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;
    .locals 1

    .line 1963
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1964
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1965
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 1966
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1967
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 1968
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 1969
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/utils/FormValidator;)V

    .line 1970
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 1971
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMCommunication(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/carelib/communication/Communication;)V

    .line 1972
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1973
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMAccessory(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 1974
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 1975
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Landroid/content/SharedPreferences;)V

    .line 1976
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 1977
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDataManagerConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMDataManagerConfiguration(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    .line 1978
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectOnBoardingErrorDialog(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;)Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;
    .locals 1

    .line 3074
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectOnBoardingErrorEngineDialog(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;
    .locals 1

    .line 3104
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;Lorg/greenrobot/eventbus/EventBus;)V

    .line 3105
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 3106
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;Lcom/texa/careapp/utils/UserDataManager;)V

    return-object p1
.end method

.method private injectParameterJob(Lcom/texa/careapp/sync/jobs/ParameterJob;)Lcom/texa/careapp/sync/jobs/ParameterJob;
    .locals 1

    .line 3150
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/ParameterJob;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 3151
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ParameterJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/ParameterJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectParametersCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;
    .locals 1

    .line 2334
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;Landroid/content/Context;)V

    .line 2335
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2336
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 2337
    invoke-direct {p0}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleParamMapperV2()Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter_MembersInjector;->injectMVehicleParamMapper(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;Lcom/texa/careapp/parameters/VehicleParamMapperV2;)V

    .line 2338
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;Landroid/content/SharedPreferences;)V

    .line 2339
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;Lcom/texa/carelib/communication/Communication;)V

    return-object p1
.end method

.method private injectParametersChooseChartDialog(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;)Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;
    .locals 1

    .line 2386
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;Landroid/content/SharedPreferences;)V

    .line 2387
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectParametersViewPresenterV2(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;
    .locals 1

    .line 2655
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMContext(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Landroid/content/Context;)V

    .line 2656
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 2657
    invoke-direct {p0}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleParamMapperV2()Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMVehicleParamMapper(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/parameters/VehicleParamMapperV2;)V

    .line 2658
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2659
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/carelib/communication/Communication;)V

    .line 2660
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    return-object p1
.end method

.method private injectPeriodicTaskJob(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;)Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;
    .locals 1

    .line 3193
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 3194
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 3195
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/PeriodicTaskJob_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-object p1
.end method

.method private injectPermissionActivity(Lcom/texa/careapp/app/permission/PermissionActivity;)Lcom/texa/careapp/app/permission/PermissionActivity;
    .locals 1

    .line 2924
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2925
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2926
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2927
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2928
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2929
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2930
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/permission/PermissionActivity_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/permission/PermissionActivity;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectPermissionAdapter(Lcom/texa/careapp/app/permission/PermissionAdapter;)Lcom/texa/careapp/app/permission/PermissionAdapter;
    .locals 1

    .line 2940
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/permission/PermissionAdapter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/permission/PermissionAdapter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectPermissionPresenter(Lcom/texa/careapp/app/permission/PermissionPresenter;)Lcom/texa/careapp/app/permission/PermissionPresenter;
    .locals 1

    .line 2935
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/permission/PermissionPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/permission/PermissionPresenter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectPlateValidationScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;
    .locals 1

    .line 3010
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectProblemResolutionActivity(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;)Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;
    .locals 1

    .line 2086
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2087
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2088
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2089
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2090
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2091
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectProblemResolutionScreen(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;
    .locals 1

    .line 2665
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Landroid/content/Context;)V

    .line 2666
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 2667
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 2668
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 2669
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 2670
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2671
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectCommunication(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 2672
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectPurchaseDataJob(Lcom/texa/careapp/sync/jobs/PurchaseDataJob;)Lcom/texa/careapp/sync/jobs/PurchaseDataJob;
    .locals 1

    .line 3156
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/PurchaseDataJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/PurchaseDataJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectRecoverPasswordScreen(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)Lcom/texa/careapp/app/auth/RecoverPasswordScreen;
    .locals 1

    .line 2049
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 2050
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2051
    invoke-direct {p0}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->texaCareAuthServiceHelper()Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->injectMTexaCareAuthServiceHelper(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;)V

    .line 2052
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/RecoverPasswordScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;Lcom/texa/careapp/networking/TexaCareApiServiceClient;)V

    return-object p1
.end method

.method private injectResetExpiredScheduleScreen(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;)Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Landroid/content/Context;)V

    .line 2185
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2186
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2187
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2188
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V

    return-object p1
.end method

.method private injectRxCareService(Lcom/texa/careapp/app/service/RxCareService;)Lcom/texa/careapp/app/service/RxCareService;
    .locals 1

    .line 2077
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCurrentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCurrentTrip(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/trips/CurrentTrip;)V

    .line 2078
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 2079
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 2080
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/RxCareService_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/service/RxCareService;Lcom/texa/carelib/communication/Communication;)V

    return-object p1
.end method

.method private injectScheduleActivity(Lcom/texa/careapp/app/schedule/ScheduleActivity;)Lcom/texa/careapp/app/schedule/ScheduleActivity;
    .locals 1

    .line 2193
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2194
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2195
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2196
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2197
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2198
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2199
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/ScheduleActivity;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectScheduleCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;
    .locals 1

    .line 2326
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Landroid/content/Context;)V

    .line 2327
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2328
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-object p1
.end method

.method private injectScheduleScreen(Lcom/texa/careapp/app/schedule/ScheduleScreen;)Lcom/texa/careapp/app/schedule/ScheduleScreen;
    .locals 1

    .line 1906
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/schedule/ScheduleScreen;Landroid/content/Context;)V

    .line 1907
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1908
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 1909
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 1910
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 1911
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 1912
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/ScheduleScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 1913
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/ScheduleScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/schedule/ScheduleScreen;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectSchedulesAdapter(Lcom/texa/careapp/app/schedule/SchedulesAdapter;)Lcom/texa/careapp/app/schedule/SchedulesAdapter;
    .locals 1

    .line 2204
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->injectVehicleObserver(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2205
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 2206
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideBinderScheduleViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/schedule/BinderScheduleView;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/SchedulesAdapter_MembersInjector;->injectMBinderScheduleView(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/app/schedule/BinderScheduleView;)V

    return-object p1
.end method

.method private injectSelectNewScheduleScreen(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2212
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2213
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2214
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    return-object p1
.end method

.method private injectServiceOneOffJob(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;)Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;
    .locals 1

    .line 3200
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMNotificationManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Landroid/app/NotificationManager;)V

    .line 3201
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 3202
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 3203
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 3204
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 3205
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ServiceOneOffJob_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object p1
.end method

.method private injectServicesSubscriptionManagerActivity(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;)Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;
    .locals 1

    .line 2769
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2770
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2771
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2772
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2773
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2774
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectServicesSubscriptionManagerScreen(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;)Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;
    .locals 1

    .line 2780
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;Landroid/content/Context;)V

    .line 2781
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    return-object p1
.end method

.method private injectSetDefaultDateThresholdScreen(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;
    .locals 1

    .line 2220
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 2221
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectSetDefaultOdometerThresholdScreen(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;
    .locals 1

    .line 2227
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 2228
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectSetInsuranceCompanyScreen(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;
    .locals 1

    .line 2258
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceClient;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;Lcom/texa/careapp/networking/TexaCareApiServiceClient;)V

    return-object p1
.end method

.method private injectSetInsuranceDateThresholdScreen(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;
    .locals 1

    .line 2245
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V

    .line 2246
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectSetTyresOdometerScreen(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;)Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;
    .locals 1

    .line 2251
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2252
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideScheduleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ScheduleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen_MembersInjector;->injectMScheduleDataManager(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;Lcom/texa/careapp/model/ScheduleDataManager;)V

    return-object p1
.end method

.method private injectSettingsActivity(Lcom/texa/careapp/app/settings/SettingsActivity;)Lcom/texa/careapp/app/settings/SettingsActivity;
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1865
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1866
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 1867
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1868
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 1869
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 1870
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/SettingsActivity;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectSettingsAdapter(Lcom/texa/careapp/app/settings/SettingsAdapter;)Lcom/texa/careapp/app/settings/SettingsAdapter;
    .locals 1

    .line 2500
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2501
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 2502
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2503
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsAdapter_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-object p1
.end method

.method private injectSettingsCareActivity(Lcom/texa/careapp/app/settings/settingscare/SettingsCareActivity;)Lcom/texa/careapp/app/settings/settingscare/SettingsCareActivity;
    .locals 1

    .line 1940
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1941
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1942
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 1943
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1944
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 1945
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectSettingsCareScreen(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;
    .locals 1

    .line 2644
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Landroid/content/Context;)V

    .line 2645
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2646
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 2647
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/carelib/webservices/TexaService;)V

    .line 2648
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2649
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;Lcom/texa/carelib/care/accessory/Accessory;)V

    return-object p1
.end method

.method private injectSettingsScreen(Lcom/texa/careapp/app/settings/SettingsScreen;)Lcom/texa/careapp/app/settings/SettingsScreen;
    .locals 1

    .line 2629
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/SettingsScreen;Landroid/content/Context;)V

    .line 2630
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/carelib/profile/Profile;)V

    .line 2631
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/carelib/webservices/TexaService;)V

    .line 2632
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2633
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2634
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2635
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationObservableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMCommunicationObservable(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/carelib/CommunicationObservable;)V

    .line 2636
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2637
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2638
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 2639
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/SettingsScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/SettingsScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectSettingsServicesActivity(Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;)Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;
    .locals 1

    .line 2749
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2750
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2751
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2752
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2753
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2754
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectSettingsServicesScreen(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;
    .locals 1

    .line 2759
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2760
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2761
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 2762
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideSosFeatureManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMSosFeatureManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    .line 2763
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/services/SettingsServicesScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object p1
.end method

.method private injectSettingsTyresActivity(Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;)Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;
    .locals 1

    .line 2096
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2097
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2098
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2099
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2100
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2101
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2102
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2103
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V

    return-object p1
.end method

.method private injectSettingsUserActivity(Lcom/texa/careapp/app/settings/user/SettingsUserActivity;)Lcom/texa/careapp/app/settings/user/SettingsUserActivity;
    .locals 1

    .line 1875
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1876
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1877
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 1878
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1879
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 1880
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectSettingsUserAddressActivity(Lcom/texa/careapp/app/settings/user/SettingsUserAddressActivity;)Lcom/texa/careapp/app/settings/user/SettingsUserAddressActivity;
    .locals 1

    .line 1886
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1887
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1888
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 1889
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1890
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 1891
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectSettingsUserAddressScreen(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;
    .locals 1

    .line 2726
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;Landroid/content/Context;)V

    .line 2727
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2728
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;Lcom/texa/careapp/FlavorDelegator;)V

    return-object p1
.end method

.method private injectSettingsUserScreen(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Lcom/texa/careapp/app/settings/user/SettingsUserScreen;
    .locals 1

    .line 2716
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFlavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/FlavorDelegator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMFlavorDelegator(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/FlavorDelegator;)V

    .line 2717
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMContext(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Landroid/content/Context;)V

    .line 2718
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    .line 2719
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 2720
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/user/SettingsUserScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    return-object p1
.end method

.method private injectSettingsVehicleActivity(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleActivity;)Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleActivity;
    .locals 1

    .line 1896
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1897
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1898
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 1899
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 1900
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 1901
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    return-object p1
.end method

.method private injectSettingsVehicleScreen(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;
    .locals 1

    .line 2706
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2707
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2708
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2709
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 2710
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    .line 2711
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen_MembersInjector;->injectMVehicleParametersManagerV2(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    return-object p1
.end method

.method private injectSignInScreen(Lcom/texa/careapp/app/auth/SignInScreen;)Lcom/texa/careapp/app/auth/SignInScreen;
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 1727
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMLoginHelper(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 1728
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1729
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 1730
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMLogInHelper(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 1731
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/auth/SignInScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 1732
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 1733
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectDongleDataManager(Lcom/texa/careapp/app/auth/SignInScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1734
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideNotificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignInScreen_MembersInjector;->injectNotificationManager(Lcom/texa/careapp/app/auth/SignInScreen;Landroid/app/NotificationManager;)V

    return-object p1
.end method

.method private injectSignUpEmailScreen(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)Lcom/texa/careapp/app/auth/SignUpEmailScreen;
    .locals 1

    .line 1739
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 1740
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1741
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/carelib/profile/Profile;)V

    .line 1742
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 1743
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpEmailScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/auth/SignUpEmailScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectSignUpPasswordScreen(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Lcom/texa/careapp/app/auth/SignUpPasswordScreen;
    .locals 1

    .line 2808
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 2809
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2810
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->injectMProfile(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/carelib/profile/Profile;)V

    .line 2811
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPasswordScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    return-object p1
.end method

.method private injectSignUpPersonalDataScreen(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;
    .locals 1

    .line 2817
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Landroid/content/SharedPreferences;)V

    .line 2818
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFormValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/FormValidator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMFormValidator(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/FormValidator;)V

    .line 2819
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2820
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 2821
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen_MembersInjector;->injectMLoginHelper(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    return-object p1
.end method

.method private injectSosFirmwareWarningDialog(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;
    .locals 1

    .line 2734
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;Lcom/texa/carelib/communication/Communication;)V

    return-object p1
.end method

.method private injectSosInAppBillingSubscription(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;)Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;
    .locals 1

    .line 2563
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2564
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2565
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2566
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2567
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2568
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2569
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;Lorg/greenrobot/eventbus/EventBus;)V

    return-object p1
.end method

.method private injectSosPrerequisiteActivity(Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;)Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;
    .locals 1

    .line 2135
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2136
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2137
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2138
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2139
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2140
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2141
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteActivity_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-object p1
.end method

.method private injectSosPrerequisiteNotificationController(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;
    .locals 1

    .line 2957
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-object p1
.end method

.method private injectSosPrerequisiteScreen(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;
    .locals 1

    .line 2613
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2614
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideServiceDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMServiceDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/utils/ServiceDataManager;)V

    .line 2615
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/carelib/communication/Communication;)V

    .line 2616
    invoke-direct {p0}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->checksFactory()Lcom/texa/careapp/checks/ChecksFactory;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMChecksFactory(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/checks/ChecksFactory;)V

    .line 2617
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/utils/UserDataManager;)V

    return-object p1
.end method

.method private injectSplashActivity(Lcom/texa/careapp/app/SplashActivity;)Lcom/texa/careapp/app/SplashActivity;
    .locals 1

    .line 2033
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2034
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2035
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2036
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2037
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2038
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2039
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/SplashActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/SplashActivity;Landroid/content/SharedPreferences;)V

    .line 2040
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/SplashActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/SplashActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2041
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/SplashActivity_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/SplashActivity;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2042
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/SplashActivity_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/SplashActivity;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 2043
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/SplashActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/SplashActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2044
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/SplashActivity_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/SplashActivity;Lcom/texa/carelib/care/accessory/Accessory;)V

    return-object p1
.end method

.method private injectStartEngineScreen(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)Lcom/texa/careapp/app/onboarding/StartEngineScreen;
    .locals 1

    .line 2995
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Landroid/content/SharedPreferences;)V

    .line 2996
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 2997
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2998
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2999
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 3000
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    .line 3001
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 3002
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 3003
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleInfoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMVehicleInfo(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)V

    .line 3004
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/StartEngineScreen_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/onboarding/StartEngineScreen;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object p1
.end method

.method private injectThresholdsJob(Lcom/texa/careapp/sync/jobs/ThresholdsJob;)Lcom/texa/careapp/sync/jobs/ThresholdsJob;
    .locals 1

    .line 3161
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ThresholdsJob_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/ThresholdsJob;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 3162
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/ThresholdsJob_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/sync/jobs/ThresholdsJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectTripJob(Lcom/texa/careapp/sync/jobs/TripJob;)Lcom/texa/careapp/sync/jobs/TripJob;
    .locals 1

    .line 3167
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/utils/LoginHelperRx;)V

    .line 3168
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTripDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/TripDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->injectMTripDataManager(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/utils/TripDataManager;)V

    .line 3169
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 3170
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRetrofitErrorParserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/TripJob_MembersInjector;->injectMRetrofitErrorParser(Lcom/texa/careapp/sync/jobs/TripJob;Lcom/texa/careapp/utils/RetrofitErrorParser;)V

    return-object p1
.end method

.method private injectTyresInversionScreen(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;
    .locals 1

    .line 2114
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2115
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    .line 2116
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectTyresNewInstallScreen(Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;)Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;
    .locals 1

    .line 2108
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2109
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectUpdateConfigurationActivity(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)Lcom/texa/careapp/configuration/UpdateConfigurationActivity;
    .locals 1

    .line 3016
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 3017
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 3018
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 3019
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 3020
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 3021
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 3022
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMEventBus(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lorg/greenrobot/eventbus/EventBus;)V

    .line 3023
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMCommunication(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/carelib/communication/Communication;)V

    .line 3024
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 3025
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMAccessory(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 3026
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 3027
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleParametersManagerV2Provider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMVehicleParametersManager(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    .line 3028
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationActivity_MembersInjector;->injectMVehicle(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;Lcom/texa/carelib/care/vehicle/Vehicle;)V

    return-object p1
.end method

.method private injectUpdateConfigurationIntentService(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;)Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;
    .locals 1

    .line 1951
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/Profile;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMProfile(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/profile/Profile;)V

    .line 1952
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDiagnosticConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMDiagnosticConfiguration(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;)V

    .line 1953
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMTexaService(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/webservices/TexaService;)V

    .line 1954
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 1955
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1956
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMEventBus(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lorg/greenrobot/eventbus/EventBus;)V

    .line 1957
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    return-object p1
.end method

.method private injectUpdateFirmwareDialog(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;
    .locals 1

    .line 2739
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCareObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/carelib/ICareObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMCareObserver(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/carelib/ICareObserver;)V

    .line 2740
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2741
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/webservices/TexaService;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMTexaService(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/carelib/webservices/TexaService;)V

    .line 2742
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideFirmwareUpdateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/update/FirmwareUpdateController;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMFirmwareUpdateController(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/careapp/app/update/FirmwareUpdateController;)V

    .line 2743
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/UpdateFirmwareDialog_MembersInjector;->injectMAccessory(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;Lcom/texa/carelib/care/accessory/Accessory;)V

    return-object p1
.end method

.method private injectUserTaskJob(Lcom/texa/careapp/sync/jobs/UserTaskJob;)Lcom/texa/careapp/sync/jobs/UserTaskJob;
    .locals 1

    .line 3175
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/sync/jobs/UserTaskJob;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 3176
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/UserTaskJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/UserTaskJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectVehicleAlarmsJob(Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;)Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;
    .locals 1

    .line 3181
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 3182
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectVehicleAlreadyConfiguredScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;
    .locals 1

    .line 3069
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectVehicleDataConfirmationActivity(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;)Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;
    .locals 1

    .line 1997
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 1998
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 1999
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2000
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2001
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2002
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2003
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 2004
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 2005
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDataManagerConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMDataManagerConfiguration(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    .line 2006
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2007
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity_MembersInjector;->injectMCAReWorkerManager(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object p1
.end method

.method private injectVehicleFinderActivity(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;
    .locals 1

    .line 1933
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->injectCommunication(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Lcom/texa/carelib/communication/Communication;)V

    .line 1934
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocationTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LocationTracker;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->injectMLocationTracker(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Lcom/texa/careapp/utils/LocationTracker;)V

    .line 1935
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-object p1
.end method

.method private injectVehicleJob(Lcom/texa/careapp/sync/jobs/VehicleJob;)Lcom/texa/careapp/sync/jobs/VehicleJob;
    .locals 1

    .line 3187
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/VehicleJob_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/sync/jobs/VehicleJob;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 3188
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/VehicleJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/VehicleJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectVehiclePagerAdapter(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;)Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;
    .locals 1

    .line 2375
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectVehiclePresenter(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;)Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;
    .locals 1

    .line 2380
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectVehicleScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;
    .locals 1

    .line 2945
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2946
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog_MembersInjector;->injectMTexaCareApiServiceUser(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    return-object p1
.end method

.method private injectWalkThroughAdapter(Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;)Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;
    .locals 1

    .line 2837
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectWalkthroughActivity(Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;)Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;
    .locals 1

    .line 2826
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2827
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2828
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2829
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2830
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2831
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2832
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;Landroid/content/SharedPreferences;)V

    return-object p1
.end method

.method private injectWalkthroughActivityLastStep(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;
    .locals 1

    .line 2848
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 2849
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2850
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 2851
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 2852
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 2853
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 2854
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->providePreferenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;Landroid/content/SharedPreferences;)V

    .line 2855
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 2856
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideLoginHelperRxFactory;->provideLoginHelperRx(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/utils/LoginHelperRx;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;Lcom/texa/careapp/utils/LoginHelperRx;)V

    return-object p1
.end method

.method private injectWalkthroughPresenter(Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;)Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;
    .locals 1

    .line 2842
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;Landroid/content/Context;)V

    return-object p1
.end method

.method private injectWeekPresenter(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;
    .locals 1

    .line 2428
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/CareModule_ProvideContextFactory;->provideContext(Lcom/texa/careapp/dagger/CareModule;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Landroid/content/Context;)V

    .line 2429
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Lorg/greenrobot/eventbus/EventBus;)V

    .line 2430
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAvgCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter_MembersInjector;->injectAvgCalculator(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;)V

    return-object p1
.end method

.method private texaCareAuthServiceHelper()Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;
    .locals 5

    .line 681
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideTexaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v2}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientIdFactory;->provideClientId(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v3}, Lcom/texa/careapp/dagger/ApiModule_ProvideClientSecretFactory;->provideClientSecret(Lcom/texa/careapp/dagger/ApiModule;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideAccessTokenManagerClientProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->provideTexaCareAuthServiceHelper(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method private vehicleParamMapperV2()Lcom/texa/careapp/parameters/VehicleParamMapperV2;
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->careModule:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->provideCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/communication/Communication;

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;->provideVehicleParamMapperV2(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public inject(Lcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 778
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCareApplication(Lcom/texa/careapp/CareApplication;)Lcom/texa/careapp/CareApplication;

    return-void
.end method

.method public inject(Lcom/texa/careapp/DefaultFlavorDelegator;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/FlavorDelegator;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/MainActivity;)V
    .locals 0

    .line 783
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectMainActivity(Lcom/texa/careapp/app/MainActivity;)Lcom/texa/careapp/app/MainActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/SplashActivity;)V
    .locals 0

    .line 924
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSplashActivity(Lcom/texa/careapp/app/SplashActivity;)Lcom/texa/careapp/app/SplashActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)V
    .locals 0

    .line 1270
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectAcceptationTermsSosServiceScreen(Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;)Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;)V
    .locals 0

    .line 1280
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationLightForeignServiceScreen(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;)V
    .locals 0

    .line 1250
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationLightServiceScreen(Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)V
    .locals 0

    .line 993
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationPlusServiceScreen(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;)V
    .locals 0

    .line 973
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationServiceActivity(Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;)Lcom/texa/careapp/app/activationSosServices/ActivationServiceActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;)V
    .locals 0

    .line 998
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationServiceCompletedScreen(Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationServiceCompletedScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationServiceVehicleDialog(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;)V
    .locals 0

    .line 983
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationTrialServiceScreen(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;)Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;)V
    .locals 0

    .line 988
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectNoSosServiceActivity(Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;)Lcom/texa/careapp/app/activationSosServices/NoSosServiceActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;)V
    .locals 0

    .line 1260
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectNoSosServiceScreen(Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;)Lcom/texa/careapp/app/activationSosServices/NoSosServiceScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;)V
    .locals 0

    .line 1245
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSosInAppBillingSubscription(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;)Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;)V
    .locals 0

    .line 1229
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationServiceContactActivity(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;)Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V
    .locals 0

    .line 1234
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationServiceContactScreen(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;)V
    .locals 0

    .line 1255
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationServiceDeleteContactDialog(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;)Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;)V
    .locals 0

    .line 1240
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationServiceSelectContactNumberDialog(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;)Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;)V
    .locals 0

    .line 1484
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectActivationPhoneNumberActivity(Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;)Lcom/texa/careapp/app/activationSosServices/phone/ActivationPhoneNumberActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)V
    .locals 0

    .line 1489
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectNumberValidatorFinalStepScreen(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;)Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorFinalStepScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V
    .locals 0

    .line 1494
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectNumberValidatorScreen(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;)V
    .locals 0

    .line 1475
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectAcceptTermsOfServiceAndPolicyScreenDialog(Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;)Lcom/texa/careapp/app/auth/AcceptTermsOfServiceAndPolicyScreenDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/auth/LoginActivity;)V
    .locals 0

    .line 823
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectLoginActivity(Lcom/texa/careapp/app/auth/LoginActivity;)Lcom/texa/careapp/app/auth/LoginActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)V
    .locals 0

    .line 929
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectRecoverPasswordScreen(Lcom/texa/careapp/app/auth/RecoverPasswordScreen;)Lcom/texa/careapp/app/auth/RecoverPasswordScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/auth/SignInScreen;)V
    .locals 0

    .line 803
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSignInScreen(Lcom/texa/careapp/app/auth/SignInScreen;)Lcom/texa/careapp/app/auth/SignInScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)V
    .locals 0

    .line 808
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSignUpEmailScreen(Lcom/texa/careapp/app/auth/SignUpEmailScreen;)Lcom/texa/careapp/app/auth/SignUpEmailScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)V
    .locals 0

    .line 1385
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSignUpPasswordScreen(Lcom/texa/careapp/app/auth/SignUpPasswordScreen;)Lcom/texa/careapp/app/auth/SignUpPasswordScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)V
    .locals 0

    .line 1390
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSignUpPersonalDataScreen(Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;)Lcom/texa/careapp/app/auth/SignUpPersonalDataScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/calibration/CalibrationActivity;)V
    .locals 0

    .line 1519
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCalibrationActivity(Lcom/texa/careapp/app/calibration/CalibrationActivity;)Lcom/texa/careapp/app/calibration/CalibrationActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;)V
    .locals 0

    .line 1529
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCalibrationDialogScreen(Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;)Lcom/texa/careapp/app/calibration/CalibrationDialogScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/calibration/CalibrationScreen;)V
    .locals 0

    .line 1524
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCalibrationScreen(Lcom/texa/careapp/app/calibration/CalibrationScreen;)Lcom/texa/careapp/app/calibration/CalibrationScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;)V
    .locals 0

    .line 1073
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDashboardScreenAdapter(Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;)Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V
    .locals 0

    .line 1068
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDashboardScreenV2(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/PowerSaveScreenDialog;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/UnsupportedAndroidDialog;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)V
    .locals 0

    .line 1078
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDiagnosisCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/DiagnosisCardViewPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)V
    .locals 0

    .line 1185
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/EcoDrivingCardViewPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V
    .locals 0

    .line 1093
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectFindVehicleCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)V
    .locals 0

    .line 1088
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectParametersCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/ParametersCardViewPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;)V
    .locals 0

    .line 1127
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectParametersChooseChartDialog(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;)Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)V
    .locals 0

    .line 1083
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectScheduleCardViewPresenter(Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;)Lcom/texa/careapp/app/dashboard/card/ScheduleCardViewPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;)V
    .locals 0

    .line 1117
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectVehiclePagerAdapter(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;)Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;)V
    .locals 0

    .line 1122
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectVehiclePresenter(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;)Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/diagnosis/DiagnosisActivity;)V
    .locals 0

    .line 1058
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDiagnosisActivity(Lcom/texa/careapp/app/diagnosis/DiagnosisActivity;)Lcom/texa/careapp/app/diagnosis/DiagnosisActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/diagnosis/DiagnosisAdvancedDialog;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;)V
    .locals 0

    .line 1063
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDiagnosisDataActivity(Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;)Lcom/texa/careapp/app/diagnosis/DiagnosisDataActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;)V
    .locals 0

    .line 1107
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDiagnosisDataPagerAdapter(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;)Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/diagnosis/DiagnosisDataScreen;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)V
    .locals 0

    .line 1098
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDiagnosisScreen(Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;)Lcom/texa/careapp/app/diagnosis/DiagnosisScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;)V
    .locals 0

    .line 1112
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectErrorDTCViewPresenter(Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;)Lcom/texa/careapp/app/diagnosis/tab/errorDTC/ErrorDTCViewPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)V
    .locals 0

    .line 1295
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectParametersViewPresenterV2(Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;)Lcom/texa/careapp/app/diagnosis/tab/parameters/ParametersViewPresenterV2;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;)V
    .locals 0

    .line 1219
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectAcceptationTermsActivity(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;)Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)V
    .locals 0

    .line 1224
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectAcceptationTermsScreen(Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;)Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;)V
    .locals 0

    .line 1141
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingActivity(Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;)Lcom/texa/careapp/app/ecodriving/EcoDrivingActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)V
    .locals 0

    .line 1214
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingDialogHideTrip(Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;)Lcom/texa/careapp/app/ecodriving/EcoDrivingDialogHideTrip;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)V
    .locals 0

    .line 1146
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingScreen(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;)Lcom/texa/careapp/app/ecodriving/EcoDrivingScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)V
    .locals 0

    .line 1161
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingTripDetailScreen(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;)Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)V
    .locals 0

    .line 1170
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingHintActivity(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;)Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;)V
    .locals 0

    .line 1175
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingHintAdapter(Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;)Lcom/texa/careapp/app/ecodriving/hint/EcoDrivingHintAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;)V
    .locals 0

    .line 1180
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectHintPresenter(Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;)Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;)V
    .locals 0

    .line 1151
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingScreenDayAdapter(Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;)Lcom/texa/careapp/app/ecodriving/pager/EcoDrivingScreenDayAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)V
    .locals 0

    .line 1156
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectWeekPresenter(Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;)Lcom/texa/careapp/app/ecodriving/pager/WeekPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)V
    .locals 0

    .line 1199
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingTutorialActivity(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;)Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;)V
    .locals 0

    .line 1190
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEcoDrivingTutorialAdapter(Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;)Lcom/texa/careapp/app/ecodriving/tutorial/EcoDrivingTutorialAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/ecodriving/tutorial/TutorialPresenter;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)V
    .locals 0

    .line 1420
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectBaseVehicleDataScreen(Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;)Lcom/texa/careapp/app/onboarding/BaseVehicleDataScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)V
    .locals 0

    .line 1435
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCareAuthenticationScreen(Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;)Lcom/texa/careapp/app/onboarding/CareAuthenticationScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/CareSiteScreen;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V
    .locals 0

    .line 1430
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDongleDiscoveryScreen(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;)V
    .locals 0

    .line 1425
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectInstallationHelpScreen(Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;)Lcom/texa/careapp/app/onboarding/InstallationHelpScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)V
    .locals 0

    .line 1415
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectOnBoardingActivity(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;)Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/SellerMapScreen;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)V
    .locals 0

    .line 1499
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectStartEngineScreen(Lcom/texa/careapp/app/onboarding/StartEngineScreen;)Lcom/texa/careapp/app/onboarding/StartEngineScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)V
    .locals 0

    .line 934
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCareConfigurationRequestDialog(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V
    .locals 0

    .line 1464
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCountryScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;)V
    .locals 0

    .line 1553
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEnableBluetoothScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/EnableBluetoothScreenDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;)V
    .locals 0

    .line 1539
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectOnBoardingErrorDialog(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;)Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)V
    .locals 0

    .line 1571
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectOnBoardingErrorEngineDialog(Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;)Lcom/texa/careapp/app/onboarding/dialogs/OnBoardingErrorEngineDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;)V
    .locals 0

    .line 1504
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectPlateValidationScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;)V
    .locals 0

    .line 1534
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectVehicleAlreadyConfiguredScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/VehicleAlreadyConfiguredScreenDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V
    .locals 0

    .line 1459
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectVehicleScreenDialog(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/permission/PermissionActivity;)V
    .locals 0

    .line 1440
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectPermissionActivity(Lcom/texa/careapp/app/permission/PermissionActivity;)Lcom/texa/careapp/app/permission/PermissionActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/permission/PermissionAdapter;)V
    .locals 0

    .line 1450
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectPermissionAdapter(Lcom/texa/careapp/app/permission/PermissionAdapter;)Lcom/texa/careapp/app/permission/PermissionAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/permission/PermissionPresenter;)V
    .locals 0

    .line 1445
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectPermissionPresenter(Lcom/texa/careapp/app/permission/PermissionPresenter;)Lcom/texa/careapp/app/permission/PermissionPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;)V
    .locals 0

    .line 1003
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectResetExpiredScheduleScreen(Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;)Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/ScheduleActivity;)V
    .locals 0

    .line 1008
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectScheduleActivity(Lcom/texa/careapp/app/schedule/ScheduleActivity;)Lcom/texa/careapp/app/schedule/ScheduleActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/ScheduleScreen;)V
    .locals 0

    .line 858
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectScheduleScreen(Lcom/texa/careapp/app/schedule/ScheduleScreen;)Lcom/texa/careapp/app/schedule/ScheduleScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/SchedulesAdapter;)V
    .locals 0

    .line 1013
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSchedulesAdapter(Lcom/texa/careapp/app/schedule/SchedulesAdapter;)Lcom/texa/careapp/app/schedule/SchedulesAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;)V
    .locals 0

    .line 1033
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectAddNewThresholdActivity(Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;)Lcom/texa/careapp/app/schedule/addThreshold/AddNewThresholdActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)V
    .locals 0

    .line 1018
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSelectNewScheduleScreen(Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SelectNewScheduleScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;)V
    .locals 0

    .line 1023
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSetDefaultDateThresholdScreen(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultDateThresholdScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;)V
    .locals 0

    .line 1028
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSetDefaultOdometerThresholdScreen(Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetDefaultOdometerThresholdScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)V
    .locals 0

    .line 1048
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSetInsuranceCompanyScreen(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceCompanyScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;)V
    .locals 0

    .line 1038
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSetInsuranceDateThresholdScreen(Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;)Lcom/texa/careapp/app/schedule/addThreshold/SetInsuranceDateThresholdScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;)V
    .locals 0

    .line 1043
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSetTyresOdometerScreen(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;)Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/service/CareService;)V
    .locals 0

    .line 813
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCareService(Lcom/texa/careapp/app/service/CareService;)Lcom/texa/careapp/app/service/CareService;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/service/RxCareService;)V
    .locals 0

    .line 944
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectRxCareService(Lcom/texa/careapp/app/service/RxCareService;)Lcom/texa/careapp/app/service/RxCareService;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)V
    .locals 0

    .line 1469
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSosPrerequisiteNotificationController(Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;)Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)V
    .locals 0

    .line 1548
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectFactoryResetScreenDialog(Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;)Lcom/texa/careapp/app/settings/FactoryResetScreenDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/SettingsActivity;)V
    .locals 0

    .line 838
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsActivity(Lcom/texa/careapp/app/settings/SettingsActivity;)Lcom/texa/careapp/app/settings/SettingsActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/SettingsAdapter;)V
    .locals 0

    .line 1209
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsAdapter(Lcom/texa/careapp/app/settings/SettingsAdapter;)Lcom/texa/careapp/app/settings/SettingsAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/SettingsScreen;)V
    .locals 0

    .line 1285
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsScreen(Lcom/texa/careapp/app/settings/SettingsScreen;)Lcom/texa/careapp/app/settings/SettingsScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoActivity;)V
    .locals 0

    .line 1305
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCompanyInfoActivity(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoActivity;)Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;)V
    .locals 0

    .line 1310
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCompanyInfoScreen(Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;)Lcom/texa/careapp/app/settings/companyinfo/CompanyInfoScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;)V
    .locals 0

    .line 1204
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectGeneralSettingsActivity(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;)Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)V
    .locals 0

    .line 1320
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectGeneralSettingsScreen(Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;)Lcom/texa/careapp/app/settings/generalsettings/GeneralSettingsScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdActivity;)V
    .locals 0

    .line 910
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectInsertNewThresholdActivity(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdActivity;)Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;)V
    .locals 0

    .line 1315
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectInsertNewThresholdScreen(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;)Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;)V
    .locals 0

    .line 1360
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectServicesSubscriptionManagerActivity(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;)Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;)V
    .locals 0

    .line 1365
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectServicesSubscriptionManagerScreen(Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;)Lcom/texa/careapp/app/settings/services/ServicesSubscriptionManagerScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;)V
    .locals 0

    .line 1350
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsServicesActivity(Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;)Lcom/texa/careapp/app/settings/services/SettingsServicesActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)V
    .locals 0

    .line 1355
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsServicesScreen(Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;)Lcom/texa/careapp/app/settings/services/SettingsServicesScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/settingscare/SettingsCareActivity;)V
    .locals 0

    .line 881
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsCareActivity(Lcom/texa/careapp/app/settings/settingscare/SettingsCareActivity;)Lcom/texa/careapp/app/settings/settingscare/SettingsCareActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/settingscare/SettingsCareFwUpdateScreenDialog;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)V
    .locals 0

    .line 1290
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsCareScreen(Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;)Lcom/texa/careapp/app/settings/settingscare/SettingsCareScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;)V
    .locals 0

    .line 949
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectProblemResolutionActivity(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;)Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)V
    .locals 0

    .line 1300
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectProblemResolutionScreen(Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;)Lcom/texa/careapp/app/settings/troubleshooting/ProblemResolutionScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;)V
    .locals 0

    .line 954
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsTyresActivity(Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;)Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)V
    .locals 0

    .line 968
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectTyresInversionScreen(Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;)Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;)V
    .locals 0

    .line 963
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectTyresNewInstallScreen(Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;)Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/user/SettingsUserActivity;)V
    .locals 0

    .line 843
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsUserActivity(Lcom/texa/careapp/app/settings/user/SettingsUserActivity;)Lcom/texa/careapp/app/settings/user/SettingsUserActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/user/SettingsUserAddressActivity;)V
    .locals 0

    .line 848
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsUserAddressActivity(Lcom/texa/careapp/app/settings/user/SettingsUserAddressActivity;)Lcom/texa/careapp/app/settings/user/SettingsUserAddressActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V
    .locals 0

    .line 1335
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsUserAddressScreen(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)V
    .locals 0

    .line 1330
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsUserScreen(Lcom/texa/careapp/app/settings/user/SettingsUserScreen;)Lcom/texa/careapp/app/settings/user/SettingsUserScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleActivity;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsVehicleActivity(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleActivity;)Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)V
    .locals 0

    .line 1325
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSettingsVehicleScreen(Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;)Lcom/texa/careapp/app/settings/vehicle/SettingsVehicleScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/sos/AlertCentralActivity;)V
    .locals 0

    .line 788
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectAlertCentralActivity(Lcom/texa/careapp/app/sos/AlertCentralActivity;)Lcom/texa/careapp/app/sos/AlertCentralActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V
    .locals 0

    .line 828
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectAutomaticSosPresenter(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/sos/ContactsActivity;)V
    .locals 0

    .line 1132
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectContactsActivity(Lcom/texa/careapp/app/sos/ContactsActivity;)Lcom/texa/careapp/app/sos/ContactsActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/sos/ContactsScreen;)V
    .locals 0

    .line 863
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectContactsScreen(Lcom/texa/careapp/app/sos/ContactsScreen;)Lcom/texa/careapp/app/sos/ContactsScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/sos/MechanicActivity;)V
    .locals 0

    .line 939
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectMechanicActivity(Lcom/texa/careapp/app/sos/MechanicActivity;)Lcom/texa/careapp/app/sos/MechanicActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;)V
    .locals 0

    .line 978
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSosPrerequisiteActivity(Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;)Lcom/texa/careapp/app/sos/SosPrerequisiteActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V
    .locals 0

    .line 1275
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSosPrerequisiteScreen(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/update/FirmwareUpdateController;)V
    .locals 0

    .line 1558
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectFirmwareUpdateController(Lcom/texa/careapp/app/update/FirmwareUpdateController;)Lcom/texa/careapp/app/update/FirmwareUpdateController;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/update/FirmwareUpdateService;)V
    .locals 0

    .line 1514
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectFirmwareUpdateService(Lcom/texa/careapp/app/update/FirmwareUpdateService;)Lcom/texa/careapp/app/update/FirmwareUpdateService;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)V
    .locals 0

    .line 1340
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectSosFirmwareWarningDialog(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)V
    .locals 0

    .line 1345
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectUpdateFirmwareDialog(Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;)Lcom/texa/careapp/app/utils/UpdateFirmwareDialog;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;)V
    .locals 0

    .line 901
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectVehicleDataConfirmationActivity(Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;)Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V
    .locals 0

    .line 876
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectVehicleFinderActivity(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;)V
    .locals 0

    .line 1400
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectWalkThroughAdapter(Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;)Lcom/texa/careapp/app/walkthrough/WalkThroughAdapter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;)V
    .locals 0

    .line 1395
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectWalkthroughActivity(Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;)Lcom/texa/careapp/app/walkthrough/WalkthroughActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)V
    .locals 0

    .line 1410
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectWalkthroughActivityLastStep(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;

    return-void
.end method

.method public inject(Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;)V
    .locals 0

    .line 1405
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectWalkthroughPresenter(Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;)Lcom/texa/careapp/app/walkthrough/WalkthroughPresenter;

    return-void
.end method

.method public inject(Lcom/texa/careapp/base/BaseFragment;)V
    .locals 0

    .line 793
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectBaseFragment(Lcom/texa/careapp/base/BaseFragment;)Lcom/texa/careapp/base/BaseFragment;

    return-void
.end method

.method public inject(Lcom/texa/careapp/base/NavigationDrawerFragment;)V
    .locals 0

    .line 896
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectNavigationDrawerFragment(Lcom/texa/careapp/base/NavigationDrawerFragment;)Lcom/texa/careapp/base/NavigationDrawerFragment;

    return-void
.end method

.method public inject(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)V
    .locals 0

    .line 891
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectOnBoardingConfigurationActivity(Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;)Lcom/texa/careapp/configuration/OnBoardingConfigurationActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)V
    .locals 0

    .line 1509
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectUpdateConfigurationActivity(Lcom/texa/careapp/configuration/UpdateConfigurationActivity;)Lcom/texa/careapp/configuration/UpdateConfigurationActivity;

    return-void
.end method

.method public inject(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;)V
    .locals 0

    .line 886
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectUpdateConfigurationIntentService(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;)Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    return-void
.end method

.method public inject(Lcom/texa/careapp/fcm/FcmManager;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/fcm/FcmMessagingService;)V
    .locals 0

    .line 919
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectFcmMessagingService(Lcom/texa/careapp/fcm/FcmMessagingService;)Lcom/texa/careapp/fcm/FcmMessagingService;

    return-void
.end method

.method public inject(Lcom/texa/careapp/lamps/LampsManager;)V
    .locals 0

    .line 1370
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectLampsManager(Lcom/texa/careapp/lamps/LampsManager;)Lcom/texa/careapp/lamps/LampsManager;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/BatteryAnalyzerJob;)V
    .locals 0

    .line 1585
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectBatteryAnalyzerJob(Lcom/texa/careapp/sync/jobs/BatteryAnalyzerJob;)Lcom/texa/careapp/sync/jobs/BatteryAnalyzerJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;)V
    .locals 0

    .line 1590
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectChangeLockStatusJob(Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;)Lcom/texa/careapp/sync/jobs/ChangeLockStatusJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/CrashLogJob;)V
    .locals 0

    .line 1595
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectCrashLogJob(Lcom/texa/careapp/sync/jobs/CrashLogJob;)Lcom/texa/careapp/sync/jobs/CrashLogJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/DTCJob;)V
    .locals 0

    .line 1600
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDTCJob(Lcom/texa/careapp/sync/jobs/DTCJob;)Lcom/texa/careapp/sync/jobs/DTCJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;)V
    .locals 0

    .line 1580
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEmergencyInfoJob(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;)Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;)V
    .locals 0

    .line 1660
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectEmergencyInfoMessageJob(Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;)Lcom/texa/careapp/sync/jobs/EmergencyInfoMessageJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/LampJob;)V
    .locals 0

    .line 1605
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectLampJob(Lcom/texa/careapp/sync/jobs/LampJob;)Lcom/texa/careapp/sync/jobs/LampJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/LogJob;)V
    .locals 0

    .line 1610
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectLogJob(Lcom/texa/careapp/sync/jobs/LogJob;)Lcom/texa/careapp/sync/jobs/LogJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/ParameterJob;)V
    .locals 0

    .line 1615
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectParameterJob(Lcom/texa/careapp/sync/jobs/ParameterJob;)Lcom/texa/careapp/sync/jobs/ParameterJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;)V
    .locals 0

    .line 1650
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectPeriodicTaskJob(Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;)Lcom/texa/careapp/sync/jobs/PeriodicTaskJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/PurchaseDataJob;)V
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectPurchaseDataJob(Lcom/texa/careapp/sync/jobs/PurchaseDataJob;)Lcom/texa/careapp/sync/jobs/PurchaseDataJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;)V
    .locals 0

    .line 1655
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectServiceOneOffJob(Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;)Lcom/texa/careapp/sync/jobs/ServiceOneOffJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/ThresholdsJob;)V
    .locals 0

    .line 1625
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectThresholdsJob(Lcom/texa/careapp/sync/jobs/ThresholdsJob;)Lcom/texa/careapp/sync/jobs/ThresholdsJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/TripJob;)V
    .locals 0

    .line 1630
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectTripJob(Lcom/texa/careapp/sync/jobs/TripJob;)Lcom/texa/careapp/sync/jobs/TripJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/UserTaskJob;)V
    .locals 0

    .line 1635
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectUserTaskJob(Lcom/texa/careapp/sync/jobs/UserTaskJob;)Lcom/texa/careapp/sync/jobs/UserTaskJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;)V
    .locals 0

    .line 1640
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectVehicleAlarmsJob(Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;)Lcom/texa/careapp/sync/jobs/VehicleAlarmsJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/sync/jobs/VehicleJob;)V
    .locals 0

    .line 1645
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectVehicleJob(Lcom/texa/careapp/sync/jobs/VehicleJob;)Lcom/texa/careapp/sync/jobs/VehicleJob;

    return-void
.end method

.method public inject(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectBatteryServiceAnalyzer(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    return-void
.end method

.method public inject(Lcom/texa/careapp/utils/DtcManager;)V
    .locals 0

    .line 1375
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectDtcManager(Lcom/texa/careapp/utils/DtcManager;)Lcom/texa/careapp/utils/DtcManager;

    return-void
.end method

.method public inject(Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 833
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectLoginHelperRx(Lcom/texa/careapp/utils/LoginHelperRx;)Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public inject(Lcom/texa/careapp/utils/TripDataManager;)V
    .locals 0

    return-void
.end method

.method public inject(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectAccountAuthenticator(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;)Lcom/texa/careapp/utils/authentication/AccountAuthenticator;

    return-void
.end method

.method public inject(Lcom/texa/careapp/utils/authentication/ApiHeaders;)V
    .locals 0

    .line 818
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectApiHeaders(Lcom/texa/careapp/utils/authentication/ApiHeaders;)Lcom/texa/careapp/utils/authentication/ApiHeaders;

    return-void
.end method

.method public inject(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;)V
    .locals 0

    .line 1053
    invoke-direct {p0, p1}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;->injectBootCompletedReceiver(Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;)Lcom/texa/careapp/utils/broadcastreceiver/BootCompletedReceiver;

    return-void
.end method
