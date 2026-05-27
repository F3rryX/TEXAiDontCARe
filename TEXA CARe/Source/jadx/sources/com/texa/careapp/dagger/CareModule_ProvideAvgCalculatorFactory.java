package com.texa.careapp.dagger;

import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideAvgCalculatorFactory implements Factory<AvgCalculator> {
    private final CareModule module;

    public CareModule_ProvideAvgCalculatorFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public AvgCalculator get() {
        return provideAvgCalculator(this.module);
    }

    public static CareModule_ProvideAvgCalculatorFactory create(CareModule careModule) {
        return new CareModule_ProvideAvgCalculatorFactory(careModule);
    }

    public static AvgCalculator provideAvgCalculator(CareModule careModule) {
        return (AvgCalculator) Preconditions.checkNotNullFromProvides(careModule.provideAvgCalculator());
    }
}
