package com.texa.careapp.dagger;

import com.texa.careapp.utils.BatteryServiceAnalyzer;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideBatteryServiceAnalyzerFactory implements Factory<BatteryServiceAnalyzer> {
    private final CareModule module;

    public CareModule_ProvideBatteryServiceAnalyzerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public BatteryServiceAnalyzer get() {
        return provideBatteryServiceAnalyzer(this.module);
    }

    public static CareModule_ProvideBatteryServiceAnalyzerFactory create(CareModule careModule) {
        return new CareModule_ProvideBatteryServiceAnalyzerFactory(careModule);
    }

    public static BatteryServiceAnalyzer provideBatteryServiceAnalyzer(CareModule careModule) {
        return (BatteryServiceAnalyzer) Preconditions.checkNotNullFromProvides(careModule.provideBatteryServiceAnalyzer());
    }
}
