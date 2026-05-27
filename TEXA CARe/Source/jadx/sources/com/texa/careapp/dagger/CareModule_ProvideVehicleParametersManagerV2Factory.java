package com.texa.careapp.dagger;

import com.texa.care.eco_driving.RxVehicle;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.vehicle.Vehicle;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideVehicleParametersManagerV2Factory implements Factory<VehicleParametersManagerV2> {
    private final Provider<CurrentTrip> currentTripProvider;
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final CareModule module;
    private final Provider<RxVehicle> rxVehicleProvider;
    private final Provider<VehicleObserver> vehicleObserverProvider;
    private final Provider<Vehicle> vehicleProvider;

    public CareModule_ProvideVehicleParametersManagerV2Factory(CareModule careModule, Provider<Vehicle> provider, Provider<CurrentTrip> provider2, Provider<VehicleObserver> provider3, Provider<CAReWorkerManager> provider4, Provider<FeatureVerifier> provider5, Provider<RxVehicle> provider6) {
        this.module = careModule;
        this.vehicleProvider = provider;
        this.currentTripProvider = provider2;
        this.vehicleObserverProvider = provider3;
        this.mCAReWorkerManagerProvider = provider4;
        this.featureVerifierProvider = provider5;
        this.rxVehicleProvider = provider6;
    }

    @Override // javax.inject.Provider
    public VehicleParametersManagerV2 get() {
        return provideVehicleParametersManagerV2(this.module, this.vehicleProvider.get(), this.currentTripProvider.get(), this.vehicleObserverProvider.get(), this.mCAReWorkerManagerProvider.get(), this.featureVerifierProvider.get(), this.rxVehicleProvider.get());
    }

    public static CareModule_ProvideVehicleParametersManagerV2Factory create(CareModule careModule, Provider<Vehicle> provider, Provider<CurrentTrip> provider2, Provider<VehicleObserver> provider3, Provider<CAReWorkerManager> provider4, Provider<FeatureVerifier> provider5, Provider<RxVehicle> provider6) {
        return new CareModule_ProvideVehicleParametersManagerV2Factory(careModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static VehicleParametersManagerV2 provideVehicleParametersManagerV2(CareModule careModule, Vehicle vehicle, CurrentTrip currentTrip, VehicleObserver vehicleObserver, CAReWorkerManager cAReWorkerManager, FeatureVerifier featureVerifier, RxVehicle rxVehicle) {
        return (VehicleParametersManagerV2) Preconditions.checkNotNullFromProvides(careModule.provideVehicleParametersManagerV2(vehicle, currentTrip, vehicleObserver, cAReWorkerManager, featureVerifier, rxVehicle));
    }
}
