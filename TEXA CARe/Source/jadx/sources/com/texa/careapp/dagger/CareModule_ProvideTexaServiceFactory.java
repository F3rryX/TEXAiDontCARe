package com.texa.careapp.dagger;

import com.texa.carelib.webservices.TexaService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideTexaServiceFactory implements Factory<TexaService> {
    private final Provider<String> clientIdProvider;
    private final Provider<String> clientSecretProvider;
    private final CareModule module;

    public CareModule_ProvideTexaServiceFactory(CareModule careModule, Provider<String> provider, Provider<String> provider2) {
        this.module = careModule;
        this.clientIdProvider = provider;
        this.clientSecretProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TexaService get() {
        return provideTexaService(this.module, this.clientIdProvider.get(), this.clientSecretProvider.get());
    }

    public static CareModule_ProvideTexaServiceFactory create(CareModule careModule, Provider<String> provider, Provider<String> provider2) {
        return new CareModule_ProvideTexaServiceFactory(careModule, provider, provider2);
    }

    public static TexaService provideTexaService(CareModule careModule, String str, String str2) {
        return (TexaService) Preconditions.checkNotNullFromProvides(careModule.provideTexaService(str, str2));
    }
}
