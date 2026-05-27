package com.texa.careapp.dagger;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import com.texa.careapp.utils.authentication.ApiAuthenticatorUser;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiModule_ProvideTexaCareApiServiceUserFactory implements Factory<TexaCareApiServiceUser> {
    private final Provider<AccessTokenPersistenceManager> accessTokenPersistenceManagerUserProvider;
    private final Provider<ApiAuthenticatorUser> apiAuthenticatorProvider;
    private final ApiModule module;

    public ApiModule_ProvideTexaCareApiServiceUserFactory(ApiModule apiModule, Provider<ApiAuthenticatorUser> provider, Provider<AccessTokenPersistenceManager> provider2) {
        this.module = apiModule;
        this.apiAuthenticatorProvider = provider;
        this.accessTokenPersistenceManagerUserProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TexaCareApiServiceUser get() {
        return provideTexaCareApiServiceUser(this.module, this.apiAuthenticatorProvider.get(), this.accessTokenPersistenceManagerUserProvider.get());
    }

    public static ApiModule_ProvideTexaCareApiServiceUserFactory create(ApiModule apiModule, Provider<ApiAuthenticatorUser> provider, Provider<AccessTokenPersistenceManager> provider2) {
        return new ApiModule_ProvideTexaCareApiServiceUserFactory(apiModule, provider, provider2);
    }

    public static TexaCareApiServiceUser provideTexaCareApiServiceUser(ApiModule apiModule, ApiAuthenticatorUser apiAuthenticatorUser, AccessTokenPersistenceManager accessTokenPersistenceManager) {
        return (TexaCareApiServiceUser) Preconditions.checkNotNullFromProvides(apiModule.provideTexaCareApiServiceUser(apiAuthenticatorUser, accessTokenPersistenceManager));
    }
}
