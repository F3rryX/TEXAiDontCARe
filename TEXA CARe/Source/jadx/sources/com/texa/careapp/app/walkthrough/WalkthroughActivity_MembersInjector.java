package com.texa.careapp.app.walkthrough;

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
public final class WalkthroughActivity_MembersInjector implements MembersInjector<WalkthroughActivity> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<SharedPreferences> mPreferencesProvider2;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public WalkthroughActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mPreferencesProvider2 = provider7;
    }

    public static MembersInjector<WalkthroughActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7) {
        return new WalkthroughActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(WalkthroughActivity walkthroughActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(walkthroughActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(walkthroughActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(walkthroughActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(walkthroughActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(walkthroughActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(walkthroughActivity, this.mLocalBroadcastManagerProvider.get());
        injectMPreferences(walkthroughActivity, this.mPreferencesProvider2.get());
    }

    public static void injectMPreferences(WalkthroughActivity walkthroughActivity, SharedPreferences sharedPreferences) {
        walkthroughActivity.mPreferences = sharedPreferences;
    }
}
