package com.texa.careapp.dagger;

import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.TripLogBookReader;
import com.texa.careapp.utils.VehicleObserver;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideTripLogBookReaderFactory implements Factory<TripLogBookReader> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final CareModule module;
    private final Provider<VehicleObserver> vehicleObserverProvider;

    public CareModule_ProvideTripLogBookReaderFactory(CareModule careModule, Provider<VehicleObserver> provider, Provider<CAReWorkerManager> provider2) {
        this.module = careModule;
        this.vehicleObserverProvider = provider;
        this.mCAReWorkerManagerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public TripLogBookReader get() {
        return provideTripLogBookReader(this.module, this.vehicleObserverProvider.get(), this.mCAReWorkerManagerProvider.get());
    }

    public static CareModule_ProvideTripLogBookReaderFactory create(CareModule careModule, Provider<VehicleObserver> provider, Provider<CAReWorkerManager> provider2) {
        return new CareModule_ProvideTripLogBookReaderFactory(careModule, provider, provider2);
    }

    public static TripLogBookReader provideTripLogBookReader(CareModule careModule, VehicleObserver vehicleObserver, CAReWorkerManager cAReWorkerManager) {
        return (TripLogBookReader) Preconditions.checkNotNullFromProvides(careModule.provideTripLogBookReader(vehicleObserver, cAReWorkerManager));
    }
}
