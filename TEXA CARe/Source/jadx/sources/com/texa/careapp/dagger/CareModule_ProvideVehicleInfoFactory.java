package com.texa.careapp.dagger;

import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideVehicleInfoFactory implements Factory<VehicleInfo> {
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideVehicleInfoFactory(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        this.module = careModule;
        this.profileProvider = provider;
        this.featureVerifierProvider = provider2;
    }

    @Override // javax.inject.Provider
    public VehicleInfo get() {
        return provideVehicleInfo(this.module, this.profileProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideVehicleInfoFactory create(CareModule careModule, Provider<Profile> provider, Provider<FeatureVerifier> provider2) {
        return new CareModule_ProvideVehicleInfoFactory(careModule, provider, provider2);
    }

    public static VehicleInfo provideVehicleInfo(CareModule careModule, Profile profile, FeatureVerifier featureVerifier) {
        return (VehicleInfo) Preconditions.checkNotNullFromProvides(careModule.provideVehicleInfo(profile, featureVerifier));
    }
}
