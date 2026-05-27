package com.texa.careapp.dagger;

import com.texa.careapp.networking.TexaCareAuthService;
import com.texa.careapp.networking.TexaCareAuthServiceHelper;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideTexaCareAuthServiceHelperFactory implements Factory<TexaCareAuthServiceHelper> {
    private final Provider<AccessTokenPersistenceManager> accessTokenPersistenceManagerClientProvider;
    private final Provider<String> clientIdProvider;
    private final Provider<String> clientSecretProvider;
    private final CareModule module;
    private final Provider<TexaCareAuthService> texaCareAuthServiceProvider;

    public CareModule_ProvideTexaCareAuthServiceHelperFactory(CareModule careModule, Provider<TexaCareAuthService> provider, Provider<String> provider2, Provider<String> provider3, Provider<AccessTokenPersistenceManager> provider4) {
        this.module = careModule;
        this.texaCareAuthServiceProvider = provider;
        this.clientIdProvider = provider2;
        this.clientSecretProvider = provider3;
        this.accessTokenPersistenceManagerClientProvider = provider4;
    }

    @Override // javax.inject.Provider
    public TexaCareAuthServiceHelper get() {
        return provideTexaCareAuthServiceHelper(this.module, this.texaCareAuthServiceProvider.get(), this.clientIdProvider.get(), this.clientSecretProvider.get(), this.accessTokenPersistenceManagerClientProvider.get());
    }

    public static CareModule_ProvideTexaCareAuthServiceHelperFactory create(CareModule careModule, Provider<TexaCareAuthService> provider, Provider<String> provider2, Provider<String> provider3, Provider<AccessTokenPersistenceManager> provider4) {
        return new CareModule_ProvideTexaCareAuthServiceHelperFactory(careModule, provider, provider2, provider3, provider4);
    }

    public static TexaCareAuthServiceHelper provideTexaCareAuthServiceHelper(CareModule careModule, TexaCareAuthService texaCareAuthService, String str, String str2, AccessTokenPersistenceManager accessTokenPersistenceManager) {
        return (TexaCareAuthServiceHelper) Preconditions.checkNotNullFromProvides(careModule.provideTexaCareAuthServiceHelper(texaCareAuthService, str, str2, accessTokenPersistenceManager));
    }
}
