package com.texa.careapp.dagger;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideFirmwareUpgradeProcedureFactory implements Factory<FirmwareUpgradeProcedure> {
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideFirmwareUpgradeProcedureFactory(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        this.module = careModule;
        this.profileProvider = provider;
        this.featureVerifierProvider = provider2;
    }

    @Override // javax.inject.Provider
    public FirmwareUpgradeProcedure get() {
        return provideFirmwareUpgradeProcedure(this.module, this.profileProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideFirmwareUpgradeProcedureFactory create(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        return new CareModule_ProvideFirmwareUpgradeProcedureFactory(careModule, provider, provider2);
    }

    public static FirmwareUpgradeProcedure provideFirmwareUpgradeProcedure(CareModule careModule, Profile profile, FeatureVerifier featureVerifier) {
        return (FirmwareUpgradeProcedure) Preconditions.checkNotNullFromProvides(careModule.provideFirmwareUpgradeProcedure(profile, featureVerifier));
    }
}
