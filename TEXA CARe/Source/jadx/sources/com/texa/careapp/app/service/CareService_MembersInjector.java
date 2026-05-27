package com.texa.careapp.app.service;

import android.app.NotificationManager;
import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import com.texa.care.eco_driving.DrivingStyleManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.alarms.AlternatorStaticAnalyzer;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.configuration.UpdateConfigurationHelper;
import com.texa.careapp.impactdetection.ImpactDetector;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.tts.Speaker;
import com.texa.careapp.utils.BatteryServiceAnalyzer;
import com.texa.careapp.utils.CrashLogReader;
import com.texa.careapp.utils.CrashlyticsHelper;
import com.texa.careapp.utils.DtcManager;
import com.texa.careapp.utils.LocationTracker;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.careapp.utils.TripDataManager;
import com.texa.careapp.utils.TripLogBookReader;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.careapp.utils.wakelock.WakelockManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.attitude.Attitude;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.trips.TripLogBook;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.tools.integrator.DTCResolutionIntegrator;
import com.texa.carelib.webservices.TexaService;
import com.texa.securepreferences.SecurePreferences;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.DoubleCheck;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class CareService_MembersInjector implements MembersInjector<CareService> {
    private final Provider<Communication> communicationProvider;
    private final Provider<DrivingStyleManager> drivingStyleManagerProvider;
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<Accessory> mAccessoryProvider2;
    private final Provider<AlternatorStaticAnalyzer> mAlternatorStaticAnalyzerProvider;
    private final Provider<ArmadilloSharedPreferences> mArmadilloSharedPreferencesProvider;
    private final Provider<Attitude> mAttitudeProvider;
    private final Provider<BatteryServiceAnalyzer> mBatteryServiceAnalyzerProvider;
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<UpdateConfigurationHelper> mCareConfigurationHelperProvider;
    private final Provider<CrashlyticsHelper> mCareCrashlyticsHelperProvider;
    private final Provider<ICareObserver> mCareObserverProvider;
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<CrashLogReader> mCrashLogReaderProvider;
    private final Provider<CrashlyticsHelper> mCrashlyticsHelperProvider;
    private final Provider<CurrentTrip> mCurrentTripProvider;
    private final Provider<CurrentTrip> mCurrentTripProvider2;
    private final Provider<DTCResolutionIntegrator> mDTCResolutionIntegratorProvider;
    private final Provider<DataManagerConfiguration> mDataManagerConfigurationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<DtcManager> mDtcManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<FlavorDelegator> mFlavorDelegatorProvider;
    private final Provider<ImpactDetection> mImpactDetectionProvider;
    private final Provider<ImpactDetector> mImpactDetectorProvider;
    private final Provider<LampsManager> mLampsManagerProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LocationTracker> mLocationTrackerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<NotificationManager> mNotificationManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<TexaProfileDelegate> mProfileDelegateProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<SecurePreferences> mSecurePreferencesProvider;
    private final Provider<ServiceNotificationController> mServiceNotificationControllerProvider;
    private final Provider<SosFeatureManager> mSosFeatureManagerProvider;
    private final Provider<SosPrerequisiteNotificationController> mSosPrerequisiteNotificationControllerProvider;
    private final Provider<Speaker> mSpeakerProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<TexaService> mTexaServiceProvider;
    private final Provider<TripDataManager> mTripDataManagerProvider;
    private final Provider<TripLogBook> mTripLogBookProvider;
    private final Provider<TripLogBookReader> mTripLogBookReaderProvider;
    private final Provider<UpdateConfigurationHelper> mUpdateConfigurationHelperProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;
    private final Provider<VehicleParametersManagerV2> mVehicleParametersManagerV2Provider;
    private final Provider<Vehicle> mVehicleProvider;
    private final Provider<WakelockManager> mWakelockManagerProvider;
    private final Provider<NotificationManager> notificationManagerProvider;

    public CareService_MembersInjector(Provider<CurrentTrip> provider, Provider<Accessory> provider2, Provider<CommunicationObservable> provider3, Provider<Communication> provider4, Provider<DtcManager> provider5, Provider<FlavorDelegator> provider6, Provider<ICareObserver> provider7, Provider<TexaCareApiServiceUser> provider8, Provider<DTCResolutionIntegrator> provider9, Provider<LocationTracker> provider10, Provider<SharedPreferences> provider11, Provider<NotificationManager> provider12, Provider<CrashlyticsHelper> provider13, Provider<UpdateConfigurationHelper> provider14, Provider<AlternatorStaticAnalyzer> provider15, Provider<LampsManager> provider16, Provider<SosFeatureManager> provider17, Provider<Speaker> provider18, Provider<WakelockManager> provider19, Provider<NotificationManager> provider20, Provider<EventBus> provider21, Provider<ServiceNotificationController> provider22, Provider<SosPrerequisiteNotificationController> provider23, Provider<TripLogBookReader> provider24, Provider<UpdateConfigurationHelper> provider25, Provider<Communication> provider26, Provider<Profile> provider27, Provider<TexaProfileDelegate> provider28, Provider<TexaService> provider29, Provider<DongleDataManager> provider30, Provider<SecurePreferences> provider31, Provider<ArmadilloSharedPreferences> provider32, Provider<VehicleParametersManagerV2> provider33, Provider<LocalBroadcastManager> provider34, Provider<ImpactDetector> provider35, Provider<UserDataManager> provider36, Provider<VehicleDataManager> provider37, Provider<TripDataManager> provider38, Provider<VehicleObserver> provider39, Provider<LoggerManager> provider40, Provider<DataManagerConfiguration> provider41, Provider<CAReWorkerManager> provider42, Provider<Accessory> provider43, Provider<Vehicle> provider44, Provider<CurrentTrip> provider45, Provider<TripLogBook> provider46, Provider<ImpactDetection> provider47, Provider<Attitude> provider48, Provider<CrashLogReader> provider49, Provider<DrivingStyleManager> provider50, Provider<BatteryServiceAnalyzer> provider51, Provider<RxProfile> provider52, Provider<CrashlyticsHelper> provider53) {
        this.mCurrentTripProvider = provider;
        this.mAccessoryProvider = provider2;
        this.mCommunicationObservableProvider = provider3;
        this.mCommunicationProvider = provider4;
        this.mDtcManagerProvider = provider5;
        this.mFlavorDelegatorProvider = provider6;
        this.mCareObserverProvider = provider7;
        this.mTexaCareApiServiceProvider = provider8;
        this.mDTCResolutionIntegratorProvider = provider9;
        this.mLocationTrackerProvider = provider10;
        this.mPreferencesProvider = provider11;
        this.mNotificationManagerProvider = provider12;
        this.mCareCrashlyticsHelperProvider = provider13;
        this.mCareConfigurationHelperProvider = provider14;
        this.mAlternatorStaticAnalyzerProvider = provider15;
        this.mLampsManagerProvider = provider16;
        this.mSosFeatureManagerProvider = provider17;
        this.mSpeakerProvider = provider18;
        this.mWakelockManagerProvider = provider19;
        this.notificationManagerProvider = provider20;
        this.mEventBusProvider = provider21;
        this.mServiceNotificationControllerProvider = provider22;
        this.mSosPrerequisiteNotificationControllerProvider = provider23;
        this.mTripLogBookReaderProvider = provider24;
        this.mUpdateConfigurationHelperProvider = provider25;
        this.communicationProvider = provider26;
        this.mProfileProvider = provider27;
        this.mProfileDelegateProvider = provider28;
        this.mTexaServiceProvider = provider29;
        this.mDongleDataManagerProvider = provider30;
        this.mSecurePreferencesProvider = provider31;
        this.mArmadilloSharedPreferencesProvider = provider32;
        this.mVehicleParametersManagerV2Provider = provider33;
        this.mLocalBroadcastManagerProvider = provider34;
        this.mImpactDetectorProvider = provider35;
        this.mUserDataManagerProvider = provider36;
        this.mVehicleDataManagerProvider = provider37;
        this.mTripDataManagerProvider = provider38;
        this.mVehicleObserverProvider = provider39;
        this.mLoggerManagerProvider = provider40;
        this.mDataManagerConfigurationProvider = provider41;
        this.mCAReWorkerManagerProvider = provider42;
        this.mAccessoryProvider2 = provider43;
        this.mVehicleProvider = provider44;
        this.mCurrentTripProvider2 = provider45;
        this.mTripLogBookProvider = provider46;
        this.mImpactDetectionProvider = provider47;
        this.mAttitudeProvider = provider48;
        this.mCrashLogReaderProvider = provider49;
        this.drivingStyleManagerProvider = provider50;
        this.mBatteryServiceAnalyzerProvider = provider51;
        this.mRxProfileProvider = provider52;
        this.mCrashlyticsHelperProvider = provider53;
    }

    public static MembersInjector<CareService> create(Provider<CurrentTrip> provider, Provider<Accessory> provider2, Provider<CommunicationObservable> provider3, Provider<Communication> provider4, Provider<DtcManager> provider5, Provider<FlavorDelegator> provider6, Provider<ICareObserver> provider7, Provider<TexaCareApiServiceUser> provider8, Provider<DTCResolutionIntegrator> provider9, Provider<LocationTracker> provider10, Provider<SharedPreferences> provider11, Provider<NotificationManager> provider12, Provider<CrashlyticsHelper> provider13, Provider<UpdateConfigurationHelper> provider14, Provider<AlternatorStaticAnalyzer> provider15, Provider<LampsManager> provider16, Provider<SosFeatureManager> provider17, Provider<Speaker> provider18, Provider<WakelockManager> provider19, Provider<NotificationManager> provider20, Provider<EventBus> provider21, Provider<ServiceNotificationController> provider22, Provider<SosPrerequisiteNotificationController> provider23, Provider<TripLogBookReader> provider24, Provider<UpdateConfigurationHelper> provider25, Provider<Communication> provider26, Provider<Profile> provider27, Provider<TexaProfileDelegate> provider28, Provider<TexaService> provider29, Provider<DongleDataManager> provider30, Provider<SecurePreferences> provider31, Provider<ArmadilloSharedPreferences> provider32, Provider<VehicleParametersManagerV2> provider33, Provider<LocalBroadcastManager> provider34, Provider<ImpactDetector> provider35, Provider<UserDataManager> provider36, Provider<VehicleDataManager> provider37, Provider<TripDataManager> provider38, Provider<VehicleObserver> provider39, Provider<LoggerManager> provider40, Provider<DataManagerConfiguration> provider41, Provider<CAReWorkerManager> provider42, Provider<Accessory> provider43, Provider<Vehicle> provider44, Provider<CurrentTrip> provider45, Provider<TripLogBook> provider46, Provider<ImpactDetection> provider47, Provider<Attitude> provider48, Provider<CrashLogReader> provider49, Provider<DrivingStyleManager> provider50, Provider<BatteryServiceAnalyzer> provider51, Provider<RxProfile> provider52, Provider<CrashlyticsHelper> provider53) {
        return new CareService_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13, provider14, provider15, provider16, provider17, provider18, provider19, provider20, provider21, provider22, provider23, provider24, provider25, provider26, provider27, provider28, provider29, provider30, provider31, provider32, provider33, provider34, provider35, provider36, provider37, provider38, provider39, provider40, provider41, provider42, provider43, provider44, provider45, provider46, provider47, provider48, provider49, provider50, provider51, provider52, provider53);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CareService careService) {
        RxCareService_MembersInjector.injectMCurrentTrip(careService, this.mCurrentTripProvider.get());
        RxCareService_MembersInjector.injectMAccessory(careService, this.mAccessoryProvider.get());
        RxCareService_MembersInjector.injectMCommunicationObservable(careService, this.mCommunicationObservableProvider.get());
        RxCareService_MembersInjector.injectMCommunication(careService, this.mCommunicationProvider.get());
        injectMDtcManager(careService, this.mDtcManagerProvider.get());
        injectMFlavorDelegator(careService, this.mFlavorDelegatorProvider.get());
        injectMCareObserver(careService, this.mCareObserverProvider.get());
        injectMTexaCareApiService(careService, this.mTexaCareApiServiceProvider.get());
        injectMDTCResolutionIntegrator(careService, this.mDTCResolutionIntegratorProvider.get());
        injectMLocationTracker(careService, this.mLocationTrackerProvider.get());
        injectMPreferences(careService, this.mPreferencesProvider.get());
        injectMNotificationManager(careService, this.mNotificationManagerProvider.get());
        injectMCareCrashlyticsHelper(careService, DoubleCheck.lazy(this.mCareCrashlyticsHelperProvider));
        injectMCareConfigurationHelper(careService, this.mCareConfigurationHelperProvider.get());
        injectMAlternatorStaticAnalyzer(careService, this.mAlternatorStaticAnalyzerProvider.get());
        injectMLampsManager(careService, this.mLampsManagerProvider.get());
        injectMSosFeatureManager(careService, this.mSosFeatureManagerProvider.get());
        injectMSpeaker(careService, this.mSpeakerProvider.get());
        injectMWakelockManager(careService, this.mWakelockManagerProvider.get());
        injectNotificationManager(careService, this.notificationManagerProvider.get());
        injectMEventBus(careService, this.mEventBusProvider.get());
        injectMServiceNotificationController(careService, this.mServiceNotificationControllerProvider.get());
        injectMSosPrerequisiteNotificationController(careService, this.mSosPrerequisiteNotificationControllerProvider.get());
        injectMTripLogBookReader(careService, this.mTripLogBookReaderProvider.get());
        injectMUpdateConfigurationHelper(careService, this.mUpdateConfigurationHelperProvider.get());
        injectCommunication(careService, this.communicationProvider.get());
        injectMProfile(careService, this.mProfileProvider.get());
        injectMProfileDelegate(careService, this.mProfileDelegateProvider.get());
        injectMTexaService(careService, this.mTexaServiceProvider.get());
        injectMDongleDataManager(careService, this.mDongleDataManagerProvider.get());
        injectMSecurePreferences(careService, this.mSecurePreferencesProvider.get());
        injectMArmadilloSharedPreferences(careService, this.mArmadilloSharedPreferencesProvider.get());
        injectMVehicleParametersManagerV2(careService, this.mVehicleParametersManagerV2Provider.get());
        injectMLocalBroadcastManager(careService, this.mLocalBroadcastManagerProvider.get());
        injectMImpactDetector(careService, this.mImpactDetectorProvider.get());
        injectMUserDataManager(careService, this.mUserDataManagerProvider.get());
        injectMVehicleDataManager(careService, this.mVehicleDataManagerProvider.get());
        injectMTripDataManager(careService, this.mTripDataManagerProvider.get());
        injectMVehicleObserver(careService, this.mVehicleObserverProvider.get());
        injectMLoggerManager(careService, this.mLoggerManagerProvider.get());
        injectMDataManagerConfiguration(careService, this.mDataManagerConfigurationProvider.get());
        injectMCAReWorkerManager(careService, this.mCAReWorkerManagerProvider.get());
        injectMAccessory(careService, this.mAccessoryProvider2.get());
        injectMVehicle(careService, this.mVehicleProvider.get());
        injectMCurrentTrip(careService, this.mCurrentTripProvider2.get());
        injectMTripLogBook(careService, this.mTripLogBookProvider.get());
        injectMImpactDetection(careService, this.mImpactDetectionProvider.get());
        injectMAttitude(careService, this.mAttitudeProvider.get());
        injectMCrashLogReader(careService, this.mCrashLogReaderProvider.get());
        injectDrivingStyleManager(careService, this.drivingStyleManagerProvider.get());
        injectMBatteryServiceAnalyzer(careService, this.mBatteryServiceAnalyzerProvider.get());
        injectMRxProfile(careService, this.mRxProfileProvider.get());
        injectMCrashlyticsHelper(careService, DoubleCheck.lazy(this.mCrashlyticsHelperProvider));
    }

    public static void injectMDtcManager(CareService careService, DtcManager dtcManager) {
        careService.mDtcManager = dtcManager;
    }

    public static void injectMFlavorDelegator(CareService careService, FlavorDelegator flavorDelegator) {
        careService.mFlavorDelegator = flavorDelegator;
    }

    public static void injectMCareObserver(CareService careService, ICareObserver iCareObserver) {
        careService.mCareObserver = iCareObserver;
    }

    public static void injectMTexaCareApiService(CareService careService, TexaCareApiServiceUser texaCareApiServiceUser) {
        careService.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMDTCResolutionIntegrator(CareService careService, DTCResolutionIntegrator dTCResolutionIntegrator) {
        careService.mDTCResolutionIntegrator = dTCResolutionIntegrator;
    }

    public static void injectMLocationTracker(CareService careService, LocationTracker locationTracker) {
        careService.mLocationTracker = locationTracker;
    }

    public static void injectMPreferences(CareService careService, SharedPreferences sharedPreferences) {
        careService.mPreferences = sharedPreferences;
    }

    public static void injectMNotificationManager(CareService careService, NotificationManager notificationManager) {
        careService.mNotificationManager = notificationManager;
    }

    public static void injectMCareCrashlyticsHelper(CareService careService, Lazy<CrashlyticsHelper> lazy) {
        careService.mCareCrashlyticsHelper = lazy;
    }

    public static void injectMCareConfigurationHelper(CareService careService, UpdateConfigurationHelper updateConfigurationHelper) {
        careService.mCareConfigurationHelper = updateConfigurationHelper;
    }

    public static void injectMAlternatorStaticAnalyzer(CareService careService, AlternatorStaticAnalyzer alternatorStaticAnalyzer) {
        careService.mAlternatorStaticAnalyzer = alternatorStaticAnalyzer;
    }

    public static void injectMLampsManager(CareService careService, LampsManager lampsManager) {
        careService.mLampsManager = lampsManager;
    }

    public static void injectMSosFeatureManager(CareService careService, SosFeatureManager sosFeatureManager) {
        careService.mSosFeatureManager = sosFeatureManager;
    }

    public static void injectMSpeaker(CareService careService, Speaker speaker) {
        careService.mSpeaker = speaker;
    }

    public static void injectMWakelockManager(CareService careService, WakelockManager wakelockManager) {
        careService.mWakelockManager = wakelockManager;
    }

    public static void injectNotificationManager(CareService careService, NotificationManager notificationManager) {
        careService.notificationManager = notificationManager;
    }

    public static void injectMEventBus(CareService careService, EventBus eventBus) {
        careService.mEventBus = eventBus;
    }

    public static void injectMServiceNotificationController(CareService careService, ServiceNotificationController serviceNotificationController) {
        careService.mServiceNotificationController = serviceNotificationController;
    }

    public static void injectMSosPrerequisiteNotificationController(CareService careService, SosPrerequisiteNotificationController sosPrerequisiteNotificationController) {
        careService.mSosPrerequisiteNotificationController = sosPrerequisiteNotificationController;
    }

    public static void injectMTripLogBookReader(CareService careService, TripLogBookReader tripLogBookReader) {
        careService.mTripLogBookReader = tripLogBookReader;
    }

    public static void injectMUpdateConfigurationHelper(CareService careService, UpdateConfigurationHelper updateConfigurationHelper) {
        careService.mUpdateConfigurationHelper = updateConfigurationHelper;
    }

    public static void injectCommunication(CareService careService, Communication communication) {
        careService.communication = communication;
    }

    public static void injectMProfile(CareService careService, Profile profile) {
        careService.mProfile = profile;
    }

    public static void injectMProfileDelegate(CareService careService, TexaProfileDelegate texaProfileDelegate) {
        careService.mProfileDelegate = texaProfileDelegate;
    }

    public static void injectMTexaService(CareService careService, TexaService texaService) {
        careService.mTexaService = texaService;
    }

    public static void injectMDongleDataManager(CareService careService, DongleDataManager dongleDataManager) {
        careService.mDongleDataManager = dongleDataManager;
    }

    public static void injectMSecurePreferences(CareService careService, SecurePreferences securePreferences) {
        careService.mSecurePreferences = securePreferences;
    }

    public static void injectMArmadilloSharedPreferences(CareService careService, ArmadilloSharedPreferences armadilloSharedPreferences) {
        careService.mArmadilloSharedPreferences = armadilloSharedPreferences;
    }

    public static void injectMVehicleParametersManagerV2(CareService careService, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        careService.mVehicleParametersManagerV2 = vehicleParametersManagerV2;
    }

    public static void injectMLocalBroadcastManager(CareService careService, LocalBroadcastManager localBroadcastManager) {
        careService.mLocalBroadcastManager = localBroadcastManager;
    }

    public static void injectMImpactDetector(CareService careService, ImpactDetector impactDetector) {
        careService.mImpactDetector = impactDetector;
    }

    public static void injectMUserDataManager(CareService careService, UserDataManager userDataManager) {
        careService.mUserDataManager = userDataManager;
    }

    public static void injectMVehicleDataManager(CareService careService, VehicleDataManager vehicleDataManager) {
        careService.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMTripDataManager(CareService careService, TripDataManager tripDataManager) {
        careService.mTripDataManager = tripDataManager;
    }

    public static void injectMVehicleObserver(CareService careService, VehicleObserver vehicleObserver) {
        careService.mVehicleObserver = vehicleObserver;
    }

    public static void injectMLoggerManager(CareService careService, LoggerManager loggerManager) {
        careService.mLoggerManager = loggerManager;
    }

    public static void injectMDataManagerConfiguration(CareService careService, DataManagerConfiguration dataManagerConfiguration) {
        careService.mDataManagerConfiguration = dataManagerConfiguration;
    }

    public static void injectMCAReWorkerManager(CareService careService, CAReWorkerManager cAReWorkerManager) {
        careService.mCAReWorkerManager = cAReWorkerManager;
    }

    public static void injectMAccessory(CareService careService, Accessory accessory) {
        careService.mAccessory = accessory;
    }

    public static void injectMVehicle(CareService careService, Vehicle vehicle) {
        careService.mVehicle = vehicle;
    }

    public static void injectMCurrentTrip(CareService careService, CurrentTrip currentTrip) {
        careService.mCurrentTrip = currentTrip;
    }

    public static void injectMTripLogBook(CareService careService, TripLogBook tripLogBook) {
        careService.mTripLogBook = tripLogBook;
    }

    public static void injectMImpactDetection(CareService careService, ImpactDetection impactDetection) {
        careService.mImpactDetection = impactDetection;
    }

    public static void injectMAttitude(CareService careService, Attitude attitude) {
        careService.mAttitude = attitude;
    }

    public static void injectMCrashLogReader(CareService careService, CrashLogReader crashLogReader) {
        careService.mCrashLogReader = crashLogReader;
    }

    public static void injectDrivingStyleManager(CareService careService, DrivingStyleManager drivingStyleManager) {
        careService.drivingStyleManager = drivingStyleManager;
    }

    public static void injectMBatteryServiceAnalyzer(CareService careService, BatteryServiceAnalyzer batteryServiceAnalyzer) {
        careService.mBatteryServiceAnalyzer = batteryServiceAnalyzer;
    }

    public static void injectMRxProfile(CareService careService, RxProfile rxProfile) {
        careService.mRxProfile = rxProfile;
    }

    public static void injectMCrashlyticsHelper(CareService careService, Lazy<CrashlyticsHelper> lazy) {
        careService.mCrashlyticsHelper = lazy;
    }
}
