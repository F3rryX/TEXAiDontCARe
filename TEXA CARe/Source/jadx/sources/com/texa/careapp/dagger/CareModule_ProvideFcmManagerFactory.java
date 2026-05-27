package com.texa.careapp.dagger;

import com.texa.careapp.fcm.FcmManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideFcmManagerFactory implements Factory<FcmManager> {
    private final CareModule module;

    public CareModule_ProvideFcmManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public FcmManager get() {
        return provideFcmManager(this.module);
    }

    public static CareModule_ProvideFcmManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideFcmManagerFactory(careModule);
    }

    public static FcmManager provideFcmManager(CareModule careModule) {
        return (FcmManager) Preconditions.checkNotNullFromProvides(careModule.provideFcmManager());
    }
}
