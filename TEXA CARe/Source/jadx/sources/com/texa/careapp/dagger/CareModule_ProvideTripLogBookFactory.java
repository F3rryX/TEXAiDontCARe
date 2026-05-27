package com.texa.careapp.dagger;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.TripLogBook;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideTripLogBookFactory implements Factory<TripLogBook> {
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideTripLogBookFactory(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        this.module = careModule;
        this.profileProvider = provider;
        this.featureVerifierProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TripLogBook get() {
        return provideTripLogBook(this.module, this.profileProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideTripLogBookFactory create(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        return new CareModule_ProvideTripLogBookFactory(careModule, provider, provider2);
    }

    public static TripLogBook provideTripLogBook(CareModule careModule, Profile profile, FeatureVerifier featureVerifier) {
        return (TripLogBook) Preconditions.checkNotNullFromProvides(careModule.provideTripLogBook(profile, featureVerifier));
    }
}
