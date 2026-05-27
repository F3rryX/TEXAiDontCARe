package com.texa.careapp.configuration;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class OnBoardingConfigurationActivity_MembersInjector implements MembersInjector<OnBoardingConfigurationActivity> {
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DataManagerConfiguration> mDataManagerConfigurationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider2;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<FormValidator> mFormValidatorProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public OnBoardingConfigurationActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<FormValidator> provider7, Provider<EventBus> provider8, Provider<Communication> provider9, Provider<DongleDataManager> provider10, Provider<Accessory> provider11, Provider<VehicleDataManager> provider12, Provider<SharedPreferences> provider13, Provider<TexaCareApiServiceUser> provider14, Provider<DataManagerConfiguration> provider15, Provider<CAReWorkerManager> provider16) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mFormValidatorProvider = provider7;
        this.mEventBusProvider = provider8;
        this.mCommunicationProvider = provider9;
        this.mDongleDataManagerProvider2 = provider10;
        this.mAccessoryProvider = provider11;
        this.mVehicleDataManagerProvider = provider12;
        this.mSharedPreferencesProvider = provider13;
        this.mTexaCareApiServiceUserProvider = provider14;
        this.mDataManagerConfigurationProvider = provider15;
        this.mCAReWorkerManagerProvider = provider16;
    }

    public static MembersInjector<OnBoardingConfigurationActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<FormValidator> provider7, Provider<EventBus> provider8, Provider<Communication> provider9, Provider<DongleDataManager> provider10, Provider<Accessory> provider11, Provider<VehicleDataManager> provider12, Provider<SharedPreferences> provider13, Provider<TexaCareApiServiceUser> provider14, Provider<DataManagerConfiguration> provider15, Provider<CAReWorkerManager> provider16) {
        return new OnBoardingConfigurationActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13, provider14, provider15, provider16);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(OnBoardingConfigurationActivity onBoardingConfigurationActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(onBoardingConfigurationActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(onBoardingConfigurationActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(onBoardingConfigurationActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(onBoardingConfigurationActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(onBoardingConfigurationActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(onBoardingConfigurationActivity, this.mLocalBroadcastManagerProvider.get());
        injectMFormValidator(onBoardingConfigurationActivity, this.mFormValidatorProvider.get());
        injectMEventBus(onBoardingConfigurationActivity, this.mEventBusProvider.get());
        injectMCommunication(onBoardingConfigurationActivity, this.mCommunicationProvider.get());
        injectMDongleDataManager(onBoardingConfigurationActivity, this.mDongleDataManagerProvider2.get());
        injectMAccessory(onBoardingConfigurationActivity, this.mAccessoryProvider.get());
        injectMVehicleDataManager(onBoardingConfigurationActivity, this.mVehicleDataManagerProvider.get());
        injectMSharedPreferences(onBoardingConfigurationActivity, this.mSharedPreferencesProvider.get());
        injectMTexaCareApiServiceUser(onBoardingConfigurationActivity, this.mTexaCareApiServiceUserProvider.get());
        injectMDataManagerConfiguration(onBoardingConfigurationActivity, this.mDataManagerConfigurationProvider.get());
        injectMCAReWorkerManager(onBoardingConfigurationActivity, this.mCAReWorkerManagerProvider.get());
    }

    public static void injectMFormValidator(OnBoardingConfigurationActivity onBoardingConfigurationActivity, FormValidator formValidator) {
        onBoardingConfigurationActivity.mFormValidator = formValidator;
    }

    public static void injectMEventBus(OnBoardingConfigurationActivity onBoardingConfigurationActivity, EventBus eventBus) {
        onBoardingConfigurationActivity.mEventBus = eventBus;
    }

    public static void injectMCommunication(OnBoardingConfigurationActivity onBoardingConfigurationActivity, Communication communication) {
        onBoardingConfigurationActivity.mCommunication = communication;
    }

    public static void injectMDongleDataManager(OnBoardingConfigurationActivity onBoardingConfigurationActivity, DongleDataManager dongleDataManager) {
        onBoardingConfigurationActivity.mDongleDataManager = dongleDataManager;
    }

    public static void injectMAccessory(OnBoardingConfigurationActivity onBoardingConfigurationActivity, Accessory accessory) {
        onBoardingConfigurationActivity.mAccessory = accessory;
    }

    public static void injectMVehicleDataManager(OnBoardingConfigurationActivity onBoardingConfigurationActivity, VehicleDataManager vehicleDataManager) {
        onBoardingConfigurationActivity.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMSharedPreferences(OnBoardingConfigurationActivity onBoardingConfigurationActivity, SharedPreferences sharedPreferences) {
        onBoardingConfigurationActivity.mSharedPreferences = sharedPreferences;
    }

    public static void injectMTexaCareApiServiceUser(OnBoardingConfigurationActivity onBoardingConfigurationActivity, TexaCareApiServiceUser texaCareApiServiceUser) {
        onBoardingConfigurationActivity.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMDataManagerConfiguration(OnBoardingConfigurationActivity onBoardingConfigurationActivity, DataManagerConfiguration dataManagerConfiguration) {
        onBoardingConfigurationActivity.mDataManagerConfiguration = dataManagerConfiguration;
    }

    public static void injectMCAReWorkerManager(OnBoardingConfigurationActivity onBoardingConfigurationActivity, CAReWorkerManager cAReWorkerManager) {
        onBoardingConfigurationActivity.mCAReWorkerManager = cAReWorkerManager;
    }
}
