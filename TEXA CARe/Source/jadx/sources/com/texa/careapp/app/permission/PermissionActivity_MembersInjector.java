package com.texa.careapp.app.permission;

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
public final class PermissionActivity_MembersInjector implements MembersInjector<PermissionActivity> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public PermissionActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mSharedPreferencesProvider = provider7;
    }

    public static MembersInjector<PermissionActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<SharedPreferences> provider7) {
        return new PermissionActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(PermissionActivity permissionActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(permissionActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(permissionActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(permissionActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(permissionActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(permissionActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(permissionActivity, this.mLocalBroadcastManagerProvider.get());
        injectMSharedPreferences(permissionActivity, this.mSharedPreferencesProvider.get());
    }

    public static void injectMSharedPreferences(PermissionActivity permissionActivity, SharedPreferences sharedPreferences) {
        permissionActivity.mSharedPreferences = sharedPreferences;
    }
}
