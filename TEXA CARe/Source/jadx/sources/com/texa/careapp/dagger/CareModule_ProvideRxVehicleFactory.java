package com.texa.careapp.dagger;

import com.texa.care.eco_driving.RxVehicle;
import com.texa.carelib.care.vehicle.Vehicle;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideRxVehicleFactory implements Factory<RxVehicle> {
    private final CareModule module;
    private final Provider<Vehicle> vehicleProvider;

    public CareModule_ProvideRxVehicleFactory(CareModule careModule, Provider<Vehicle> provider) {
        this.module = careModule;
        this.vehicleProvider = provider;
    }

    @Override // javax.inject.Provider
    public RxVehicle get() {
        return provideRxVehicle(this.module, this.vehicleProvider.get());
    }

    public static CareModule_ProvideRxVehicleFactory create(CareModule careModule, Provider<Vehicle> provider) {
        return new CareModule_ProvideRxVehicleFactory(careModule, provider);
    }

    public static RxVehicle provideRxVehicle(CareModule careModule, Vehicle vehicle) {
        return (RxVehicle) Preconditions.checkNotNullFromProvides(careModule.provideRxVehicle(vehicle));
    }
}
