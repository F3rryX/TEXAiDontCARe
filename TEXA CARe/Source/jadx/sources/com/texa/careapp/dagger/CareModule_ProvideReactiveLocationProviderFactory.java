package com.texa.careapp.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideReactiveLocationProviderFactory implements Factory<ReactiveLocationProvider> {
    private final CareModule module;

    public CareModule_ProvideReactiveLocationProviderFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public ReactiveLocationProvider get() {
        return provideReactiveLocationProvider(this.module);
    }

    public static CareModule_ProvideReactiveLocationProviderFactory create(CareModule careModule) {
        return new CareModule_ProvideReactiveLocationProviderFactory(careModule);
    }

    public static ReactiveLocationProvider provideReactiveLocationProvider(CareModule careModule) {
        return (ReactiveLocationProvider) Preconditions.checkNotNullFromProvides(careModule.provideReactiveLocationProvider());
    }
}
