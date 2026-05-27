package com.texa.careapp.app.ecodriving.tutorial;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EcoDrivingTutorialActivity_MembersInjector implements MembersInjector<EcoDrivingTutorialActivity> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider2;

    public EcoDrivingTutorialActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7, Provider<UserDataManager> provider8) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mSharedPreferencesProvider = provider7;
        this.mUserDataManagerProvider2 = provider8;
    }

    public static MembersInjector<EcoDrivingTutorialActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7, Provider<UserDataManager> provider8) {
        return new EcoDrivingTutorialActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EcoDrivingTutorialActivity ecoDrivingTutorialActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(ecoDrivingTutorialActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(ecoDrivingTutorialActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(ecoDrivingTutorialActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(ecoDrivingTutorialActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(ecoDrivingTutorialActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(ecoDrivingTutorialActivity, this.mLocalBroadcastManagerProvider.get());
        injectMSharedPreferences(ecoDrivingTutorialActivity, this.mSharedPreferencesProvider.get());
        injectMUserDataManager(ecoDrivingTutorialActivity, this.mUserDataManagerProvider2.get());
    }

    public static void injectMSharedPreferences(EcoDrivingTutorialActivity ecoDrivingTutorialActivity, SharedPreferences sharedPreferences) {
        ecoDrivingTutorialActivity.mSharedPreferences = sharedPreferences;
    }

    public static void injectMUserDataManager(EcoDrivingTutorialActivity ecoDrivingTutorialActivity, UserDataManager userDataManager) {
        ecoDrivingTutorialActivity.mUserDataManager = userDataManager;
    }
}
