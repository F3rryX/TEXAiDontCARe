package com.texa.careapp.app.activationSosServices;

import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public final class ActivationServiceVehicleDialog_MembersInjector implements MembersInjector<ActivationServiceVehicleDialog> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public ActivationServiceVehicleDialog_MembersInjector(Provider<VehicleObserver> provider, Provider<EventBus> provider2) {
        this.mVehicleObserverProvider = provider;
        this.mEventBusProvider = provider2;
    }

    public static MembersInjector<ActivationServiceVehicleDialog> create(Provider<VehicleObserver> provider, Provider<EventBus> provider2) {
        return new ActivationServiceVehicleDialog_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationServiceVehicleDialog activationServiceVehicleDialog) {
        injectMVehicleObserver(activationServiceVehicleDialog, this.mVehicleObserverProvider.get());
        injectMEventBus(activationServiceVehicleDialog, this.mEventBusProvider.get());
    }

    public static void injectMVehicleObserver(ActivationServiceVehicleDialog activationServiceVehicleDialog, VehicleObserver vehicleObserver) {
        activationServiceVehicleDialog.mVehicleObserver = vehicleObserver;
    }

    public static void injectMEventBus(ActivationServiceVehicleDialog activationServiceVehicleDialog, EventBus eventBus) {
        activationServiceVehicleDialog.mEventBus = eventBus;
    }
}
