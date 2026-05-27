package com.texa.careapp.app.auth;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.dagger.AuthenticationClient;
import com.texa.careapp.dagger.ClientId;
import com.texa.careapp.dagger.ClientSecret;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class LoginActivity_MembersInjector implements MembersInjector<LoginActivity> {
    private final Provider<AccessTokenPersistenceManager> mAccessTokenPersistenceManagerClientProvider;
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<String> mClientIdProvider;
    private final Provider<String> mClientSecretProvider;
    private final Provider<DataManagerConfiguration> mDataManagerConfigurationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<TexaCareAuthService> mTexaCareAuthServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider2;

    public LoginActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<UserDataManager> provider7, Provider<Accessory> provider8, Provider<DataManagerConfiguration> provider9, Provider<TexaCareAuthService> provider10, Provider<String> provider11, Provider<String> provider12, Provider<AccessTokenPersistenceManager> provider13) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mUserDataManagerProvider2 = provider7;
        this.mAccessoryProvider = provider8;
        this.mDataManagerConfigurationProvider = provider9;
        this.mTexaCareAuthServiceProvider = provider10;
        this.mClientIdProvider = provider11;
        this.mClientSecretProvider = provider12;
        this.mAccessTokenPersistenceManagerClientProvider = provider13;
    }

    public static MembersInjector<LoginActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<UserDataManager> provider7, Provider<Accessory> provider8, Provider<DataManagerConfiguration> provider9, Provider<TexaCareAuthService> provider10, Provider<String> provider11, Provider<String> provider12, Provider<AccessTokenPersistenceManager> provider13) {
        return new LoginActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(LoginActivity loginActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(loginActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(loginActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(loginActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(loginActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(loginActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(loginActivity, this.mLocalBroadcastManagerProvider.get());
        injectMUserDataManager(loginActivity, this.mUserDataManagerProvider2.get());
        injectMAccessory(loginActivity, this.mAccessoryProvider.get());
        injectMDataManagerConfiguration(loginActivity, this.mDataManagerConfigurationProvider.get());
        injectMTexaCareAuthService(loginActivity, this.mTexaCareAuthServiceProvider.get());
        injectMClientId(loginActivity, this.mClientIdProvider.get());
        injectMClientSecret(loginActivity, this.mClientSecretProvider.get());
        injectMAccessTokenPersistenceManagerClient(loginActivity, this.mAccessTokenPersistenceManagerClientProvider.get());
    }

    public static void injectMUserDataManager(LoginActivity loginActivity, UserDataManager userDataManager) {
        loginActivity.mUserDataManager = userDataManager;
    }

    public static void injectMAccessory(LoginActivity loginActivity, Accessory accessory) {
        loginActivity.mAccessory = accessory;
    }

    public static void injectMDataManagerConfiguration(LoginActivity loginActivity, DataManagerConfiguration dataManagerConfiguration) {
        loginActivity.mDataManagerConfiguration = dataManagerConfiguration;
    }

    public static void injectMTexaCareAuthService(LoginActivity loginActivity, TexaCareAuthService texaCareAuthService) {
        loginActivity.mTexaCareAuthService = texaCareAuthService;
    }

    @ClientId
    public static void injectMClientId(LoginActivity loginActivity, String str) {
        loginActivity.mClientId = str;
    }

    @ClientSecret
    public static void injectMClientSecret(LoginActivity loginActivity, String str) {
        loginActivity.mClientSecret = str;
    }

    @AuthenticationClient
    public static void injectMAccessTokenPersistenceManagerClient(LoginActivity loginActivity, AccessTokenPersistenceManager accessTokenPersistenceManager) {
        loginActivity.mAccessTokenPersistenceManagerClient = accessTokenPersistenceManager;
    }
}
