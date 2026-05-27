package com.texa.careapp.dagger;

import com.texa.careapp.networking.TexaCareApiServiceClient;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import com.texa.careapp.utils.authentication.ApiAuthenticatorClient;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiModule_ProvideTexaCareApiClientFactory implements Factory<TexaCareApiServiceClient> {
    private final Provider<AccessTokenPersistenceManager> accessTokenPersistenceManagerClientProvider;
    private final Provider<ApiAuthenticatorClient> apiAuthenticatorProvider;
    private final ApiModule module;

    public ApiModule_ProvideTexaCareApiClientFactory(ApiModule apiModule, Provider<ApiAuthenticatorClient> provider, Provider<AccessTokenPersistenceManager> provider2) {
        this.module = apiModule;
        this.apiAuthenticatorProvider = provider;
        this.accessTokenPersistenceManagerClientProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TexaCareApiServiceClient get() {
        return provideTexaCareApiClient(this.module, this.apiAuthenticatorProvider.get(), this.accessTokenPersistenceManagerClientProvider.get());
    }

    public static ApiModule_ProvideTexaCareApiClientFactory create(ApiModule apiModule, Provider<ApiAuthenticatorClient> provider, Provider<AccessTokenPersistenceManager> provider2) {
        return new ApiModule_ProvideTexaCareApiClientFactory(apiModule, provider, provider2);
    }

    public static TexaCareApiServiceClient provideTexaCareApiClient(ApiModule apiModule, ApiAuthenticatorClient apiAuthenticatorClient, AccessTokenPersistenceManager accessTokenPersistenceManager) {
        return (TexaCareApiServiceClient) Preconditions.checkNotNullFromProvides(apiModule.provideTexaCareApiClient(apiAuthenticatorClient, accessTokenPersistenceManager));
    }
}
