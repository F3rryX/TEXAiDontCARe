package com.texa.careapp.dagger;

import com.texa.careapp.model.DongleDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideDongleDataManagerFactory implements Factory<DongleDataManager> {
    private final CareModule module;

    public CareModule_ProvideDongleDataManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public DongleDataManager get() {
        return provideDongleDataManager(this.module);
    }

    public static CareModule_ProvideDongleDataManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideDongleDataManagerFactory(careModule);
    }

    public static DongleDataManager provideDongleDataManager(CareModule careModule) {
        return (DongleDataManager) Preconditions.checkNotNullFromProvides(careModule.provideDongleDataManager());
    }
}
