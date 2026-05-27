package com.texa.careapp.dagger;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideDiagnosticConfigurationFactory implements Factory<DiagnosticConfiguration> {
    private final Provider<Accessory> accessoryProvider;
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideDiagnosticConfigurationFactory(CareModule careModule, Provider<Profile> provider, Provider<Accessory> provider2, Provider<FeatureVerifier> provider3) {
        this.module = careModule;
        this.profileProvider = provider;
        this.accessoryProvider = provider2;
        this.featureVerifierProvider = provider3;
    }

    @Override // javax.inject.Provider
    public DiagnosticConfiguration get() {
        return provideDiagnosticConfiguration(this.module, this.profileProvider.get(), this.accessoryProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideDiagnosticConfigurationFactory create(CareModule careModule, Provider<Profile> provider, Provider<Accessory> provider2, Provider<FeatureVerifier> provider3) {
        return new CareModule_ProvideDiagnosticConfigurationFactory(careModule, provider, provider2, provider3);
    }

    public static DiagnosticConfiguration provideDiagnosticConfiguration(CareModule careModule, Profile profile, Accessory accessory, FeatureVerifier featureVerifier) {
        return (DiagnosticConfiguration) Preconditions.checkNotNullFromProvides(careModule.provideDiagnosticConfiguration(profile, accessory, featureVerifier));
    }
}
