package com.texa.careapp.dagger;

import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import com.texa.careapp.utils.authentication.ApiAuthenticatorUser;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiModule_ProvideApiAuthenticatorUserFactory implements Factory<ApiAuthenticatorUser> {
    private final Provider<AccessTokenPersistenceManager> accessTokenPersistenceManagerProvider;
    private final Provider<String> clientIdProvider;
    private final Provider<String> clientSecretProvider;
    private final Provider<LocalBroadcastManager> localBroadcastManagerProvider;
    private final ApiModule module;
    private final Provider<TexaCareAuthService> texaCareAuthServiceProvider;
    private final Provider<UserDataManager> userDataManagerProvider;

    public ApiModule_ProvideApiAuthenticatorUserFactory(ApiModule apiModule, Provider<AccessTokenPersistenceManager> provider, Provider<String> provider2, Provider<String> provider3, Provider<TexaCareAuthService> provider4, Provider<UserDataManager> provider5, Provider<LocalBroadcastManager> provider6) {
        this.module = apiModule;
        this.accessTokenPersistenceManagerProvider = provider;
        this.clientIdProvider = provider2;
        this.clientSecretProvider = provider3;
        this.texaCareAuthServiceProvider = provider4;
        this.userDataManagerProvider = provider5;
        this.localBroadcastManagerProvider = provider6;
    }

    @Override // javax.inject.Provider
    public ApiAuthenticatorUser get() {
        return provideApiAuthenticatorUser(this.module, this.accessTokenPersistenceManagerProvider.get(), this.clientIdProvider.get(), this.clientSecretProvider.get(), this.texaCareAuthServiceProvider.get(), this.userDataManagerProvider.get(), this.localBroadcastManagerProvider.get());
    }

    public static ApiModule_ProvideApiAuthenticatorUserFactory create(ApiModule apiModule, Provider<AccessTokenPersistenceManager> provider, Provider<String> provider2, Provider<String> provider3, Provider<TexaCareAuthService> provider4, Provider<UserDataManager> provider5, Provider<LocalBroadcastManager> provider6) {
        return new ApiModule_ProvideApiAuthenticatorUserFactory(apiModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static ApiAuthenticatorUser provideApiAuthenticatorUser(ApiModule apiModule, AccessTokenPersistenceManager accessTokenPersistenceManager, String str, String str2, TexaCareAuthService texaCareAuthService, UserDataManager userDataManager, LocalBroadcastManager localBroadcastManager) {
        return (ApiAuthenticatorUser) Preconditions.checkNotNullFromProvides(apiModule.provideApiAuthenticatorUser(accessTokenPersistenceManager, str, str2, texaCareAuthService, userDataManager, localBroadcastManager));
    }
}
