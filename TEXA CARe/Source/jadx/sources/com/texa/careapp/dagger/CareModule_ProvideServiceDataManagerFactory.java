package com.texa.careapp.dagger;

import com.texa.careapp.utils.ServiceDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideServiceDataManagerFactory implements Factory<ServiceDataManager> {
    private final CareModule module;

    public CareModule_ProvideServiceDataManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public ServiceDataManager get() {
        return provideServiceDataManager(this.module);
    }

    public static CareModule_ProvideServiceDataManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideServiceDataManagerFactory(careModule);
    }

    public static ServiceDataManager provideServiceDataManager(CareModule careModule) {
        return (ServiceDataManager) Preconditions.checkNotNullFromProvides(careModule.provideServiceDataManager());
    }
}
