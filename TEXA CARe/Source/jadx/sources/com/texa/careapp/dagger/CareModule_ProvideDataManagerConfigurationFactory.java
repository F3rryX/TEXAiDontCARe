package com.texa.careapp.dagger;

import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideDataManagerConfigurationFactory implements Factory<DataManagerConfiguration> {
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideDataManagerConfigurationFactory(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        this.module = careModule;
        this.profileProvider = provider;
        this.featureVerifierProvider = provider2;
    }

    @Override // javax.inject.Provider
    public DataManagerConfiguration get() {
        return provideDataManagerConfiguration(this.module, this.profileProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideDataManagerConfigurationFactory create(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        return new CareModule_ProvideDataManagerConfigurationFactory(careModule, provider, provider2);
    }

    public static DataManagerConfiguration provideDataManagerConfiguration(CareModule careModule, Profile profile, FeatureVerifier featureVerifier) {
        return (DataManagerConfiguration) Preconditions.checkNotNullFromProvides(careModule.provideDataManagerConfiguration(profile, featureVerifier));
    }
}
