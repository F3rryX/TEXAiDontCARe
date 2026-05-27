package com.texa.careapp.app.vehiclefinder;

import com.texa.careapp.utils.LocationTracker;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class VehicleFinderActivity_MembersInjector implements MembersInjector<VehicleFinderActivity> {
    private final Provider<Communication> communicationProvider;
    private final Provider<LocationTracker> mLocationTrackerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public VehicleFinderActivity_MembersInjector(Provider<Communication> provider, Provider<LocationTracker> provider2, Provider<VehicleObserver> provider3) {
        this.communicationProvider = provider;
        this.mLocationTrackerProvider = provider2;
        this.mVehicleObserverProvider = provider3;
    }

    public static MembersInjector<VehicleFinderActivity> create(Provider<Communication> provider, Provider<LocationTracker> provider2, Provider<VehicleObserver> provider3) {
        return new VehicleFinderActivity_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VehicleFinderActivity vehicleFinderActivity) {
        injectCommunication(vehicleFinderActivity, this.communicationProvider.get());
        injectMLocationTracker(vehicleFinderActivity, this.mLocationTrackerProvider.get());
        injectMVehicleObserver(vehicleFinderActivity, this.mVehicleObserverProvider.get());
    }

    public static void injectCommunication(VehicleFinderActivity vehicleFinderActivity, Communication communication) {
        vehicleFinderActivity.communication = communication;
    }

    public static void injectMLocationTracker(VehicleFinderActivity vehicleFinderActivity, LocationTracker locationTracker) {
        vehicleFinderActivity.mLocationTracker = locationTracker;
    }

    public static void injectMVehicleObserver(VehicleFinderActivity vehicleFinderActivity, VehicleObserver vehicleObserver) {
        vehicleFinderActivity.mVehicleObserver = vehicleObserver;
    }
}
