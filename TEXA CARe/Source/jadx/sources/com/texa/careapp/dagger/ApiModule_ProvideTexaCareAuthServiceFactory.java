package com.texa.careapp.dagger;

import com.texa.careapp.networking.TexaCareAuthService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiModule_ProvideTexaCareAuthServiceFactory implements Factory<TexaCareAuthService> {
    private final ApiModule module;

    public ApiModule_ProvideTexaCareAuthServiceFactory(ApiModule apiModule) {
        this.module = apiModule;
    }

    @Override // javax.inject.Provider
    public TexaCareAuthService get() {
        return provideTexaCareAuthService(this.module);
    }

    public static ApiModule_ProvideTexaCareAuthServiceFactory create(ApiModule apiModule) {
        return new ApiModule_ProvideTexaCareAuthServiceFactory(apiModule);
    }

    public static TexaCareAuthService provideTexaCareAuthService(ApiModule apiModule) {
        return (TexaCareAuthService) Preconditions.checkNotNullFromProvides(apiModule.provideTexaCareAuthService());
    }
}
