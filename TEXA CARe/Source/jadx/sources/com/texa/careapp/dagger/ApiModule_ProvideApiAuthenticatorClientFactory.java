package com.texa.careapp.dagger;

import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import com.texa.careapp.utils.authentication.ApiAuthenticatorClient;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiModule_ProvideApiAuthenticatorClientFactory implements Factory<ApiAuthenticatorClient> {
    private final Provider<AccessTokenPersistenceManager> accessTokenPersistenceManagerProvider;
    private final Provider<String> clientIdProvider;
    private final Provider<String> clientSecretProvider;
    private final ApiModule module;
    private final Provider<TexaCareAuthService> texaCareAuthServiceProvider;

    public ApiModule_ProvideApiAuthenticatorClientFactory(ApiModule apiModule, Provider<AccessTokenPersistenceManager> provider, Provider<String> provider2, Provider<String> provider3, Provider<TexaCareAuthService> provider4) {
        this.module = apiModule;
        this.accessTokenPersistenceManagerProvider = provider;
        this.clientIdProvider = provider2;
        this.clientSecretProvider = provider3;
        this.texaCareAuthServiceProvider = provider4;
    }

    @Override // javax.inject.Provider
    public ApiAuthenticatorClient get() {
        return provideApiAuthenticatorClient(this.module, this.accessTokenPersistenceManagerProvider.get(), this.clientIdProvider.get(), this.clientSecretProvider.get(), this.texaCareAuthServiceProvider.get());
    }

    public static ApiModule_ProvideApiAuthenticatorClientFactory create(ApiModule apiModule, Provider<AccessTokenPersistenceManager> provider, Provider<String> provider2, Provider<String> provider3, Provider<TexaCareAuthService> provider4) {
        return new ApiModule_ProvideApiAuthenticatorClientFactory(apiModule, provider, provider2, provider3, provider4);
    }

    public static ApiAuthenticatorClient provideApiAuthenticatorClient(ApiModule apiModule, AccessTokenPersistenceManager accessTokenPersistenceManager, String str, String str2, TexaCareAuthService texaCareAuthService) {
        return (ApiAuthenticatorClient) Preconditions.checkNotNullFromProvides(apiModule.provideApiAuthenticatorClient(accessTokenPersistenceManager, str, str2, texaCareAuthService));
    }
}
