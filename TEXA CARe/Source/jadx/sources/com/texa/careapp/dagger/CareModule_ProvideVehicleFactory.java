package com.texa.careapp.dagger;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideVehicleFactory implements Factory<Vehicle> {
    private final Provider<Accessory> accessoryProvider;
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;

    public CareModule_ProvideVehicleFactory(CareModule careModule, Provider<Profile> provider, Provider<Accessory> provider2, Provider<FeatureVerifier> provider3) {
        this.module = careModule;
        this.profileProvider = provider;
        this.accessoryProvider = provider2;
        this.featureVerifierProvider = provider3;
    }

    @Override // javax.inject.Provider
    public Vehicle get() {
        return provideVehicle(this.module, this.profileProvider.get(), this.accessoryProvider.get(), this.featureVerifierProvider.get());
    }

    public static CareModule_ProvideVehicleFactory create(CareModule careModule, Provider<Profile> provider, Provider<Accessory> provider2, Provider<FeatureVerifier> provider3) {
        return new CareModule_ProvideVehicleFactory(careModule, provider, provider2, provider3);
    }

    public static Vehicle provideVehicle(CareModule careModule, Profile profile, Accessory accessory, FeatureVerifier featureVerifier) {
        return (Vehicle) Preconditions.checkNotNullFromProvides(careModule.provideVehicle(profile, accessory, featureVerifier));
    }
}
