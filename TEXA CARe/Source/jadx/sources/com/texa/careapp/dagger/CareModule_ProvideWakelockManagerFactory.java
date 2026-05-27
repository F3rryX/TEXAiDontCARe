package com.texa.careapp.dagger;

import com.texa.careapp.utils.wakelock.WakelockManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideWakelockManagerFactory implements Factory<WakelockManager> {
    private final CareModule module;

    public CareModule_ProvideWakelockManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public WakelockManager get() {
        return provideWakelockManager(this.module);
    }

    public static CareModule_ProvideWakelockManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideWakelockManagerFactory(careModule);
    }

    public static WakelockManager provideWakelockManager(CareModule careModule) {
        return (WakelockManager) Preconditions.checkNotNullFromProvides(careModule.provideWakelockManager());
    }
}
