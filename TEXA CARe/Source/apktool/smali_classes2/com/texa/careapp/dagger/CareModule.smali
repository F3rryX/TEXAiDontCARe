.class public Lcom/texa/careapp/dagger/CareModule;
.super Ljava/lang/Object;
.source "CareModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CareModule"


# instance fields
.field protected final mApplication:Lcom/texa/careapp/CareApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    return-void
.end method

.method static synthetic lambda$provideTextToSpeech$0(I)V
    .locals 3

    .line 458
    sget-object v0, Lcom/texa/careapp/dagger/CareModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS init status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method mBatteryStatusFormatter()Lcom/texa/careapp/utils/BatteryStatusFormatter;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 354
    new-instance v0, Lcom/texa/careapp/utils/BatteryStatusFormatter;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/BatteryStatusFormatter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideAccessTokenManagerClient(Landroid/content/SharedPreferences;)Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
    .locals 1
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 617
    new-instance v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerClient;

    invoke-direct {v0, p1}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerClient;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method provideAccessTokenManagerUser(Landroid/accounts/AccountManager;)Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
    .locals 1
    .annotation runtime Lcom/texa/careapp/dagger/AuthenticationUser;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 624
    new-instance v0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;

    invoke-direct {v0, p1}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManagerUser;-><init>(Landroid/accounts/AccountManager;)V

    return-object v0
.end method

.method provideAccessory(Lcom/texa/carelib/profile/Profile;)Lcom/texa/carelib/care/accessory/Accessory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 709
    invoke-static {p1}, Lcom/texa/carelib/care/accessory/AccessoryFactory;->createAccessory(Lcom/texa/carelib/profile/Profile;)Lcom/texa/carelib/care/accessory/Accessory;

    move-result-object p1

    return-object p1
.end method

.method provideAccountManager()Landroid/accounts/AccountManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    return-object v0
.end method

.method provideAlternatorStaticAnalyzer(Lcom/texa/careapp/alarms/VehicleAlarmNotifier;)Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 506
    new-instance v0, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;

    invoke-direct {v0, p1}, Lcom/texa/careapp/alarms/AlternatorStaticAnalyzer;-><init>(Lcom/texa/careapp/alarms/VehicleAlarmNotifier;)V

    return-object v0
.end method

.method provideApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lcom/texa/careapp/dagger/ForApplication;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    return-object v0
.end method

.method provideAttitude(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/attitude/Attitude;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 751
    invoke-static {p1, p2}, Lcom/texa/carelib/care/attitude/AttitudeFactory;->createAttitude(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/attitude/Attitude;

    move-result-object p1

    return-object p1
.end method

.method provideAvgCalculator()Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 643
    new-instance v0, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;-><init>()V

    return-object v0
.end method

.method provideBatteryAnalyzer(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 660
    invoke-static {p1, p2}, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzerFactory;->createBatteryAnalyzer(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    move-result-object p1

    return-object p1
.end method

.method provideBatteryChargeNotifier(Lcom/texa/careapp/model/DongleDataManager;Landroid/app/NotificationManager;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/alarms/VehicleAlarmNotifier;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 394
    new-instance v0, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/texa/careapp/alarms/VehicleAlarmNotifier;-><init>(Landroid/content/Context;Lcom/texa/careapp/model/DongleDataManager;Landroid/app/NotificationManager;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object v0
.end method

.method provideBatteryObserver(Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/utils/CareCache;Lcom/texa/careapp/alarms/VehicleAlarmNotifier;)Lcom/texa/careapp/alarms/BatteryChargeObserver;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 389
    new-instance v0, Lcom/texa/careapp/alarms/BatteryChargeObserver;

    invoke-direct {v0, p1, p2, p3}, Lcom/texa/careapp/alarms/BatteryChargeObserver;-><init>(Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/utils/CareCache;Lcom/texa/careapp/alarms/VehicleAlarmNotifier;)V

    return-object v0
.end method

.method provideBatteryServiceAnalyzer()Lcom/texa/careapp/utils/BatteryServiceAnalyzer;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 666
    new-instance v0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;-><init>(Lcom/texa/careapp/CareApplication;)V

    return-object v0
.end method

.method provideBinderScheduleView(Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/app/schedule/BinderScheduleView;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 590
    new-instance v0, Lcom/texa/careapp/app/schedule/BinderScheduleView;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/texa/careapp/app/schedule/BinderScheduleView;-><init>(Landroid/content/Context;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-object v0
.end method

.method provideCAReWorkerManager(Landroid/content/Context;)Lcom/texa/careapp/sync/CAReWorkerManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 757
    new-instance v0, Lcom/texa/careapp/sync/CAReWorkerManager;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, p1, v1}, Lcom/texa/careapp/sync/CAReWorkerManager;-><init>(Landroid/content/Context;Lcom/texa/careapp/CareApplication;)V

    return-object v0
.end method

.method provideCareCache(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/utils/CareCache;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 413
    new-instance v0, Lcom/texa/careapp/utils/CareCache;

    invoke-direct {v0, p1, p2}, Lcom/texa/careapp/utils/CareCache;-><init>(Landroid/content/SharedPreferences;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object v0
.end method

.method provideCareConfigurationHelper(Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/configuration/UpdateConfigurationHelper;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 470
    new-instance v8, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;

    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/configuration/UpdateConfigurationHelper;-><init>(Landroid/content/Context;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/carelib/webservices/TexaService;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-object v8
.end method

.method provideCareObserver(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)Lcom/texa/careapp/carelib/ICareObserver;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 407
    new-instance v8, Lcom/texa/careapp/carelib/CareObserverImpl;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/carelib/CareObserverImpl;-><init>(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)V

    return-object v8
.end method

.method provideChecksFactory(Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/utils/ServiceDataManager;)Lcom/texa/careapp/checks/ChecksFactory;
    .locals 8
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 565
    new-instance v7, Lcom/texa/careapp/checks/ChecksFactory;

    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/checks/ChecksFactory;-><init>(Landroid/content/Context;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-object v7
.end method

.method provideCommunication()Lcom/texa/carelib/communication/Communication;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 196
    sget-object v0, Lcom/texa/careapp/BuildConfig;->COMMUNICATION_TYPE:Lcom/texa/carelib/communication/CommunicationType;

    .line 197
    new-instance v1, Lcom/texa/careapp/dagger/CareModule$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/dagger/CareModule$1;-><init>(Lcom/texa/careapp/dagger/CareModule;)V

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/CommunicationFactory;->createCommunication(Lcom/texa/carelib/communication/CommunicationType;Lcom/texa/carelib/communication/CommunicationDelegate;)Lcom/texa/carelib/communication/Communication;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Communication#EXTRA_AUTO_RECONNECT_ON_CONNECTION_LOST"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    sget-object v1, Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->setDeviceFilter(Lcom/texa/carelib/communication/DeviceFilter;)V

    return-object v0
.end method

.method provideCommunicationObservable(Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/carelib/CommunicationObservable;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 218
    new-instance v0, Lcom/texa/careapp/carelib/CommunicationObservable;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/texa/careapp/carelib/CommunicationObservable;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V

    return-object v0
.end method

.method provideConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/texa/careapp/CareApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method provideContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method provideCrashLogReader(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/utils/CrashLogReader;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 672
    new-instance v0, Lcom/texa/careapp/utils/CrashLogReader;

    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/texa/careapp/utils/CrashLogReader;-><init>(Lcom/texa/careapp/model/DongleModel;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object v0
.end method

.method provideCrashlyticsHelper(Lcom/texa/careapp/utils/UserDataManager;)Lcom/texa/careapp/utils/CrashlyticsHelper;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 375
    new-instance v0, Lcom/texa/careapp/utils/CrashlyticsHelper;

    invoke-direct {v0, p1}, Lcom/texa/careapp/utils/CrashlyticsHelper;-><init>(Lcom/texa/careapp/utils/UserDataManager;)V

    return-object v0
.end method

.method provideCurrentTrip(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/trips/CurrentTrip;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 695
    invoke-static {p1, p2}, Lcom/texa/carelib/care/trips/CurrentTripFactory;->createCurrentTrip(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/trips/CurrentTrip;

    move-result-object p1

    return-object p1
.end method

.method provideDTCResolutionIntegrator(Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/webservices/TexaService;)Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 425
    new-instance v0, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    invoke-direct {v0}, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;-><init>()V

    .line 426
    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->setHardwareID(Ljava/lang/String;)Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    .line 427
    invoke-interface {p3}, Lcom/texa/carelib/webservices/TexaService;->getDTCResolutionProcedure()Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->setServiceDTCResolutionProcedure(Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;)Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    .line 428
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->getAcceptedLocales()[Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;->setLanguages([Ljava/util/Locale;)Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    .line 429
    invoke-interface {p2, v0}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->setDTCTranslator(Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;)V

    return-object v0
.end method

.method provideDataManagerConfiguration(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 679
    invoke-static {p1, p2}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfigurationFactory;->createDataManagerConfiguration(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    move-result-object p1

    return-object p1
.end method

.method provideDiagnosticConfiguration(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 688
    invoke-static {p1, p2, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationFactory;->createDiagnosticConfiguration(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object p1

    return-object p1
.end method

.method provideDongleDataManager()Lcom/texa/careapp/model/DongleDataManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 306
    new-instance v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-direct {v0}, Lcom/texa/careapp/model/DongleDataManager;-><init>()V

    return-object v0
.end method

.method provideDrivingStyleManager(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Landroid/content/SharedPreferences;Lcom/texa/carelib/communication/Communication;Lcom/texa/care/eco_driving/RxVehicle;)Lcom/texa/care/eco_driving/DrivingStyleManager;
    .locals 12
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 632
    new-instance v10, Lcom/texa/care/eco_driving/DrivingStyleManager;

    move-object v11, p0

    iget-object v0, v11, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/texa/care/eco_driving/DrivingStyleManager;-><init>(Landroid/content/Context;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/communication/Communication;Lcom/texa/care/eco_driving/RxVehicle;)V

    .line 634
    sget-object v0, Lcom/texa/careapp/Constants;->ECO_DRIVING_PROFILE_TYPE:Landroid/util/SparseArray;

    sget v1, Lcom/texa/careapp/Constants;->defaultEcoDrivingProfile:I

    const-string v2, "ECO_DRIVING_PROFILE"

    move-object/from16 v3, p7

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    invoke-virtual {v10, v0}, Lcom/texa/care/eco_driving/DrivingStyleManager;->setDrivingProfile(Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;)V

    return-object v10
.end method

.method provideDtcManager(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/utils/DtcManager;
    .locals 11
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 536
    new-instance v9, Lcom/texa/careapp/utils/DtcManager;

    move-object v10, p0

    iget-object v2, v10, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    move-object v0, v9

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/texa/careapp/utils/DtcManager;-><init>(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/CareApplication;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-object v9
.end method

.method provideEmergencyDataManager()Lcom/texa/careapp/emergency/EmergencyDataManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 312
    new-instance v0, Lcom/texa/careapp/emergency/EmergencyDataManager;

    invoke-direct {v0}, Lcom/texa/careapp/emergency/EmergencyDataManager;-><init>()V

    return-object v0
.end method

.method provideEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 419
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    return-object v0
.end method

.method provideFcmManager()Lcom/texa/careapp/fcm/FcmManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 325
    new-instance v0, Lcom/texa/careapp/fcm/FcmManager;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/fcm/FcmManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideFcmMessagingService()Lcom/texa/careapp/fcm/FcmMessagingService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 331
    new-instance v0, Lcom/texa/careapp/fcm/FcmMessagingService;

    invoke-direct {v0}, Lcom/texa/careapp/fcm/FcmMessagingService;-><init>()V

    return-object v0
.end method

.method provideFeatureVerifier(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;)Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 716
    invoke-static {p1, p2}, Lcom/texa/carelib/care/featureverifier/FeatureVerifierFactory;->createFeatureVerifier(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;)Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object p1

    return-object p1
.end method

.method provideFirmwareUpdateController(Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Landroid/app/NotificationManager;Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/app/update/FirmwareUpdateController;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 464
    new-instance v6, Lcom/texa/careapp/app/update/FirmwareUpdateController;

    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v6

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/update/FirmwareUpdateController;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/texa/carelib/webservices/TexaService;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object v6
.end method

.method provideFirmwareUpgradeProcedure(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 730
    invoke-static {p1, p2}, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureFactory;->createFirmwareUpgradeProcedure(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;

    move-result-object p1

    return-object p1
.end method

.method provideFlavorDelegator()Lcom/texa/careapp/FlavorDelegator;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 369
    new-instance v0, Lcom/texa/careapp/FlavorDelegator;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/FlavorDelegator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideFormValidator()Lcom/texa/careapp/utils/FormValidator;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 294
    new-instance v0, Lcom/texa/careapp/utils/FormValidator;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/FormValidator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideImpactDetection(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/impacts/ImpactDetection;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 238
    invoke-static {p1, p2}, Lcom/texa/carelib/care/impacts/ImpactDetectionFactory;->createImpactDetection(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/impacts/ImpactDetection;

    move-result-object p1

    return-object p1
.end method

.method provideImpactDetector(Lcom/texa/carelib/communication/Communication;Landroid/hardware/SensorManager;)Lcom/texa/careapp/impactdetection/ImpactDetector;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 602
    new-instance v0, Lcom/texa/careapp/impactdetection/ImpactDetector;

    invoke-direct {v0, p1, p2}, Lcom/texa/careapp/impactdetection/ImpactDetector;-><init>(Lcom/texa/carelib/communication/Communication;Landroid/hardware/SensorManager;)V

    return-object v0
.end method

.method provideLampStatusDataManager()Lcom/texa/careapp/app/errorsDTC/LampStatusDataManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 400
    new-instance v0, Lcom/texa/careapp/app/errorsDTC/LampStatusDataManager;

    invoke-direct {v0}, Lcom/texa/careapp/app/errorsDTC/LampStatusDataManager;-><init>()V

    return-object v0
.end method

.method provideLampsManager(Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)Lcom/texa/careapp/lamps/LampsManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 512
    new-instance v0, Lcom/texa/careapp/lamps/LampsManager;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/texa/careapp/lamps/LampsManager;-><init>(Landroid/content/Context;Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)V

    return-object v0
.end method

.method provideLocalBroadcastManager(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 578
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    return-object p1
.end method

.method provideLocationTracker(Lcom/texa/careapp/parameters/VehicleParametersManagerV2;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/remotelogger/LoggerManager;)Lcom/texa/careapp/utils/LocationTracker;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 382
    new-instance v8, Lcom/texa/careapp/utils/LocationTracker;

    new-instance v1, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    .line 383
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/utils/LocationTracker;-><init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/remotelogger/LoggerManager;Landroid/content/Context;)V

    return-object v8
.end method

.method provideLogConfigurator()Lcom/texa/careapp/utils/LogConfigurator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 584
    new-instance v0, Lcom/texa/careapp/utils/LogConfigurator;

    invoke-direct {v0}, Lcom/texa/careapp/utils/LogConfigurator;-><init>()V

    return-object v0
.end method

.method provideLoggerManager(Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Landroid/content/SharedPreferences;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/remotelogger/LoggerManager;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 482
    new-instance v8, Lcom/texa/careapp/remotelogger/LoggerManager;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/remotelogger/LoggerManager;-><init>(Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/model/DongleDataManager;Landroid/content/Context;Lcom/texa/careapp/carelib/CommunicationObservable;Landroid/content/SharedPreferences;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object v8
.end method

.method provideLoginHelperRx()Lcom/texa/careapp/utils/LoginHelperRx;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 336
    new-instance v0, Lcom/texa/careapp/utils/LoginHelperRx;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/LoginHelperRx;-><init>(Lcom/texa/careapp/CareApplication;)V

    return-object v0
.end method

.method provideMechanicDataManager(Landroid/content/SharedPreferences;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/utils/MechanicDataManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 518
    new-instance v0, Lcom/texa/careapp/utils/MechanicDataManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/texa/careapp/utils/MechanicDataManager;-><init>(Landroid/content/SharedPreferences;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object v0
.end method

.method provideNotificationManager()Landroid/app/NotificationManager;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/texa/careapp/CareApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method providePercentColorHelper()Lcom/texa/careapp/utils/PercentColorHelper;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 436
    new-instance v0, Lcom/texa/careapp/utils/PercentColorHelper;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/PercentColorHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method providePreferenceManager()Landroid/content/SharedPreferences;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method provideProfile(Lcom/texa/carelib/communication/Communication;Lcom/texa/careapp/utils/TexaProfileDelegate;)Lcom/texa/carelib/profile/Profile;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 224
    sget-object v0, Lcom/texa/carelib/profile/ProfileType;->SPP_BLUETOOTH:Lcom/texa/carelib/profile/ProfileType;

    invoke-static {v0, p2, p1}, Lcom/texa/carelib/profile/ProfileFactory;->createProfile(Lcom/texa/carelib/profile/ProfileType;Lcom/texa/carelib/profile/ProfileDelegate;Lcom/texa/carelib/communication/Communication;)Lcom/texa/carelib/profile/Profile;

    move-result-object p1

    .line 225
    invoke-interface {p1}, Lcom/texa/carelib/profile/Profile;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.texa.carelib.profile.Profile#EXTRA_TRANSFER_BLOCK_COUNT"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method provideReactiveLocationProvider()Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 190
    new-instance v0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideRetrofitErrorParser()Lcom/texa/careapp/utils/RetrofitErrorParser;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 442
    new-instance v0, Lcom/texa/careapp/utils/RetrofitErrorParser;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-direct {v0, v1}, Lcom/texa/careapp/utils/RetrofitErrorParser;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideRxProfile(Lcom/texa/carelib/profile/Profile;)Lcom/texa/care/eco_driving/RxProfile;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 771
    new-instance v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-direct {v0, p1}, Lcom/texa/care/eco_driving/RxProfile;-><init>(Lcom/texa/carelib/profile/Profile;)V

    return-object v0
.end method

.method provideRxVehicle(Lcom/texa/carelib/care/vehicle/Vehicle;)Lcom/texa/care/eco_driving/RxVehicle;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 764
    new-instance v0, Lcom/texa/care/eco_driving/RxVehicle;

    invoke-direct {v0, p1}, Lcom/texa/care/eco_driving/RxVehicle;-><init>(Lcom/texa/carelib/care/vehicle/Vehicle;)V

    return-object v0
.end method

.method provideScheduleDataManager(Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/utils/UserDataManager;)Lcom/texa/careapp/model/ScheduleDataManager;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 342
    new-instance v6, Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/model/ScheduleDataManager;-><init>(Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/utils/UserDataManager;)V

    return-object v6
.end method

.method provideSecurePrefereces()Lcom/texa/securepreferences/SecurePreferences;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 170
    new-instance v0, Lcom/texa/securepreferences/SecurePreferences;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/securepreferences/SecurePreferences;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method provideSecurePreferecesV2(Landroid/content/Context;)Lat/favre/lib/armadillo/ArmadilloSharedPreferences;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "myCARePrefs"

    .line 175
    invoke-static {p1, v0}, Lat/favre/lib/armadillo/Armadillo;->create(Landroid/content/Context;Ljava/lang/String;)Lat/favre/lib/armadillo/Armadillo$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Lat/favre/lib/armadillo/Armadillo$Builder;->encryptionFingerprint(Landroid/content/Context;)Lat/favre/lib/armadillo/Armadillo$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p1, v0}, Lat/favre/lib/armadillo/Armadillo$Builder;->enableKitKatSupport(Z)Lat/favre/lib/armadillo/Armadillo$Builder;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lat/favre/lib/armadillo/Armadillo$Builder;->build()Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method provideSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "sensor"

    .line 596
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    return-object p1
.end method

.method provideServiceDataManager()Lcom/texa/careapp/utils/ServiceDataManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 649
    new-instance v0, Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-direct {v0}, Lcom/texa/careapp/utils/ServiceDataManager;-><init>()V

    return-object v0
.end method

.method provideServiceNotificationController(Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/remotelogger/LoggerManager;Lcom/texa/careapp/model/DongleDataManager;Landroid/content/SharedPreferences;)Lcom/texa/careapp/app/service/ServiceNotificationController;
    .locals 9
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 488
    new-instance v8, Lcom/texa/careapp/app/service/ServiceNotificationController;

    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/app/service/ServiceNotificationController;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/careapp/remotelogger/LoggerManager;Lcom/texa/careapp/model/DongleDataManager;Landroid/content/SharedPreferences;)V

    return-object v8
.end method

.method provideSosFeatureManager(Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/checks/ChecksFactory;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/remotelogger/LoggerManager;Lcom/texa/carelib/care/impacts/ImpactDetection;Lcom/texa/careapp/impactdetection/ImpactDetector;Landroid/content/SharedPreferences;Lcom/texa/careapp/utils/ServiceDataManager;Lcom/texa/careapp/utils/CrashLogReader;)Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
    .locals 14
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object v0, p0

    .line 545
    sget-object v1, Lcom/texa/careapp/BuildConfig;->FEATURE_SOS_ENABLE_POLICY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 558
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid FEATURE_SOS_ENABLE_POLICY value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/texa/careapp/BuildConfig;->FEATURE_SOS_ENABLE_POLICY:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :pswitch_0
    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;

    iget-object v2, v0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v2}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p5

    move-object/from16 v13, p11

    invoke-direct/range {v2 .. v13}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDefaultManager;-><init>(Landroid/content/Context;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/checks/ChecksFactory;Lcom/texa/careapp/remotelogger/LoggerManager;Lcom/texa/carelib/care/impacts/ImpactDetection;Lcom/texa/careapp/impactdetection/ImpactDetector;Landroid/content/SharedPreferences;Lcom/texa/careapp/utils/ServiceDataManager;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/careapp/utils/CrashLogReader;)V

    return-object v1

    .line 551
    :pswitch_1
    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDisabled;

    iget-object v2, v0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v2}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureDisabled;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 547
    :pswitch_2
    new-instance v1, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;

    iget-object v2, v0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v2}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct {v1, v2, p1, v4, v5}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureEnabled;-><init>(Landroid/content/Context;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/carelib/care/impacts/ImpactDetection;Lcom/texa/careapp/impactdetection/ImpactDetector;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method provideSosPrerequisiteNotificationController(Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 572
    new-instance v6, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/service/SosPrerequisiteNotificationController;-><init>(Lcom/texa/careapp/CareApplication;Landroid/app/NotificationManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;)V

    return-object v6
.end method

.method provideSpeaker(Lcom/texa/careapp/carelib/ICareObserver;)Lcom/texa/careapp/tts/Speaker;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 451
    new-instance p1, Lcom/texa/careapp/tts/NullSpeaker;

    invoke-direct {p1}, Lcom/texa/careapp/tts/NullSpeaker;-><init>()V

    return-object p1
.end method

.method provideTexaCareAuthServiceHelper(Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/texa/careapp/dagger/ClientId;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
        .end annotation
    .end param
    .param p4    # Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
        .annotation runtime Lcom/texa/careapp/dagger/AuthenticationClient;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 610
    new-instance v0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;-><init>(Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    return-object v0
.end method

.method provideTexaProfileDelegate(Lcom/texa/careapp/FlavorDelegator;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Lcom/texa/careapp/utils/TexaProfileDelegate;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/texa/careapp/FlavorDelegator;->provideTexaProfileDelegate(Landroid/content/Context;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Lcom/texa/careapp/utils/TexaProfileDelegate;

    move-result-object p1

    return-object p1
.end method

.method provideTexaService(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/webservices/TexaService;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/texa/careapp/dagger/ClientId;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "https://careapi.texa.com/"

    .line 244
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v0, "https://careauth.texa.com/"

    .line 248
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 252
    sget-object v0, Lcom/texa/carelib/webservices/TexaServiceType;->HTTP:Lcom/texa/carelib/webservices/TexaServiceType;

    new-instance v9, Lcom/texa/careapp/dagger/CareModule$2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/texa/careapp/dagger/CareModule$2;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v9}, Lcom/texa/carelib/webservices/TexaServiceFactory;->createTexaService(Lcom/texa/carelib/webservices/TexaServiceType;Lcom/texa/carelib/webservices/TexaServiceDelegate;)Lcom/texa/carelib/webservices/TexaService;

    move-result-object p1

    return-object p1
.end method

.method provideTextToSpeech()Landroid/speech/tts/TextToSpeech;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 457
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    return-object v0
.end method

.method provideTripDataManager()Lcom/texa/careapp/utils/TripDataManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 348
    new-instance v0, Lcom/texa/careapp/utils/TripDataManager;

    invoke-direct {v0}, Lcom/texa/careapp/utils/TripDataManager;-><init>()V

    return-object v0
.end method

.method provideTripLogBook(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/trips/TripLogBook;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 744
    invoke-static {p1, p2}, Lcom/texa/carelib/care/trips/TripLogBookFactory;->createTripLogBook(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/trips/TripLogBook;

    move-result-object p1

    return-object p1
.end method

.method provideTripLogBookReader(Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/utils/TripLogBookReader;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 500
    new-instance v0, Lcom/texa/careapp/utils/TripLogBookReader;

    invoke-direct {v0, p1, p2}, Lcom/texa/careapp/utils/TripLogBookReader;-><init>(Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;)V

    return-object v0
.end method

.method provideUserDataManager()Lcom/texa/careapp/utils/UserDataManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 300
    new-instance v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-direct {v0}, Lcom/texa/careapp/utils/UserDataManager;-><init>()V

    return-object v0
.end method

.method provideVehicle(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/vehicle/Vehicle;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 702
    invoke-static {p1, p2, p3}, Lcom/texa/carelib/care/vehicle/VehicleFactory;->createVehicle(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/vehicle/Vehicle;

    move-result-object p1

    return-object p1
.end method

.method provideVehicleDataManager(Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/utils/VehicleDataManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 319
    new-instance v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-direct {v0, p1}, Lcom/texa/careapp/utils/VehicleDataManager;-><init>(Lcom/texa/careapp/model/DongleDataManager;)V

    return-object v0
.end method

.method provideVehicleInfo(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 737
    invoke-static {p1, p2}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfoFactory;->createVehicleInfo(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    move-result-object p1

    return-object p1
.end method

.method provideVehicleParamMapperV2(Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/parameters/VehicleParamMapperV2;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 654
    new-instance v0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule;->mApplication:Lcom/texa/careapp/CareApplication;

    invoke-virtual {v1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/texa/careapp/parameters/VehicleParamMapperV2;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/Communication;)V

    return-object v0
.end method

.method provideVehicleParametersManagerV2(Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/care/eco_driving/RxVehicle;)Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .locals 8
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 529
    new-instance v7, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;-><init>(Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/care/eco_driving/RxVehicle;)V

    return-object v7
.end method

.method provideVehicleTroubles(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 723
    invoke-static {p1, p2, p3}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesFactory;->createVehicleTroubles(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    move-result-object p1

    return-object p1
.end method

.method provideWakelockManager()Lcom/texa/careapp/utils/wakelock/WakelockManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 476
    new-instance v0, Lcom/texa/careapp/utils/wakelock/NoWakelockManager;

    invoke-direct {v0}, Lcom/texa/careapp/utils/wakelock/NoWakelockManager;-><init>()V

    return-object v0
.end method

.method vehicleObserver(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/utils/VehicleDataManager;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/utils/VehicleObserver;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 494
    new-instance v6, Lcom/texa/careapp/utils/VehicleObserver;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/utils/VehicleObserver;-><init>(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/utils/VehicleDataManager;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/carelib/communication/Communication;)V

    return-object v6
.end method
