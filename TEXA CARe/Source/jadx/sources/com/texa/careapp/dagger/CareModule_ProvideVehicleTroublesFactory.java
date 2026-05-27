package com.texa.careapp.dagger;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideVehicleTroublesFactory implements Factory<VehicleTroubles> {
    private final Provider<Accessory> accessoryProvider;
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideVehicleTroublesFactory(CareModule careModule, Provider<Profile> provider, Provider<Accessory> provider2, Provider<FeatureVerifier> provider3) {
        this.module = careModule;
        this.profileProvider = provider;
        this.accessoryProvider = provider2;
        this.featureVerifierProvider = provider3;
    }

    @Override // javax.inject.Provider
    public VehicleTroubles get() {
        return provideVehicleTroubles(this.module, this.profileProvider.get(), this.accessoryProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideVehicleTroublesFactory create(CareModule careModule, Provider<Profile> provider, Provider<Accessory> provider2, Provider<FeatureVerifier> provider3) {
        return new CareModule_ProvideVehicleTroublesFactory(careModule, provider, provider2, provider3);
    }

    public static VehicleTroubles provideVehicleTroubles(CareModule careModule, Profile profile, Accessory accessory, FeatureVerifier featureVerifier) {
        return (VehicleTroubles) Preconditions.checkNotNullFromProvides(careModule.provideVehicleTroubles(profile, accessory, featureVerifier));
    }
}
