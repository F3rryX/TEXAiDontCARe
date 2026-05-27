package com.texa.careapp.app.onboarding;

import com.texa.careapp.dagger.AuthenticationClient;
import com.texa.careapp.dagger.ClientId;
import com.texa.careapp.dagger.ClientSecret;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class BaseVehicleDataScreen_MembersInjector implements MembersInjector<BaseVehicleDataScreen> {
    private final Provider<AccessTokenPersistenceManager> mAccessTokenPersistenceManagerClientProvider;
    private final Provider<String> mClientIdProvider;
    private final Provider<String> mClientSecretProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<FormValidator> mFormValidatorProvider;
    private final Provider<LoginHelperRx> mLogInHelperProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<TexaCareAuthService> mTexaCareAuthServiceProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public BaseVehicleDataScreen_MembersInjector(Provider<FormValidator> provider, Provider<VehicleDataManager> provider2, Provider<EventBus> provider3, Provider<LoginHelperRx> provider4, Provider<TexaCareApiServiceUser> provider5, Provider<AccessTokenPersistenceManager> provider6, Provider<TexaCareAuthService> provider7, Provider<String> provider8, Provider<String> provider9) {
        this.mFormValidatorProvider = provider;
        this.mVehicleDataManagerProvider = provider2;
        this.mEventBusProvider = provider3;
        this.mLogInHelperProvider = provider4;
        this.mTexaCareApiServiceUserProvider = provider5;
        this.mAccessTokenPersistenceManagerClientProvider = provider6;
        this.mTexaCareAuthServiceProvider = provider7;
        this.mClientIdProvider = provider8;
        this.mClientSecretProvider = provider9;
    }

    public static MembersInjector<BaseVehicleDataScreen> create(Provider<FormValidator> provider, Provider<VehicleDataManager> provider2, Provider<EventBus> provider3, Provider<LoginHelperRx> provider4, Provider<TexaCareApiServiceUser> provider5, Provider<AccessTokenPersistenceManager> provider6, Provider<TexaCareAuthService> provider7, Provider<String> provider8, Provider<String> provider9) {
        return new BaseVehicleDataScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(BaseVehicleDataScreen baseVehicleDataScreen) {
        injectMFormValidator(baseVehicleDataScreen, this.mFormValidatorProvider.get());
        injectMVehicleDataManager(baseVehicleDataScreen, this.mVehicleDataManagerProvider.get());
        injectMEventBus(baseVehicleDataScreen, this.mEventBusProvider.get());
        injectMLogInHelper(baseVehicleDataScreen, this.mLogInHelperProvider.get());
        injectMTexaCareApiServiceUser(baseVehicleDataScreen, this.mTexaCareApiServiceUserProvider.get());
        injectMAccessTokenPersistenceManagerClient(baseVehicleDataScreen, this.mAccessTokenPersistenceManagerClientProvider.get());
        injectMTexaCareAuthService(baseVehicleDataScreen, this.mTexaCareAuthServiceProvider.get());
        injectMClientId(baseVehicleDataScreen, this.mClientIdProvider.get());
        injectMClientSecret(baseVehicleDataScreen, this.mClientSecretProvider.get());
    }

    public static void injectMFormValidator(BaseVehicleDataScreen baseVehicleDataScreen, FormValidator formValidator) {
        baseVehicleDataScreen.mFormValidator = formValidator;
    }

    public static void injectMVehicleDataManager(BaseVehicleDataScreen baseVehicleDataScreen, VehicleDataManager vehicleDataManager) {
        baseVehicleDataScreen.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMEventBus(BaseVehicleDataScreen baseVehicleDataScreen, EventBus eventBus) {
        baseVehicleDataScreen.mEventBus = eventBus;
    }

    public static void injectMLogInHelper(BaseVehicleDataScreen baseVehicleDataScreen, LoginHelperRx loginHelperRx) {
        baseVehicleDataScreen.mLogInHelper = loginHelperRx;
    }

    public static void injectMTexaCareApiServiceUser(BaseVehicleDataScreen baseVehicleDataScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        baseVehicleDataScreen.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    @AuthenticationClient
    public static void injectMAccessTokenPersistenceManagerClient(BaseVehicleDataScreen baseVehicleDataScreen, AccessTokenPersistenceManager accessTokenPersistenceManager) {
        baseVehicleDataScreen.mAccessTokenPersistenceManagerClient = accessTokenPersistenceManager;
    }

    public static void injectMTexaCareAuthService(BaseVehicleDataScreen baseVehicleDataScreen, TexaCareAuthService texaCareAuthService) {
        baseVehicleDataScreen.mTexaCareAuthService = texaCareAuthService;
    }

    @ClientId
    public static void injectMClientId(BaseVehicleDataScreen baseVehicleDataScreen, String str) {
        baseVehicleDataScreen.mClientId = str;
    }

    @ClientSecret
    public static void injectMClientSecret(BaseVehicleDataScreen baseVehicleDataScreen, String str) {
        baseVehicleDataScreen.mClientSecret = str;
    }
}
