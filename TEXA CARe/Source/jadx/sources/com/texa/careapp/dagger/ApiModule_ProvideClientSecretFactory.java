package com.texa.careapp.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiModule_ProvideClientSecretFactory implements Factory<String> {
    private final ApiModule module;

    public ApiModule_ProvideClientSecretFactory(ApiModule apiModule) {
        this.module = apiModule;
    }

    @Override // javax.inject.Provider
    public String get() {
        return provideClientSecret(this.module);
    }

    public static ApiModule_ProvideClientSecretFactory create(ApiModule apiModule) {
        return new ApiModule_ProvideClientSecretFactory(apiModule);
    }

    public static String provideClientSecret(ApiModule apiModule) {
        return (String) Preconditions.checkNotNullFromProvides(apiModule.provideClientSecret());
    }
}
