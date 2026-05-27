package com.texa.careapp.dagger;

import com.texa.careapp.alarms.AlternatorStaticAnalyzer;
import com.texa.careapp.alarms.VehicleAlarmNotifier;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideAlternatorStaticAnalyzerFactory implements Factory<AlternatorStaticAnalyzer> {
    private final CareModule module;
    private final Provider<VehicleAlarmNotifier> vehicleAlarmNotifierProvider;

    public CareModule_ProvideAlternatorStaticAnalyzerFactory(CareModule careModule, Provider<VehicleAlarmNotifier> provider) {
        this.module = careModule;
        this.vehicleAlarmNotifierProvider = provider;
    }

    @Override // javax.inject.Provider
    public AlternatorStaticAnalyzer get() {
        return provideAlternatorStaticAnalyzer(this.module, this.vehicleAlarmNotifierProvider.get());
    }

    public static CareModule_ProvideAlternatorStaticAnalyzerFactory create(CareModule careModule, Provider<VehicleAlarmNotifier> provider) {
        return new CareModule_ProvideAlternatorStaticAnalyzerFactory(careModule, provider);
    }

    public static AlternatorStaticAnalyzer provideAlternatorStaticAnalyzer(CareModule careModule, VehicleAlarmNotifier vehicleAlarmNotifier) {
        return (AlternatorStaticAnalyzer) Preconditions.checkNotNullFromProvides(careModule.provideAlternatorStaticAnalyzer(vehicleAlarmNotifier));
    }
}
