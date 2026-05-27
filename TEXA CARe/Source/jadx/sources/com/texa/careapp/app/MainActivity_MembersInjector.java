package com.texa.careapp.app;

import android.app.NotificationManager;
import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.fcm.FcmManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class MainActivity_MembersInjector implements MembersInjector<MainActivity> {
    private final Provider<FcmManager> fcmManagerProvider;
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<ICareObserver> mCareObserverProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider2;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider2;
    private final Provider<NotificationManager> mNotificationManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<SharedPreferences> mPreferencesProvider2;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<SosFeatureManager> mSosFeatureManagerProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider2;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;
    private final Provider<VehicleParametersManagerV2> mVehicleParametersManagerV2Provider;

    public MainActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<DongleDataManager> provider7, Provider<ICareObserver> provider8, Provider<Communication> provider9, Provider<SharedPreferences> provider10, Provider<NotificationManager> provider11, Provider<VehicleObserver> provider12, Provider<VehicleDataManager> provider13, Provider<UserDataManager> provider14, Provider<VehicleParametersManagerV2> provider15, Provider<ServiceDataManager> provider16, Provider<FcmManager> provider17, Provider<SosFeatureManager> provider18, Provider<TexaCareApiServiceUser> provider19, Provider<LoggerManager> provider20, Provider<CAReWorkerManager> provider21) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mDongleDataManagerProvider2 = provider7;
        this.mCareObserverProvider = provider8;
        this.mCommunicationProvider = provider9;
        this.mPreferencesProvider2 = provider10;
        this.mNotificationManagerProvider = provider11;
        this.mVehicleObserverProvider = provider12;
        this.mVehicleDataManagerProvider = provider13;
        this.mUserDataManagerProvider2 = provider14;
        this.mVehicleParametersManagerV2Provider = provider15;
        this.mServiceDataManagerProvider = provider16;
        this.fcmManagerProvider = provider17;
        this.mSosFeatureManagerProvider = provider18;
        this.mTexaCareApiServiceUserProvider = provider19;
        this.mLoggerManagerProvider2 = provider20;
        this.mCAReWorkerManagerProvider = provider21;
    }

    public static MembersInjector<MainActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<DongleDataManager> provider7, Provider<ICareObserver> provider8, Provider<Communication> provider9, Provider<SharedPreferences> provider10, Provider<NotificationManager> provider11, Provider<VehicleObserver> provider12, Provider<VehicleDataManager> provider13, Provider<UserDataManager> provider14, Provider<VehicleParametersManagerV2> provider15, Provider<ServiceDataManager> provider16, Provider<FcmManager> provider17, Provider<SosFeatureManager> provider18, Provider<TexaCareApiServiceUser> provider19, Provider<LoggerManager> provider20, Provider<CAReWorkerManager> provider21) {
        return new MainActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13, provider14, provider15, provider16, provider17, provider18, provider19, provider20, provider21);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(MainActivity mainActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(mainActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(mainActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(mainActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(mainActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(mainActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(mainActivity, this.mLocalBroadcastManagerProvider.get());
        injectMDongleDataManager(mainActivity, this.mDongleDataManagerProvider2.get());
        injectMCareObserver(mainActivity, this.mCareObserverProvider.get());
        injectMCommunication(mainActivity, this.mCommunicationProvider.get());
        injectMPreferences(mainActivity, this.mPreferencesProvider2.get());
        injectMNotificationManager(mainActivity, this.mNotificationManagerProvider.get());
        injectMVehicleObserver(mainActivity, this.mVehicleObserverProvider.get());
        injectMVehicleDataManager(mainActivity, this.mVehicleDataManagerProvider.get());
        injectMUserDataManager(mainActivity, this.mUserDataManagerProvider2.get());
        injectMVehicleParametersManagerV2(mainActivity, this.mVehicleParametersManagerV2Provider.get());
        injectMServiceDataManager(mainActivity, this.mServiceDataManagerProvider.get());
        injectFcmManager(mainActivity, this.fcmManagerProvider.get());
        injectMSosFeatureManager(mainActivity, this.mSosFeatureManagerProvider.get());
        injectMTexaCareApiServiceUser(mainActivity, this.mTexaCareApiServiceUserProvider.get());
        injectMLoggerManager(mainActivity, this.mLoggerManagerProvider2.get());
        injectMCAReWorkerManager(mainActivity, this.mCAReWorkerManagerProvider.get());
    }

    public static void injectMDongleDataManager(MainActivity mainActivity, DongleDataManager dongleDataManager) {
        mainActivity.mDongleDataManager = dongleDataManager;
    }

    public static void injectMCareObserver(MainActivity mainActivity, ICareObserver iCareObserver) {
        mainActivity.mCareObserver = iCareObserver;
    }

    public static void injectMCommunication(MainActivity mainActivity, Communication communication) {
        mainActivity.mCommunication = communication;
    }

    public static void injectMPreferences(MainActivity mainActivity, SharedPreferences sharedPreferences) {
        mainActivity.mPreferences = sharedPreferences;
    }

    public static void injectMNotificationManager(MainActivity mainActivity, NotificationManager notificationManager) {
        mainActivity.mNotificationManager = notificationManager;
    }

    public static void injectMVehicleObserver(MainActivity mainActivity, VehicleObserver vehicleObserver) {
        mainActivity.mVehicleObserver = vehicleObserver;
    }

    public static void injectMVehicleDataManager(MainActivity mainActivity, VehicleDataManager vehicleDataManager) {
        mainActivity.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMUserDataManager(MainActivity mainActivity, UserDataManager userDataManager) {
        mainActivity.mUserDataManager = userDataManager;
    }

    public static void injectMVehicleParametersManagerV2(MainActivity mainActivity, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        mainActivity.mVehicleParametersManagerV2 = vehicleParametersManagerV2;
    }

    public static void injectMServiceDataManager(MainActivity mainActivity, ServiceDataManager serviceDataManager) {
        mainActivity.mServiceDataManager = serviceDataManager;
    }

    public static void injectFcmManager(MainActivity mainActivity, FcmManager fcmManager) {
        mainActivity.fcmManager = fcmManager;
    }

    public static void injectMSosFeatureManager(MainActivity mainActivity, SosFeatureManager sosFeatureManager) {
        mainActivity.mSosFeatureManager = sosFeatureManager;
    }

    public static void injectMTexaCareApiServiceUser(MainActivity mainActivity, TexaCareApiServiceUser texaCareApiServiceUser) {
        mainActivity.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMLoggerManager(MainActivity mainActivity, LoggerManager loggerManager) {
        mainActivity.mLoggerManager = loggerManager;
    }

    public static void injectMCAReWorkerManager(MainActivity mainActivity, CAReWorkerManager cAReWorkerManager) {
        mainActivity.mCAReWorkerManager = cAReWorkerManager;
    }
}
