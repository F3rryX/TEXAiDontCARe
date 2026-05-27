package com.texa.careapp.dagger;

import android.content.SharedPreferences;
import com.texa.care.eco_driving.DrivingStyleManager;
import com.texa.care.eco_driving.RxVehicle;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.profile.Profile;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideDrivingStyleManagerFactory implements Factory<DrivingStyleManager> {
    private final Provider<Accessory> accessoryProvider;
    private final Provider<Communication> communicationProvider;
    private final Provider<CurrentTrip> currentTripProvider;
    private final Provider<DataManagerConfiguration> dataManagerConfigurationProvider;
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;
    private final Provider<RxVehicle> rxVehicleProvider;
    private final Provider<SharedPreferences> sharedPreferencesProvider;
    private final Provider<Vehicle> vehicleProvider;

    public CareModule_ProvideDrivingStyleManagerFactory(CareModule careModule, Provider<Profile> provider, Provider<DataManagerConfiguration> provider2, Provider<CurrentTrip> provider3, Provider<Vehicle> provider4, Provider<Accessory> provider5, Provider<FeatureVerifier> provider6, Provider<SharedPreferences> provider7, Provider<Communication> provider8, Provider<RxVehicle> provider9) {
        this.module = careModule;
        this.profileProvider = provider;
        this.dataManagerConfigurationProvider = provider2;
        this.currentTripProvider = provider3;
        this.vehicleProvider = provider4;
        this.accessoryProvider = provider5;
        this.featureVerifierProvider = provider6;
        this.sharedPreferencesProvider = provider7;
        this.communicationProvider = provider8;
        this.rxVehicleProvider = provider9;
    }

    @Override // javax.inject.Provider
    public DrivingStyleManager get() {
        return provideDrivingStyleManager(this.module, this.profileProvider.get(), this.dataManagerConfigurationProvider.get(), this.currentTripProvider.get(), this.vehicleProvider.get(), this.accessoryProvider.get(), this.featureVerifierProvider.get(), this.sharedPreferencesProvider.get(), this.communicationProvider.get(), this.rxVehicleProvider.get());
    }

    public static CareModule_ProvideDrivingStyleManagerFactory create(CareModule careModule, Provider<Profile> provider, Provider<DataManagerConfiguration> provider2, Provider<CurrentTrip> provider3, Provider<Vehicle> provider4, Provider<Accessory> provider5, Provider<FeatureVerifier> provider6, Provider<SharedPreferences> provider7, Provider<Communication> provider8, Provider<RxVehicle> provider9) {
        return new CareModule_ProvideDrivingStyleManagerFactory(careModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    public static DrivingStyleManager provideDrivingStyleManager(CareModule careModule, Profile profile, DataManagerConfiguration dataManagerConfiguration, CurrentTrip currentTrip, Vehicle vehicle, Accessory accessory, FeatureVerifier featureVerifier, SharedPreferences sharedPreferences, Communication communication, RxVehicle rxVehicle) {
        return (DrivingStyleManager) Preconditions.checkNotNullFromProvides(careModule.provideDrivingStyleManager(profile, dataManagerConfiguration, currentTrip, vehicle, accessory, featureVerifier, sharedPreferences, communication, rxVehicle));
    }
}
