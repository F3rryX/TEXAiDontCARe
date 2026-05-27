package com.texa.careapp.dagger;

import android.accounts.AccountManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import at.favre.lib.armadillo.Armadillo;
import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.texa.care.eco_driving.DrivingStyleManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.care.eco_driving.RxVehicle;
import com.texa.careapp.BuildConfig;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.alarms.AlternatorStaticAnalyzer;
import com.texa.careapp.alarms.BatteryChargeObserver;
import com.texa.careapp.alarms.VehicleAlarmNotifier;
import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import com.texa.careapp.app.errorsDTC.LampStatusDataManager;
import com.texa.careapp.app.schedule.BinderScheduleView;
import com.texa.careapp.app.service.ServiceNotificationController;
import com.texa.careapp.app.service.SosPrerequisiteNotificationController;
import com.texa.careapp.app.sos.featuremanager.SosFeatureDefaultManager;
import com.texa.careapp.app.sos.featuremanager.SosFeatureDisabled;
import com.texa.careapp.app.sos.featuremanager.SosFeatureEnabled;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.app.update.FirmwareUpdateController;
import com.texa.careapp.carelib.CareObserverImpl;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.checks.ChecksFactory;
import com.texa.careapp.configuration.UpdateConfigurationHelper;
import com.texa.careapp.emergency.EmergencyDataManager;
import com.texa.careapp.fcm.FcmManager;
import com.texa.careapp.fcm.FcmMessagingService;
import com.texa.careapp.impactdetection.ImpactDetector;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.networking.TexaCareAuthServiceHelper;
import com.texa.careapp.parameters.VehicleParamMapperV2;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.tts.NullSpeaker;
import com.texa.careapp.tts.Speaker;
import com.texa.careapp.utils.BatteryServiceAnalyzer;
import com.texa.careapp.utils.BatteryStatusFormatter;
import com.texa.careapp.utils.CareCache;
import com.texa.careapp.utils.CrashLogReader;
import com.texa.careapp.utils.CrashlyticsHelper;
import com.texa.careapp.utils.DtcManager;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.LocationTracker;
import com.texa.careapp.utils.LogConfigurator;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.MechanicDataManager;
import com.texa.careapp.utils.PercentColorHelper;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.careapp.utils.TripDataManager;
import com.texa.careapp.utils.TripLogBookReader;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManagerClient;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManagerUser;
import com.texa.careapp.utils.wakelock.NoWakelockManager;
import com.texa.careapp.utils.wakelock.WakelockManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.accessory.AccessoryFactory;
import com.texa.carelib.care.attitude.Attitude;
import com.texa.carelib.care.attitude.AttitudeFactory;
import com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer;
import com.texa.carelib.care.batteryanalyzer.BatteryAnalyzerFactory;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfigurationFactory;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationFactory;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.featureverifier.FeatureVerifierFactory;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedureFactory;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.impacts.ImpactDetectionFactory;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.CurrentTripFactory;
import com.texa.carelib.care.trips.TripLogBook;
import com.texa.carelib.care.trips.TripLogBookFactory;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.care.vehicle.VehicleFactory;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.care.vehicleinfo.VehicleInfoFactory;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.care.vehicletroubles.VehicleTroublesFactory;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationDelegate;
import com.texa.carelib.communication.CommunicationFactory;
import com.texa.carelib.communication.DeviceFilter;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileFactory;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.tools.integrator.DTCResolutionIntegrator;
import com.texa.carelib.webservices.HostInfo;
import com.texa.carelib.webservices.TexaService;
import com.texa.carelib.webservices.TexaServiceDelegate;
import com.texa.carelib.webservices.TexaServiceFactory;
import com.texa.carelib.webservices.TexaServiceType;
import com.texa.securepreferences.SecurePreferences;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import org.greenrobot.eventbus.EventBus;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;

/* JADX INFO: loaded from: classes2.dex */
@Module
public class CareModule {
    private static final String TAG = "CareModule";
    protected final CareApplication mApplication;

    public CareModule(CareApplication careApplication) {
        this.mApplication = careApplication;
    }

    @Provides
    @Singleton
    @ForApplication
    Context provideApplicationContext() {
        return this.mApplication;
    }

    @Provides
    Context provideContext() {
        return this.mApplication.getApplicationContext();
    }

    @Provides
    @Singleton
    SharedPreferences providePreferenceManager() {
        return PreferenceManager.getDefaultSharedPreferences(this.mApplication);
    }

    @Provides
    SecurePreferences provideSecurePrefereces() {
        return new SecurePreferences(this.mApplication.getApplicationContext());
    }

    @Provides
    ArmadilloSharedPreferences provideSecurePreferecesV2(Context context) {
        return Armadillo.create(context, "myCARePrefs").encryptionFingerprint(context).enableKitKatSupport(true).build();
    }

    @Provides
    @Singleton
    AccountManager provideAccountManager() {
        return AccountManager.get(this.mApplication);
    }

    @Provides
    @Singleton
    ReactiveLocationProvider provideReactiveLocationProvider() {
        return new ReactiveLocationProvider(this.mApplication);
    }

    @Provides
    @Singleton
    Communication provideCommunication() {
        Communication communicationCreateCommunication = CommunicationFactory.createCommunication(BuildConfig.COMMUNICATION_TYPE, new CommunicationDelegate() { // from class: com.texa.careapp.dagger.CareModule.1
            @Override // com.texa.carelib.communication.CommunicationDelegate
            public Context getApplicationContext() {
                return CareModule.this.mApplication;
            }
        });
        communicationCreateCommunication.getArguments().putBoolean(Communication.EXTRA_AUTO_RECONNECT_ON_CONNECTION_LOST, false);
        communicationCreateCommunication.setDeviceFilter(new DeviceFilter() { // from class: com.texa.careapp.dagger.CareModule$$ExternalSyntheticLambda1
            @Override // com.texa.carelib.communication.DeviceFilter
            public final boolean isValidDevice(DeviceInfo deviceInfo) {
                return Utils.isCAReDevice(deviceInfo);
            }
        });
        return communicationCreateCommunication;
    }

    @Provides
    @Singleton
    CommunicationObservable provideCommunicationObservable(Communication communication) {
        return new CommunicationObservable(this.mApplication.getApplicationContext(), communication);
    }

    @Provides
    @Singleton
    Profile provideProfile(Communication communication, TexaProfileDelegate texaProfileDelegate) {
        Profile profileCreateProfile = ProfileFactory.createProfile(ProfileType.SPP_BLUETOOTH, texaProfileDelegate, communication);
        profileCreateProfile.getArguments().putInt(Profile.EXTRA_TRANSFER_BLOCK_COUNT, 1);
        return profileCreateProfile;
    }

    @Provides
    @Singleton
    TexaProfileDelegate provideTexaProfileDelegate(FlavorDelegator flavorDelegator, DongleDataManager dongleDataManager, SecurePreferences securePreferences, ArmadilloSharedPreferences armadilloSharedPreferences) {
        return flavorDelegator.provideTexaProfileDelegate(this.mApplication.getApplicationContext(), dongleDataManager, securePreferences, armadilloSharedPreferences);
    }

    @Provides
    @Singleton
    ImpactDetection provideImpactDetection(Profile profile, FeatureVerifier featureVerifier) {
        return ImpactDetectionFactory.createImpactDetection(profile, featureVerifier);
    }

    @Provides
    @Singleton
    TexaService provideTexaService(@ClientId final String str, @ClientSecret final String str2) {
        Uri uri = Uri.parse("https://careapi.texa.com/");
        final String host = uri.getHost();
        final String scheme = uri.getScheme();
        Uri uri2 = Uri.parse("https://careauth.texa.com/");
        final String host2 = uri2.getHost();
        final String scheme2 = uri2.getScheme();
        return TexaServiceFactory.createTexaService(TexaServiceType.HTTP, new TexaServiceDelegate() { // from class: com.texa.careapp.dagger.CareModule.2
            @Override // com.texa.carelib.webservices.TexaServiceDelegate
            public Context getApplicationContext() {
                return CareModule.this.mApplication;
            }

            @Override // com.texa.carelib.webservices.TexaServiceDelegate
            public String getClientID() {
                return str;
            }

            @Override // com.texa.carelib.webservices.TexaServiceDelegate
            public HostInfo getAuthenticationHost() {
                HostInfo hostInfo = new HostInfo();
                hostInfo.setHostName(host2);
                hostInfo.setScheme(scheme2);
                return hostInfo;
            }

            @Override // com.texa.carelib.webservices.TexaServiceDelegate
            public HostInfo getServiceHost() {
                HostInfo hostInfo = new HostInfo();
                hostInfo.setHostName(host);
                hostInfo.setScheme(scheme);
                return hostInfo;
            }

            @Override // com.texa.carelib.webservices.TexaServiceDelegate
            public String getClientSecret() {
                return str2;
            }
        });
    }

    @Provides
    @Singleton
    FormValidator provideFormValidator() {
        return new FormValidator(this.mApplication);
    }

    @Provides
    @Singleton
    UserDataManager provideUserDataManager() {
        return new UserDataManager();
    }

    @Provides
    @Singleton
    DongleDataManager provideDongleDataManager() {
        return new DongleDataManager();
    }

    @Provides
    @Singleton
    EmergencyDataManager provideEmergencyDataManager() {
        return new EmergencyDataManager();
    }

    @Provides
    @Singleton
    VehicleDataManager provideVehicleDataManager(DongleDataManager dongleDataManager) {
        return new VehicleDataManager(dongleDataManager);
    }

    @Provides
    @Singleton
    FcmManager provideFcmManager() {
        return new FcmManager(this.mApplication);
    }

    @Provides
    @Singleton
    FcmMessagingService provideFcmMessagingService() {
        return new FcmMessagingService();
    }

    @Provides
    LoginHelperRx provideLoginHelperRx() {
        return new LoginHelperRx(this.mApplication);
    }

    @Provides
    @Singleton
    ScheduleDataManager provideScheduleDataManager(EventBus eventBus, TexaCareApiServiceUser texaCareApiServiceUser, VehicleObserver vehicleObserver, UserDataManager userDataManager) {
        return new ScheduleDataManager(eventBus, texaCareApiServiceUser, this.mApplication, vehicleObserver, userDataManager);
    }

    @Provides
    @Singleton
    TripDataManager provideTripDataManager() {
        return new TripDataManager();
    }

    @Provides
    @Singleton
    BatteryStatusFormatter mBatteryStatusFormatter() {
        return new BatteryStatusFormatter(this.mApplication);
    }

    @Provides
    @Singleton
    NotificationManager provideNotificationManager() {
        return (NotificationManager) this.mApplication.getSystemService("notification");
    }

    @Provides
    @Singleton
    FlavorDelegator provideFlavorDelegator() {
        return new FlavorDelegator(this.mApplication);
    }

    @Provides
    @Singleton
    CrashlyticsHelper provideCrashlyticsHelper(UserDataManager userDataManager) {
        return new CrashlyticsHelper(userDataManager);
    }

    @Provides
    @Singleton
    LocationTracker provideLocationTracker(VehicleParametersManagerV2 vehicleParametersManagerV2, ICareObserver iCareObserver, CommunicationObservable communicationObservable, CurrentTrip currentTrip, LoggerManager loggerManager) {
        return new LocationTracker(new ReactiveLocationProvider(this.mApplication.getApplicationContext()), vehicleParametersManagerV2, iCareObserver, communicationObservable, currentTrip, loggerManager, this.mApplication.getApplicationContext());
    }

    @Provides
    @Singleton
    BatteryChargeObserver provideBatteryObserver(CurrentTrip currentTrip, CareCache careCache, VehicleAlarmNotifier vehicleAlarmNotifier) {
        return new BatteryChargeObserver(currentTrip, careCache, vehicleAlarmNotifier);
    }

    @Provides
    VehicleAlarmNotifier provideBatteryChargeNotifier(DongleDataManager dongleDataManager, NotificationManager notificationManager, CAReWorkerManager cAReWorkerManager) {
        return new VehicleAlarmNotifier(this.mApplication.getApplicationContext(), dongleDataManager, notificationManager, cAReWorkerManager);
    }

    @Provides
    @Singleton
    LampStatusDataManager provideLampStatusDataManager() {
        return new LampStatusDataManager();
    }

    @Provides
    @Singleton
    ICareObserver provideCareObserver(DongleDataManager dongleDataManager, Communication communication, CurrentTrip currentTrip, Accessory accessory, Vehicle vehicle, VehicleTroubles vehicleTroubles, VehicleInfo vehicleInfo) {
        return new CareObserverImpl(dongleDataManager, communication, currentTrip, accessory, vehicle, vehicleTroubles, vehicleInfo);
    }

    @Provides
    @Singleton
    CareCache provideCareCache(SharedPreferences sharedPreferences, DongleDataManager dongleDataManager) {
        return new CareCache(sharedPreferences, dongleDataManager);
    }

    @Provides
    @Singleton
    EventBus provideEventBus() {
        return EventBus.getDefault();
    }

    @Provides
    @Singleton
    DTCResolutionIntegrator provideDTCResolutionIntegrator(Accessory accessory, VehicleTroubles vehicleTroubles, TexaService texaService) {
        DTCResolutionIntegrator dTCResolutionIntegrator = new DTCResolutionIntegrator();
        dTCResolutionIntegrator.setHardwareID(accessory.getSerialNumber());
        dTCResolutionIntegrator.setServiceDTCResolutionProcedure(texaService.getDTCResolutionProcedure());
        dTCResolutionIntegrator.setLanguages(Utils.getAcceptedLocales());
        vehicleTroubles.setDTCTranslator(dTCResolutionIntegrator);
        return dTCResolutionIntegrator;
    }

    @Provides
    @Singleton
    PercentColorHelper providePercentColorHelper() {
        return new PercentColorHelper(this.mApplication.getApplicationContext());
    }

    @Provides
    @Singleton
    RetrofitErrorParser provideRetrofitErrorParser() {
        return new RetrofitErrorParser(this.mApplication);
    }

    @Provides
    @Singleton
    Speaker provideSpeaker(ICareObserver iCareObserver) {
        return new NullSpeaker();
    }

    @Provides
    TextToSpeech provideTextToSpeech() {
        return new TextToSpeech(this.mApplication.getApplicationContext(), new TextToSpeech.OnInitListener() { // from class: com.texa.careapp.dagger.CareModule$$ExternalSyntheticLambda0
            @Override // android.speech.tts.TextToSpeech.OnInitListener
            public final void onInit(int i) {
                Log.d(CareModule.TAG, "TTS init status: " + i);
            }
        });
    }

    @Provides
    @Singleton
    FirmwareUpdateController provideFirmwareUpdateController(TexaService texaService, ICareObserver iCareObserver, NotificationManager notificationManager, DongleDataManager dongleDataManager) {
        return new FirmwareUpdateController(this.mApplication.getApplicationContext(), notificationManager, texaService, iCareObserver, dongleDataManager);
    }

    @Provides
    @Singleton
    UpdateConfigurationHelper provideCareConfigurationHelper(TexaService texaService, ICareObserver iCareObserver, NotificationManager notificationManager, CommunicationObservable communicationObservable, DongleDataManager dongleDataManager, VehicleObserver vehicleObserver) {
        return new UpdateConfigurationHelper(this.mApplication.getApplicationContext(), iCareObserver, texaService, notificationManager, communicationObservable, dongleDataManager, vehicleObserver);
    }

    @Provides
    @Singleton
    WakelockManager provideWakelockManager() {
        return new NoWakelockManager();
    }

    @Provides
    @Singleton
    LoggerManager provideLoggerManager(UserDataManager userDataManager, DongleDataManager dongleDataManager, CommunicationObservable communicationObservable, SharedPreferences sharedPreferences, Accessory accessory, CAReWorkerManager cAReWorkerManager) {
        return new LoggerManager(userDataManager, dongleDataManager, this.mApplication, communicationObservable, sharedPreferences, accessory, cAReWorkerManager);
    }

    @Provides
    @Singleton
    ServiceNotificationController provideServiceNotificationController(NotificationManager notificationManager, CommunicationObservable communicationObservable, ICareObserver iCareObserver, LoggerManager loggerManager, DongleDataManager dongleDataManager, SharedPreferences sharedPreferences) {
        return new ServiceNotificationController(this.mApplication.getApplicationContext(), notificationManager, communicationObservable, iCareObserver, loggerManager, dongleDataManager, sharedPreferences);
    }

    @Provides
    @Singleton
    VehicleObserver vehicleObserver(DongleDataManager dongleDataManager, TexaCareApiServiceUser texaCareApiServiceUser, VehicleDataManager vehicleDataManager, EventBus eventBus, Communication communication) {
        return new VehicleObserver(dongleDataManager, texaCareApiServiceUser, vehicleDataManager, eventBus, communication);
    }

    @Provides
    @Singleton
    TripLogBookReader provideTripLogBookReader(VehicleObserver vehicleObserver, CAReWorkerManager cAReWorkerManager) {
        return new TripLogBookReader(vehicleObserver, cAReWorkerManager);
    }

    @Provides
    @Singleton
    AlternatorStaticAnalyzer provideAlternatorStaticAnalyzer(VehicleAlarmNotifier vehicleAlarmNotifier) {
        return new AlternatorStaticAnalyzer(vehicleAlarmNotifier);
    }

    @Provides
    @Singleton
    LampsManager provideLampsManager(DtcManager dtcManager, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        return new LampsManager(this.mApplication.getApplicationContext(), dtcManager, vehicleParametersManagerV2);
    }

    @Provides
    @Singleton
    MechanicDataManager provideMechanicDataManager(SharedPreferences sharedPreferences, TexaCareApiServiceUser texaCareApiServiceUser, DongleDataManager dongleDataManager) {
        return new MechanicDataManager(sharedPreferences, texaCareApiServiceUser, dongleDataManager);
    }

    @Provides
    ConnectivityManager provideConnectivityManager() {
        return (ConnectivityManager) this.mApplication.getSystemService("connectivity");
    }

    @Provides
    @Singleton
    VehicleParametersManagerV2 provideVehicleParametersManagerV2(Vehicle vehicle, CurrentTrip currentTrip, VehicleObserver vehicleObserver, CAReWorkerManager cAReWorkerManager, FeatureVerifier featureVerifier, RxVehicle rxVehicle) {
        return new VehicleParametersManagerV2(vehicle, currentTrip, vehicleObserver, cAReWorkerManager, featureVerifier, rxVehicle);
    }

    @Provides
    @Singleton
    DtcManager provideDtcManager(ICareObserver iCareObserver, Profile profile, Accessory accessory, FeatureVerifier featureVerifier, VehicleTroubles vehicleTroubles, DTCResolutionIntegrator dTCResolutionIntegrator, VehicleObserver vehicleObserver) {
        return new DtcManager(iCareObserver, this.mApplication, profile, accessory, featureVerifier, vehicleTroubles, dTCResolutionIntegrator, vehicleObserver);
    }

    @Provides
    @Singleton
    SosFeatureManager provideSosFeatureManager(UserDataManager userDataManager, TexaCareApiServiceUser texaCareApiServiceUser, DongleDataManager dongleDataManager, ChecksFactory checksFactory, EventBus eventBus, LoggerManager loggerManager, ImpactDetection impactDetection, ImpactDetector impactDetector, SharedPreferences sharedPreferences, ServiceDataManager serviceDataManager, CrashLogReader crashLogReader) {
        switch (BuildConfig.FEATURE_SOS_ENABLE_POLICY.intValue()) {
            case 101:
                return new SosFeatureEnabled(this.mApplication.getApplicationContext(), userDataManager, impactDetection, impactDetector);
            case 102:
                return new SosFeatureDisabled(this.mApplication.getApplicationContext());
            case 103:
                return new SosFeatureDefaultManager(this.mApplication.getApplicationContext(), texaCareApiServiceUser, dongleDataManager, checksFactory, loggerManager, impactDetection, impactDetector, sharedPreferences, serviceDataManager, eventBus, crashLogReader);
            default:
                throw new IllegalArgumentException("invalid FEATURE_SOS_ENABLE_POLICY value: " + BuildConfig.FEATURE_SOS_ENABLE_POLICY);
        }
    }

    @Provides
    ChecksFactory provideChecksFactory(UserDataManager userDataManager, CommunicationObservable communicationObservable, DongleDataManager dongleDataManager, ReactiveLocationProvider reactiveLocationProvider, ServiceDataManager serviceDataManager) {
        return new ChecksFactory(this.mApplication.getApplicationContext(), userDataManager, communicationObservable, dongleDataManager, reactiveLocationProvider, serviceDataManager);
    }

    @Provides
    @Singleton
    SosPrerequisiteNotificationController provideSosPrerequisiteNotificationController(NotificationManager notificationManager, CommunicationObservable communicationObservable, DongleDataManager dongleDataManager, SosFeatureManager sosFeatureManager) {
        return new SosPrerequisiteNotificationController(this.mApplication, notificationManager, communicationObservable, dongleDataManager, sosFeatureManager);
    }

    @Provides
    @Singleton
    LocalBroadcastManager provideLocalBroadcastManager(Context context) {
        return LocalBroadcastManager.getInstance(context);
    }

    @Provides
    @Singleton
    LogConfigurator provideLogConfigurator() {
        return new LogConfigurator();
    }

    @Provides
    @Singleton
    BinderScheduleView provideBinderScheduleView(VehicleObserver vehicleObserver) {
        return new BinderScheduleView(this.mApplication.getApplicationContext(), vehicleObserver);
    }

    @Provides
    @Singleton
    SensorManager provideSensorManager(Context context) {
        return (SensorManager) context.getSystemService("sensor");
    }

    @Provides
    @Singleton
    ImpactDetector provideImpactDetector(Communication communication, SensorManager sensorManager) {
        return new ImpactDetector(communication, sensorManager);
    }

    @Provides
    TexaCareAuthServiceHelper provideTexaCareAuthServiceHelper(TexaCareAuthService texaCareAuthService, @ClientId String str, @ClientSecret String str2, @AuthenticationClient AccessTokenPersistenceManager accessTokenPersistenceManager) {
        return new TexaCareAuthServiceHelper(texaCareAuthService, str, str2, accessTokenPersistenceManager);
    }

    @Provides
    @Singleton
    @AuthenticationClient
    AccessTokenPersistenceManager provideAccessTokenManagerClient(SharedPreferences sharedPreferences) {
        return new AccessTokenPersistenceManagerClient(sharedPreferences);
    }

    @Provides
    @Singleton
    @AuthenticationUser
    AccessTokenPersistenceManager provideAccessTokenManagerUser(AccountManager accountManager) {
        return new AccessTokenPersistenceManagerUser(accountManager);
    }

    @Provides
    @Singleton
    DrivingStyleManager provideDrivingStyleManager(Profile profile, DataManagerConfiguration dataManagerConfiguration, CurrentTrip currentTrip, Vehicle vehicle, Accessory accessory, FeatureVerifier featureVerifier, SharedPreferences sharedPreferences, Communication communication, RxVehicle rxVehicle) {
        DrivingStyleManager drivingStyleManager = new DrivingStyleManager(this.mApplication.getApplicationContext(), profile, dataManagerConfiguration, currentTrip, vehicle, accessory, featureVerifier, communication, rxVehicle);
        drivingStyleManager.setDrivingProfile(Constants.ECO_DRIVING_PROFILE_TYPE.get(sharedPreferences.getInt(Constants.PREFS_KEY_ECO_DRIVING_PROFILE, Constants.defaultEcoDrivingProfile)));
        return drivingStyleManager;
    }

    @Provides
    @Singleton
    AvgCalculator provideAvgCalculator() {
        return new AvgCalculator();
    }

    @Provides
    @Singleton
    ServiceDataManager provideServiceDataManager() {
        return new ServiceDataManager();
    }

    @Provides
    VehicleParamMapperV2 provideVehicleParamMapperV2(Communication communication) {
        return new VehicleParamMapperV2(this.mApplication.getApplicationContext(), communication);
    }

    @Provides
    @Singleton
    BatteryAnalyzer provideBatteryAnalyzer(Profile profile, FeatureVerifier featureVerifier) {
        return BatteryAnalyzerFactory.createBatteryAnalyzer(profile, featureVerifier);
    }

    @Provides
    @Singleton
    BatteryServiceAnalyzer provideBatteryServiceAnalyzer() {
        return new BatteryServiceAnalyzer(this.mApplication);
    }

    @Provides
    @Singleton
    CrashLogReader provideCrashLogReader(DongleDataManager dongleDataManager, CAReWorkerManager cAReWorkerManager) {
        return new CrashLogReader(dongleDataManager.getDongleModel(), cAReWorkerManager);
    }

    @Provides
    @Singleton
    DataManagerConfiguration provideDataManagerConfiguration(Profile profile, FeatureVerifier featureVerifier) {
        return DataManagerConfigurationFactory.createDataManagerConfiguration(profile, featureVerifier);
    }

    @Provides
    @Singleton
    DiagnosticConfiguration provideDiagnosticConfiguration(Profile profile, Accessory accessory, FeatureVerifier featureVerifier) {
        return DiagnosticConfigurationFactory.createDiagnosticConfiguration(profile, accessory, featureVerifier);
    }

    @Provides
    @Singleton
    CurrentTrip provideCurrentTrip(Profile profile, FeatureVerifier featureVerifier) {
        return CurrentTripFactory.createCurrentTrip(profile, featureVerifier);
    }

    @Provides
    @Singleton
    Vehicle provideVehicle(Profile profile, Accessory accessory, FeatureVerifier featureVerifier) {
        return VehicleFactory.createVehicle(profile, accessory, featureVerifier);
    }

    @Provides
    @Singleton
    Accessory provideAccessory(Profile profile) {
        return AccessoryFactory.createAccessory(profile);
    }

    @Provides
    @Singleton
    FeatureVerifier provideFeatureVerifier(Profile profile, Accessory accessory) {
        return FeatureVerifierFactory.createFeatureVerifier(profile, accessory);
    }

    @Provides
    @Singleton
    VehicleTroubles provideVehicleTroubles(Profile profile, Accessory accessory, FeatureVerifier featureVerifier) {
        return VehicleTroublesFactory.createVehicleTroubles(profile, accessory, featureVerifier);
    }

    @Provides
    @Singleton
    FirmwareUpgradeProcedure provideFirmwareUpgradeProcedure(Profile profile, FeatureVerifier featureVerifier) {
        return FirmwareUpgradeProcedureFactory.createFirmwareUpgradeProcedure(profile, featureVerifier);
    }

    @Provides
    @Singleton
    VehicleInfo provideVehicleInfo(Profile profile, FeatureVerifier featureVerifier) {
        return VehicleInfoFactory.createVehicleInfo(profile, featureVerifier);
    }

    @Provides
    @Singleton
    TripLogBook provideTripLogBook(Profile profile, FeatureVerifier featureVerifier) {
        return TripLogBookFactory.createTripLogBook(profile, featureVerifier);
    }

    @Provides
    @Singleton
    Attitude provideAttitude(Profile profile, FeatureVerifier featureVerifier) {
        return AttitudeFactory.createAttitude(profile, featureVerifier);
    }

    @Provides
    @Singleton
    CAReWorkerManager provideCAReWorkerManager(Context context) {
        return new CAReWorkerManager(context, this.mApplication);
    }

    @Provides
    @Singleton
    RxVehicle provideRxVehicle(Vehicle vehicle) {
        return new RxVehicle(vehicle);
    }

    @Provides
    @Singleton
    RxProfile provideRxProfile(Profile profile) {
        return new RxProfile(profile);
    }
}
