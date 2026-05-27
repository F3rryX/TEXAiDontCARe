package com.texa.careapp.app.ecodriving;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EcoDrivingActivity_MembersInjector implements MembersInjector<EcoDrivingActivity> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public EcoDrivingActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<TexaCareApiServiceUser> provider7, Provider<SharedPreferences> provider8) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mTexaCareApiServiceProvider = provider7;
        this.mSharedPreferencesProvider = provider8;
    }

    public static MembersInjector<EcoDrivingActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<TexaCareApiServiceUser> provider7, Provider<SharedPreferences> provider8) {
        return new EcoDrivingActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EcoDrivingActivity ecoDrivingActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(ecoDrivingActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(ecoDrivingActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(ecoDrivingActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(ecoDrivingActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(ecoDrivingActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(ecoDrivingActivity, this.mLocalBroadcastManagerProvider.get());
        injectMTexaCareApiService(ecoDrivingActivity, this.mTexaCareApiServiceProvider.get());
        injectMSharedPreferences(ecoDrivingActivity, this.mSharedPreferencesProvider.get());
    }

    public static void injectMTexaCareApiService(EcoDrivingActivity ecoDrivingActivity, TexaCareApiServiceUser texaCareApiServiceUser) {
        ecoDrivingActivity.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMSharedPreferences(EcoDrivingActivity ecoDrivingActivity, SharedPreferences sharedPreferences) {
        ecoDrivingActivity.mSharedPreferences = sharedPreferences;
    }
}
