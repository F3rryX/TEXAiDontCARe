package com.texa.careapp.dagger;

import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.care.vehicle.Vehicle;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.communication.Communication;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideCareObserverFactory implements Factory<ICareObserver> {
    private final Provider<Accessory> accessoryProvider;
    private final Provider<Communication> communicationProvider;
    private final Provider<CurrentTrip> currentTripProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final CareModule module;
    private final Provider<VehicleInfo> vehicleInfoProvider;
    private final Provider<Vehicle> vehicleProvider;
    private final Provider<VehicleTroubles> vehicleTroublesProvider;

    public CareModule_ProvideCareObserverFactory(CareModule careModule, Provider<DongleDataManager> provider, Provider<Communication> provider2, Provider<CurrentTrip> provider3, Provider<Accessory> provider4, Provider<Vehicle> provider5, Provider<VehicleTroubles> provider6, Provider<VehicleInfo> provider7) {
        this.module = careModule;
        this.dongleDataManagerProvider = provider;
        this.communicationProvider = provider2;
        this.currentTripProvider = provider3;
        this.accessoryProvider = provider4;
        this.vehicleProvider = provider5;
        this.vehicleTroublesProvider = provider6;
        this.vehicleInfoProvider = provider7;
    }

    @Override // javax.inject.Provider
    public ICareObserver get() {
        return provideCareObserver(this.module, this.dongleDataManagerProvider.get(), this.communicationProvider.get(), this.currentTripProvider.get(), this.accessoryProvider.get(), this.vehicleProvider.get(), this.vehicleTroublesProvider.get(), this.vehicleInfoProvider.get());
    }

    public static CareModule_ProvideCareObserverFactory create(CareModule careModule, Provider<DongleDataManager> provider, Provider<Communication> provider2, Provider<CurrentTrip> provider3, Provider<Accessory> provider4, Provider<Vehicle> provider5, Provider<VehicleTroubles> provider6, Provider<VehicleInfo> provider7) {
        return new CareModule_ProvideCareObserverFactory(careModule, provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static ICareObserver provideCareObserver(CareModule careModule, DongleDataManager dongleDataManager, Communication communication, CurrentTrip currentTrip, Accessory accessory, Vehicle vehicle, VehicleTroubles vehicleTroubles, VehicleInfo vehicleInfo) {
        return (ICareObserver) Preconditions.checkNotNullFromProvides(careModule.provideCareObserver(dongleDataManager, communication, currentTrip, accessory, vehicle, vehicleTroubles, vehicleInfo));
    }
}
