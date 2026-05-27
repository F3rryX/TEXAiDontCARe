package com.texa.careapp.dagger;

import com.texa.careapp.FlavorDelegator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideFlavorDelegatorFactory implements Factory<FlavorDelegator> {
    private final CareModule module;

    public CareModule_ProvideFlavorDelegatorFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public FlavorDelegator get() {
        return provideFlavorDelegator(this.module);
    }

    public static CareModule_ProvideFlavorDelegatorFactory create(CareModule careModule) {
        return new CareModule_ProvideFlavorDelegatorFactory(careModule);
    }

    public static FlavorDelegator provideFlavorDelegator(CareModule careModule) {
        return (FlavorDelegator) Preconditions.checkNotNullFromProvides(careModule.provideFlavorDelegator());
    }
}
