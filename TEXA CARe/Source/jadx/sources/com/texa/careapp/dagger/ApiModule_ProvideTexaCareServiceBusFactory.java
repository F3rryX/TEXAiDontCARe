package com.texa.careapp.dagger;

import com.texa.careapp.networking.TexaCareServiceBus;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiModule_ProvideTexaCareServiceBusFactory implements Factory<TexaCareServiceBus> {
    private final ApiModule module;

    public ApiModule_ProvideTexaCareServiceBusFactory(ApiModule apiModule) {
        this.module = apiModule;
    }

    @Override // javax.inject.Provider
    public TexaCareServiceBus get() {
        return provideTexaCareServiceBus(this.module);
    }

    public static ApiModule_ProvideTexaCareServiceBusFactory create(ApiModule apiModule) {
        return new ApiModule_ProvideTexaCareServiceBusFactory(apiModule);
    }

    public static TexaCareServiceBus provideTexaCareServiceBus(ApiModule apiModule) {
        return (TexaCareServiceBus) Preconditions.checkNotNullFromProvides(apiModule.provideTexaCareServiceBus());
    }
}
