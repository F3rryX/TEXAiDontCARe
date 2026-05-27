package com.texa.careapp.dagger;

import com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideBatteryAnalyzerFactory implements Factory<BatteryAnalyzer> {
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideBatteryAnalyzerFactory(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        this.module = careModule;
        this.profileProvider = provider;
        this.featureVerifierProvider = provider2;
    }

    @Override // javax.inject.Provider
    public BatteryAnalyzer get() {
        return provideBatteryAnalyzer(this.module, this.profileProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideBatteryAnalyzerFactory create(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        return new CareModule_ProvideBatteryAnalyzerFactory(careModule, provider, provider2);
    }

    public static BatteryAnalyzer provideBatteryAnalyzer(CareModule careModule, Profile profile, FeatureVerifier featureVerifier) {
        return (BatteryAnalyzer) Preconditions.checkNotNullFromProvides(careModule.provideBatteryAnalyzer(profile, featureVerifier));
    }
}
