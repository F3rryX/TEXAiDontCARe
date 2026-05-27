package com.texa.careapp.app.vehicle;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class VehicleDataConfirmationActivity_MembersInjector implements MembersInjector<VehicleDataConfirmationActivity> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<DataManagerConfiguration> mDataManagerConfigurationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider2;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public VehicleDataConfirmationActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<VehicleObserver> provider7, Provider<VehicleDataManager> provider8, Provider<DataManagerConfiguration> provider9, Provider<DongleDataManager> provider10, Provider<CAReWorkerManager> provider11) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mVehicleObserverProvider = provider7;
        this.mVehicleDataManagerProvider = provider8;
        this.mDataManagerConfigurationProvider = provider9;
        this.mDongleDataManagerProvider2 = provider10;
        this.mCAReWorkerManagerProvider = provider11;
    }

    public static MembersInjector<VehicleDataConfirmationActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<VehicleObserver> provider7, Provider<VehicleDataManager> provider8, Provider<DataManagerConfiguration> provider9, Provider<DongleDataManager> provider10, Provider<CAReWorkerManager> provider11) {
        return new VehicleDataConfirmationActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VehicleDataConfirmationActivity vehicleDataConfirmationActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(vehicleDataConfirmationActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(vehicleDataConfirmationActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(vehicleDataConfirmationActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(vehicleDataConfirmationActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(vehicleDataConfirmationActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(vehicleDataConfirmationActivity, this.mLocalBroadcastManagerProvider.get());
        injectMVehicleObserver(vehicleDataConfirmationActivity, this.mVehicleObserverProvider.get());
        injectMVehicleDataManager(vehicleDataConfirmationActivity, this.mVehicleDataManagerProvider.get());
        injectMDataManagerConfiguration(vehicleDataConfirmationActivity, this.mDataManagerConfigurationProvider.get());
        injectMDongleDataManager(vehicleDataConfirmationActivity, this.mDongleDataManagerProvider2.get());
        injectMCAReWorkerManager(vehicleDataConfirmationActivity, this.mCAReWorkerManagerProvider.get());
    }

    public static void injectMVehicleObserver(VehicleDataConfirmationActivity vehicleDataConfirmationActivity, VehicleObserver vehicleObserver) {
        vehicleDataConfirmationActivity.mVehicleObserver = vehicleObserver;
    }

    public static void injectMVehicleDataManager(VehicleDataConfirmationActivity vehicleDataConfirmationActivity, VehicleDataManager vehicleDataManager) {
        vehicleDataConfirmationActivity.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMDataManagerConfiguration(VehicleDataConfirmationActivity vehicleDataConfirmationActivity, DataManagerConfiguration dataManagerConfiguration) {
        vehicleDataConfirmationActivity.mDataManagerConfiguration = dataManagerConfiguration;
    }

    public static void injectMDongleDataManager(VehicleDataConfirmationActivity vehicleDataConfirmationActivity, DongleDataManager dongleDataManager) {
        vehicleDataConfirmationActivity.mDongleDataManager = dongleDataManager;
    }

    public static void injectMCAReWorkerManager(VehicleDataConfirmationActivity vehicleDataConfirmationActivity, CAReWorkerManager cAReWorkerManager) {
        vehicleDataConfirmationActivity.mCAReWorkerManager = cAReWorkerManager;
    }
}
