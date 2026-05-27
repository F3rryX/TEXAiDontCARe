package com.texa.careapp.dagger;

import com.texa.careapp.emergency.EmergencyDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideEmergencyDataManagerFactory implements Factory<EmergencyDataManager> {
    private final CareModule module;

    public CareModule_ProvideEmergencyDataManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public EmergencyDataManager get() {
        return provideEmergencyDataManager(this.module);
    }

    public static CareModule_ProvideEmergencyDataManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideEmergencyDataManagerFactory(careModule);
    }

    public static EmergencyDataManager provideEmergencyDataManager(CareModule careModule) {
        return (EmergencyDataManager) Preconditions.checkNotNullFromProvides(careModule.provideEmergencyDataManager());
    }
}
