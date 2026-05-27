package com.texa.careapp.dagger;

import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.LocationTracker;
import com.texa.carelib.care.trips.CurrentTrip;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideLocationTrackerFactory implements Factory<LocationTracker> {
    private final Provider<ICareObserver> careObserverProvider;
    private final Provider<CommunicationObservable> communicationObservableProvider;
    private final Provider<CurrentTrip> currentTripProvider;
    private final Provider<LoggerManager> loggerManagerProvider;
    private final CareModule module;
    private final Provider<VehicleParametersManagerV2> vehicleParametersManagerV2Provider;

    public CareModule_ProvideLocationTrackerFactory(CareModule careModule, Provider<VehicleParametersManagerV2> provider, Provider<ICareObserver> provider2, Provider<CommunicationObservable> provider3, Provider<CurrentTrip> provider4, Provider<LoggerManager> provider5) {
        this.module = careModule;
        this.vehicleParametersManagerV2Provider = provider;
        this.careObserverProvider = provider2;
        this.communicationObservableProvider = provider3;
        this.currentTripProvider = provider4;
        this.loggerManagerProvider = provider5;
    }

    @Override // javax.inject.Provider
    public LocationTracker get() {
        return provideLocationTracker(this.module, this.vehicleParametersManagerV2Provider.get(), this.careObserverProvider.get(), this.communicationObservableProvider.get(), this.currentTripProvider.get(), this.loggerManagerProvider.get());
    }

    public static CareModule_ProvideLocationTrackerFactory create(CareModule careModule, Provider<VehicleParametersManagerV2> provider, Provider<ICareObserver> provider2, Provider<CommunicationObservable> provider3, Provider<CurrentTrip> provider4, Provider<LoggerManager> provider5) {
        return new CareModule_ProvideLocationTrackerFactory(careModule, provider, provider2, provider3, provider4, provider5);
    }

    public static LocationTracker provideLocationTracker(CareModule careModule, VehicleParametersManagerV2 vehicleParametersManagerV2, ICareObserver iCareObserver, CommunicationObservable communicationObservable, CurrentTrip currentTrip, LoggerManager loggerManager) {
        return (LocationTracker) Preconditions.checkNotNullFromProvides(careModule.provideLocationTracker(vehicleParametersManagerV2, iCareObserver, communicationObservable, currentTrip, loggerManager));
    }
}
