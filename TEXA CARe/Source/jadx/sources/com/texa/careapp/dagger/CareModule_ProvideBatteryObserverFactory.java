package com.texa.careapp.dagger;

import com.texa.careapp.alarms.BatteryChargeObserver;
import com.texa.careapp.alarms.VehicleAlarmNotifier;
import com.texa.careapp.utils.CareCache;
import com.texa.carelib.care.trips.CurrentTrip;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideBatteryObserverFactory implements Factory<BatteryChargeObserver> {
    private final Provider<CareCache> careCacheProvider;
    private final Provider<CurrentTrip> currentTripProvider;
    private final CareModule module;
    private final Provider<VehicleAlarmNotifier> vehicleAlarmNotifierProvider;

    public CareModule_ProvideBatteryObserverFactory(CareModule careModule, Provider<CurrentTrip> provider, Provider<CareCache> provider2, Provider<VehicleAlarmNotifier> provider3) {
        this.module = careModule;
        this.currentTripProvider = provider;
        this.careCacheProvider = provider2;
        this.vehicleAlarmNotifierProvider = provider3;
    }

    @Override // javax.inject.Provider
    public BatteryChargeObserver get() {
        return provideBatteryObserver(this.module, this.currentTripProvider.get(), this.careCacheProvider.get(), this.vehicleAlarmNotifierProvider.get());
    }

    public static CareModule_ProvideBatteryObserverFactory create(CareModule careModule, Provider<CurrentTrip> provider, Provider<CareCache> provider2, Provider<VehicleAlarmNotifier> provider3) {
        return new CareModule_ProvideBatteryObserverFactory(careModule, provider, provider2, provider3);
    }

    public static BatteryChargeObserver provideBatteryObserver(CareModule careModule, CurrentTrip currentTrip, CareCache careCache, VehicleAlarmNotifier vehicleAlarmNotifier) {
        return (BatteryChargeObserver) Preconditions.checkNotNullFromProvides(careModule.provideBatteryObserver(currentTrip, careCache, vehicleAlarmNotifier));
    }
}
