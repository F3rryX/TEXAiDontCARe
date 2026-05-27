package com.texa.careapp.dagger;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideCurrentTripFactory implements Factory<CurrentTrip> {
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideCurrentTripFactory(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        this.module = careModule;
        this.profileProvider = provider;
        this.featureVerifierProvider = provider2;
    }

    @Override // javax.inject.Provider
    public CurrentTrip get() {
        return provideCurrentTrip(this.module, this.profileProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideCurrentTripFactory create(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        return new CareModule_ProvideCurrentTripFactory(careModule, provider, provider2);
    }

    public static CurrentTrip provideCurrentTrip(CareModule careModule, Profile profile, FeatureVerifier featureVerifier) {
        return (CurrentTrip) Preconditions.checkNotNullFromProvides(careModule.provideCurrentTrip(profile, featureVerifier));
    }
}
