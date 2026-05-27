package com.texa.careapp.dagger;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideFeatureVerifierFactory implements Factory<FeatureVerifier> {
    private final Provider<Accessory> accessoryProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideFeatureVerifierFactory(CareModule careModule, Provider<Profile> provider, Provider<Accessory> provider2) {
        this.module = careModule;
        this.profileProvider = provider;
        this.accessoryProvider = provider2;
    }

    @Override // javax.inject.Provider
    public FeatureVerifier get() {
        return provideFeatureVerifier(this.module, this.profileProvider.get(), this.accessoryProvider.get());
    }

    public static CareModule_ProvideFeatureVerifierFactory create(CareModule careModule, Provider<Profile> provider, Provider<Accessory> provider2) {
        return new CareModule_ProvideFeatureVerifierFactory(careModule, provider, provider2);
    }

    public static FeatureVerifier provideFeatureVerifier(CareModule careModule, Profile profile, Accessory accessory) {
        return (FeatureVerifier) Preconditions.checkNotNullFromProvides(careModule.provideFeatureVerifier(profile, accessory));
    }
}
