package com.texa.careapp.configuration;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class UpdateConfigurationActivity_MembersInjector implements MembersInjector<UpdateConfigurationActivity> {
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<ICareObserver> mCareObserverProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider2;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleParametersManagerV2> mVehicleParametersManagerProvider;
    private final Provider<Vehicle> mVehicleProvider;

    public UpdateConfigurationActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<EventBus> provider7, Provider<Communication> provider8, Provider<DongleDataManager> provider9, Provider<Accessory> provider10, Provider<ICareObserver> provider11, Provider<VehicleParametersManagerV2> provider12, Provider<Vehicle> provider13) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mEventBusProvider = provider7;
        this.mCommunicationProvider = provider8;
        this.mDongleDataManagerProvider2 = provider9;
        this.mAccessoryProvider = provider10;
        this.mCareObserverProvider = provider11;
        this.mVehicleParametersManagerProvider = provider12;
        this.mVehicleProvider = provider13;
    }

    public static MembersInjector<UpdateConfigurationActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<EventBus> provider7, Provider<Communication> provider8, Provider<DongleDataManager> provider9, Provider<Accessory> provider10, Provider<ICareObserver> provider11, Provider<VehicleParametersManagerV2> provider12, Provider<Vehicle> provider13) {
        return new UpdateConfigurationActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(UpdateConfigurationActivity updateConfigurationActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(updateConfigurationActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(updateConfigurationActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(updateConfigurationActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(updateConfigurationActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(updateConfigurationActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(updateConfigurationActivity, this.mLocalBroadcastManagerProvider.get());
        injectMEventBus(updateConfigurationActivity, this.mEventBusProvider.get());
        injectMCommunication(updateConfigurationActivity, this.mCommunicationProvider.get());
        injectMDongleDataManager(updateConfigurationActivity, this.mDongleDataManagerProvider2.get());
        injectMAccessory(updateConfigurationActivity, this.mAccessoryProvider.get());
        injectMCareObserver(updateConfigurationActivity, this.mCareObserverProvider.get());
        injectMVehicleParametersManager(updateConfigurationActivity, this.mVehicleParametersManagerProvider.get());
        injectMVehicle(updateConfigurationActivity, this.mVehicleProvider.get());
    }

    public static void injectMEventBus(UpdateConfigurationActivity updateConfigurationActivity, EventBus eventBus) {
        updateConfigurationActivity.mEventBus = eventBus;
    }

    public static void injectMCommunication(UpdateConfigurationActivity updateConfigurationActivity, Communication communication) {
        updateConfigurationActivity.mCommunication = communication;
    }

    public static void injectMDongleDataManager(UpdateConfigurationActivity updateConfigurationActivity, DongleDataManager dongleDataManager) {
        updateConfigurationActivity.mDongleDataManager = dongleDataManager;
    }

    public static void injectMAccessory(UpdateConfigurationActivity updateConfigurationActivity, Accessory accessory) {
        updateConfigurationActivity.mAccessory = accessory;
    }

    public static void injectMCareObserver(UpdateConfigurationActivity updateConfigurationActivity, ICareObserver iCareObserver) {
        updateConfigurationActivity.mCareObserver = iCareObserver;
    }

    public static void injectMVehicleParametersManager(UpdateConfigurationActivity updateConfigurationActivity, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        updateConfigurationActivity.mVehicleParametersManager = vehicleParametersManagerV2;
    }

    public static void injectMVehicle(UpdateConfigurationActivity updateConfigurationActivity, Vehicle vehicle) {
        updateConfigurationActivity.mVehicle = vehicle;
    }
}
