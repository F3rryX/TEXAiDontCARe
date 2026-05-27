package com.texa.careapp.dagger;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.impacts.ImpactDetection;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideImpactDetectionFactory implements Factory<ImpactDetection> {
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideImpactDetectionFactory(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        this.module = careModule;
        this.profileProvider = provider;
        this.featureVerifierProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ImpactDetection get() {
        return provideImpactDetection(this.module, this.profileProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideImpactDetectionFactory create(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        return new CareModule_ProvideImpactDetectionFactory(careModule, provider, provider2);
    }

    public static ImpactDetection provideImpactDetection(CareModule careModule, Profile profile, FeatureVerifier featureVerifier) {
        return (ImpactDetection) Preconditions.checkNotNullFromProvides(careModule.provideImpactDetection(profile, featureVerifier));
    }
}
