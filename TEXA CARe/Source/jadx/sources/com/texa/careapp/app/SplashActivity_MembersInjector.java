package com.texa.careapp.app;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.care.accessory.Accessory;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public final class SplashActivity_MembersInjector implements MembersInjector<SplashActivity> {
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider2;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<SharedPreferences> mPreferencesProvider2;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public SplashActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7, Provider<DongleDataManager> provider8, Provider<TexaCareApiServiceUser> provider9, Provider<LoginHelperRx> provider10, Provider<EventBus> provider11, Provider<Accessory> provider12) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mPreferencesProvider2 = provider7;
        this.mDongleDataManagerProvider2 = provider8;
        this.mTexaCareApiServiceProvider = provider9;
        this.mLoginHelperRxProvider = provider10;
        this.mEventBusProvider = provider11;
        this.mAccessoryProvider = provider12;
    }

    public static MembersInjector<SplashActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7, Provider<DongleDataManager> provider8, Provider<TexaCareApiServiceUser> provider9, Provider<LoginHelperRx> provider10, Provider<EventBus> provider11, Provider<Accessory> provider12) {
        return new SplashActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SplashActivity splashActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(splashActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(splashActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(splashActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(splashActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(splashActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(splashActivity, this.mLocalBroadcastManagerProvider.get());
        injectMPreferences(splashActivity, this.mPreferencesProvider2.get());
        injectMDongleDataManager(splashActivity, this.mDongleDataManagerProvider2.get());
        injectMTexaCareApiService(splashActivity, this.mTexaCareApiServiceProvider.get());
        injectMLoginHelperRx(splashActivity, this.mLoginHelperRxProvider.get());
        injectMEventBus(splashActivity, this.mEventBusProvider.get());
        injectMAccessory(splashActivity, this.mAccessoryProvider.get());
    }

    public static void injectMPreferences(SplashActivity splashActivity, SharedPreferences sharedPreferences) {
        splashActivity.mPreferences = sharedPreferences;
    }

    public static void injectMDongleDataManager(SplashActivity splashActivity, DongleDataManager dongleDataManager) {
        splashActivity.mDongleDataManager = dongleDataManager;
    }

    public static void injectMTexaCareApiService(SplashActivity splashActivity, TexaCareApiServiceUser texaCareApiServiceUser) {
        splashActivity.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMLoginHelperRx(SplashActivity splashActivity, LoginHelperRx loginHelperRx) {
        splashActivity.mLoginHelperRx = loginHelperRx;
    }

    public static void injectMEventBus(SplashActivity splashActivity, EventBus eventBus) {
        splashActivity.mEventBus = eventBus;
    }

    public static void injectMAccessory(SplashActivity splashActivity, Accessory accessory) {
        splashActivity.mAccessory = accessory;
    }
}
