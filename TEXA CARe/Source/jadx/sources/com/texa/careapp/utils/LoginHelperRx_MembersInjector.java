package com.texa.careapp.utils;

import android.accounts.AccountManager;
import android.content.Context;
import android.content.SharedPreferences;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.dagger.AuthenticationClient;
import com.texa.careapp.dagger.AuthenticationUser;
import com.texa.careapp.dagger.ClientId;
import com.texa.careapp.dagger.ClientSecret;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import dagger.Lazy;
import dagger.MembersInjector;
import dagger.internal.DoubleCheck;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class LoginHelperRx_MembersInjector implements MembersInjector<LoginHelperRx> {
    private final Provider<AccessTokenPersistenceManager> mAccessTokenPersistenceManagerClientProvider;
    private final Provider<AccessTokenPersistenceManager> mAccessTokenPersistenceManagerUserProvider;
    private final Provider<AccountManager> mAccountManagerProvider;
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<String> mClientIdProvider;
    private final Provider<String> mClientSecretProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<CrashlyticsHelper> mCrashlyticsHelperProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<FlavorDelegator> mFlavorDelegatorProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<TexaCareAuthService> mTexaCareAuthServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public LoginHelperRx_MembersInjector(Provider<String> provider, Provider<String> provider2, Provider<UserDataManager> provider3, Provider<TexaCareApiServiceUser> provider4, Provider<AccountManager> provider5, Provider<Context> provider6, Provider<TexaCareAuthService> provider7, Provider<AccessTokenPersistenceManager> provider8, Provider<AccessTokenPersistenceManager> provider9, Provider<VehicleDataManager> provider10, Provider<CrashlyticsHelper> provider11, Provider<FlavorDelegator> provider12, Provider<DongleDataManager> provider13, Provider<SharedPreferences> provider14, Provider<VehicleObserver> provider15, Provider<TexaCareApiServiceUser> provider16, Provider<ServiceDataManager> provider17, Provider<CAReWorkerManager> provider18) {
        this.mClientIdProvider = provider;
        this.mClientSecretProvider = provider2;
        this.mUserDataManagerProvider = provider3;
        this.mTexaCareApiServiceUserProvider = provider4;
        this.mAccountManagerProvider = provider5;
        this.mContextProvider = provider6;
        this.mTexaCareAuthServiceProvider = provider7;
        this.mAccessTokenPersistenceManagerClientProvider = provider8;
        this.mAccessTokenPersistenceManagerUserProvider = provider9;
        this.mVehicleDataManagerProvider = provider10;
        this.mCrashlyticsHelperProvider = provider11;
        this.mFlavorDelegatorProvider = provider12;
        this.mDongleDataManagerProvider = provider13;
        this.mSharedPreferencesProvider = provider14;
        this.mVehicleObserverProvider = provider15;
        this.mTexaCareApiServiceProvider = provider16;
        this.mServiceDataManagerProvider = provider17;
        this.mCAReWorkerManagerProvider = provider18;
    }

    public static MembersInjector<LoginHelperRx> create(Provider<String> provider, Provider<String> provider2, Provider<UserDataManager> provider3, Provider<TexaCareApiServiceUser> provider4, Provider<AccountManager> provider5, Provider<Context> provider6, Provider<TexaCareAuthService> provider7, Provider<AccessTokenPersistenceManager> provider8, Provider<AccessTokenPersistenceManager> provider9, Provider<VehicleDataManager> provider10, Provider<CrashlyticsHelper> provider11, Provider<FlavorDelegator> provider12, Provider<DongleDataManager> provider13, Provider<SharedPreferences> provider14, Provider<VehicleObserver> provider15, Provider<TexaCareApiServiceUser> provider16, Provider<ServiceDataManager> provider17, Provider<CAReWorkerManager> provider18) {
        return new LoginHelperRx_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13, provider14, provider15, provider16, provider17, provider18);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(LoginHelperRx loginHelperRx) {
        injectMClientId(loginHelperRx, this.mClientIdProvider.get());
        injectMClientSecret(loginHelperRx, this.mClientSecretProvider.get());
        injectMUserDataManager(loginHelperRx, this.mUserDataManagerProvider.get());
        injectMTexaCareApiServiceUser(loginHelperRx, this.mTexaCareApiServiceUserProvider.get());
        injectMAccountManager(loginHelperRx, this.mAccountManagerProvider.get());
        injectMContext(loginHelperRx, this.mContextProvider.get());
        injectMTexaCareAuthService(loginHelperRx, this.mTexaCareAuthServiceProvider.get());
        injectMAccessTokenPersistenceManagerClient(loginHelperRx, this.mAccessTokenPersistenceManagerClientProvider.get());
        injectMAccessTokenPersistenceManagerUser(loginHelperRx, this.mAccessTokenPersistenceManagerUserProvider.get());
        injectMVehicleDataManager(loginHelperRx, this.mVehicleDataManagerProvider.get());
        injectMCrashlyticsHelper(loginHelperRx, DoubleCheck.lazy(this.mCrashlyticsHelperProvider));
        injectMFlavorDelegator(loginHelperRx, this.mFlavorDelegatorProvider.get());
        injectMDongleDataManager(loginHelperRx, this.mDongleDataManagerProvider.get());
        injectMSharedPreferences(loginHelperRx, this.mSharedPreferencesProvider.get());
        injectMVehicleObserver(loginHelperRx, this.mVehicleObserverProvider.get());
        injectMTexaCareApiService(loginHelperRx, this.mTexaCareApiServiceProvider.get());
        injectMServiceDataManager(loginHelperRx, this.mServiceDataManagerProvider.get());
        injectMCAReWorkerManager(loginHelperRx, this.mCAReWorkerManagerProvider.get());
    }

    @ClientId
    public static void injectMClientId(LoginHelperRx loginHelperRx, String str) {
        loginHelperRx.mClientId = str;
    }

    @ClientSecret
    public static void injectMClientSecret(LoginHelperRx loginHelperRx, String str) {
        loginHelperRx.mClientSecret = str;
    }

    public static void injectMUserDataManager(LoginHelperRx loginHelperRx, UserDataManager userDataManager) {
        loginHelperRx.mUserDataManager = userDataManager;
    }

    public static void injectMTexaCareApiServiceUser(LoginHelperRx loginHelperRx, TexaCareApiServiceUser texaCareApiServiceUser) {
        loginHelperRx.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMAccountManager(LoginHelperRx loginHelperRx, AccountManager accountManager) {
        loginHelperRx.mAccountManager = accountManager;
    }

    public static void injectMContext(LoginHelperRx loginHelperRx, Context context) {
        loginHelperRx.mContext = context;
    }

    public static void injectMTexaCareAuthService(LoginHelperRx loginHelperRx, TexaCareAuthService texaCareAuthService) {
        loginHelperRx.mTexaCareAuthService = texaCareAuthService;
    }

    @AuthenticationClient
    public static void injectMAccessTokenPersistenceManagerClient(LoginHelperRx loginHelperRx, AccessTokenPersistenceManager accessTokenPersistenceManager) {
        loginHelperRx.mAccessTokenPersistenceManagerClient = accessTokenPersistenceManager;
    }

    @AuthenticationUser
    public static void injectMAccessTokenPersistenceManagerUser(LoginHelperRx loginHelperRx, AccessTokenPersistenceManager accessTokenPersistenceManager) {
        loginHelperRx.mAccessTokenPersistenceManagerUser = accessTokenPersistenceManager;
    }

    public static void injectMVehicleDataManager(LoginHelperRx loginHelperRx, VehicleDataManager vehicleDataManager) {
        loginHelperRx.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMCrashlyticsHelper(LoginHelperRx loginHelperRx, Lazy<CrashlyticsHelper> lazy) {
        loginHelperRx.mCrashlyticsHelper = lazy;
    }

    public static void injectMFlavorDelegator(LoginHelperRx loginHelperRx, FlavorDelegator flavorDelegator) {
        loginHelperRx.mFlavorDelegator = flavorDelegator;
    }

    public static void injectMDongleDataManager(LoginHelperRx loginHelperRx, DongleDataManager dongleDataManager) {
        loginHelperRx.mDongleDataManager = dongleDataManager;
    }

    public static void injectMSharedPreferences(LoginHelperRx loginHelperRx, SharedPreferences sharedPreferences) {
        loginHelperRx.mSharedPreferences = sharedPreferences;
    }

    public static void injectMVehicleObserver(LoginHelperRx loginHelperRx, VehicleObserver vehicleObserver) {
        loginHelperRx.mVehicleObserver = vehicleObserver;
    }

    public static void injectMTexaCareApiService(LoginHelperRx loginHelperRx, TexaCareApiServiceUser texaCareApiServiceUser) {
        loginHelperRx.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMServiceDataManager(LoginHelperRx loginHelperRx, ServiceDataManager serviceDataManager) {
        loginHelperRx.mServiceDataManager = serviceDataManager;
    }

    public static void injectMCAReWorkerManager(LoginHelperRx loginHelperRx, CAReWorkerManager cAReWorkerManager) {
        loginHelperRx.mCAReWorkerManager = cAReWorkerManager;
    }
}
