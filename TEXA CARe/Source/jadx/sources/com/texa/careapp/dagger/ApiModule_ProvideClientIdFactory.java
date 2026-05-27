package com.texa.careapp.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiModule_ProvideClientIdFactory implements Factory<String> {
    private final ApiModule module;

    public ApiModule_ProvideClientIdFactory(ApiModule apiModule) {
        this.module = apiModule;
    }

    @Override // javax.inject.Provider
    public String get() {
        return provideClientId(this.module);
    }

    public static ApiModule_ProvideClientIdFactory create(ApiModule apiModule) {
        return new ApiModule_ProvideClientIdFactory(apiModule);
    }

    public static String provideClientId(ApiModule apiModule) {
        return (String) Preconditions.checkNotNullFromProvides(apiModule.provideClientId());
    }
}
