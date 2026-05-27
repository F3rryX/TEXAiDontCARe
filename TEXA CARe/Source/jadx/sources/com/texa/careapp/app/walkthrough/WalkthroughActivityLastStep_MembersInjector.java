package com.texa.careapp.app.walkthrough;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class WalkthroughActivityLastStep_MembersInjector implements MembersInjector<WalkthroughActivityLastStep> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider2;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<SharedPreferences> mPreferencesProvider2;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public WalkthroughActivityLastStep_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7, Provider<DongleDataManager> provider8, Provider<LoginHelperRx> provider9) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mPreferencesProvider2 = provider7;
        this.mDongleDataManagerProvider2 = provider8;
        this.mLoginHelperRxProvider = provider9;
    }

    public static MembersInjector<WalkthroughActivityLastStep> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7, Provider<DongleDataManager> provider8, Provider<LoginHelperRx> provider9) {
        return new WalkthroughActivityLastStep_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(WalkthroughActivityLastStep walkthroughActivityLastStep) {
        BaseActivity_MembersInjector.injectMUserDataManager(walkthroughActivityLastStep, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(walkthroughActivityLastStep, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(walkthroughActivityLastStep, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(walkthroughActivityLastStep, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(walkthroughActivityLastStep, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(walkthroughActivityLastStep, this.mLocalBroadcastManagerProvider.get());
        injectMPreferences(walkthroughActivityLastStep, this.mPreferencesProvider2.get());
        injectMDongleDataManager(walkthroughActivityLastStep, this.mDongleDataManagerProvider2.get());
        injectMLoginHelperRx(walkthroughActivityLastStep, this.mLoginHelperRxProvider.get());
    }

    public static void injectMPreferences(WalkthroughActivityLastStep walkthroughActivityLastStep, SharedPreferences sharedPreferences) {
        walkthroughActivityLastStep.mPreferences = sharedPreferences;
    }

    public static void injectMDongleDataManager(WalkthroughActivityLastStep walkthroughActivityLastStep, DongleDataManager dongleDataManager) {
        walkthroughActivityLastStep.mDongleDataManager = dongleDataManager;
    }

    public static void injectMLoginHelperRx(WalkthroughActivityLastStep walkthroughActivityLastStep, LoginHelperRx loginHelperRx) {
        walkthroughActivityLastStep.mLoginHelperRx = loginHelperRx;
    }
}
