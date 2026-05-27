package com.texa.careapp.base;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class BaseActivity_MembersInjector implements MembersInjector<BaseActivity> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public BaseActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
    }

    public static MembersInjector<BaseActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6) {
        return new BaseActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(BaseActivity baseActivity) {
        injectMUserDataManager(baseActivity, this.mUserDataManagerProvider.get());
        injectMDongleDataManager(baseActivity, this.mDongleDataManagerProvider.get());
        injectMPreferences(baseActivity, this.mPreferencesProvider.get());
        injectMLoggerManager(baseActivity, this.mLoggerManagerProvider.get());
        injectMRxProfile(baseActivity, this.mRxProfileProvider.get());
        injectMLocalBroadcastManager(baseActivity, this.mLocalBroadcastManagerProvider.get());
    }

    public static void injectMUserDataManager(BaseActivity baseActivity, UserDataManager userDataManager) {
        baseActivity.mUserDataManager = userDataManager;
    }

    public static void injectMDongleDataManager(BaseActivity baseActivity, DongleDataManager dongleDataManager) {
        baseActivity.mDongleDataManager = dongleDataManager;
    }

    public static void injectMPreferences(BaseActivity baseActivity, SharedPreferences sharedPreferences) {
        baseActivity.mPreferences = sharedPreferences;
    }

    public static void injectMLoggerManager(BaseActivity baseActivity, LoggerManager loggerManager) {
        baseActivity.mLoggerManager = loggerManager;
    }

    public static void injectMRxProfile(BaseActivity baseActivity, RxProfile rxProfile) {
        baseActivity.mRxProfile = rxProfile;
    }

    public static void injectMLocalBroadcastManager(BaseActivity baseActivity, LocalBroadcastManager localBroadcastManager) {
        baseActivity.mLocalBroadcastManager = localBroadcastManager;
    }
}
