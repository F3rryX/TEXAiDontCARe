package com.texa.careapp.dagger;

import com.texa.careapp.app.errorsDTC.LampStatusDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideLampStatusDataManagerFactory implements Factory<LampStatusDataManager> {
    private final CareModule module;

    public CareModule_ProvideLampStatusDataManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public LampStatusDataManager get() {
        return provideLampStatusDataManager(this.module);
    }

    public static CareModule_ProvideLampStatusDataManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideLampStatusDataManagerFactory(careModule);
    }

    public static LampStatusDataManager provideLampStatusDataManager(CareModule careModule) {
        return (LampStatusDataManager) Preconditions.checkNotNullFromProvides(careModule.provideLampStatusDataManager());
    }
}
