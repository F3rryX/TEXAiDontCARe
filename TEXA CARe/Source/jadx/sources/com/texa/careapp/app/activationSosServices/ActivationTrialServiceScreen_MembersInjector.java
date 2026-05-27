package com.texa.careapp.app.activationSosServices;

import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public final class ActivationTrialServiceScreen_MembersInjector implements MembersInjector<ActivationTrialServiceScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public ActivationTrialServiceScreen_MembersInjector(Provider<VehicleObserver> provider, Provider<VehicleDataManager> provider2, Provider<EventBus> provider3) {
        this.mVehicleObserverProvider = provider;
        this.mVehicleDataManagerProvider = provider2;
        this.mEventBusProvider = provider3;
    }

    public static MembersInjector<ActivationTrialServiceScreen> create(Provider<VehicleObserver> provider, Provider<VehicleDataManager> provider2, Provider<EventBus> provider3) {
        return new ActivationTrialServiceScreen_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationTrialServiceScreen activationTrialServiceScreen) {
        injectMVehicleObserver(activationTrialServiceScreen, this.mVehicleObserverProvider.get());
        injectMVehicleDataManager(activationTrialServiceScreen, this.mVehicleDataManagerProvider.get());
        injectMEventBus(activationTrialServiceScreen, this.mEventBusProvider.get());
    }

    public static void injectMVehicleObserver(ActivationTrialServiceScreen activationTrialServiceScreen, VehicleObserver vehicleObserver) {
        activationTrialServiceScreen.mVehicleObserver = vehicleObserver;
    }

    public static void injectMVehicleDataManager(ActivationTrialServiceScreen activationTrialServiceScreen, VehicleDataManager vehicleDataManager) {
        activationTrialServiceScreen.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMEventBus(ActivationTrialServiceScreen activationTrialServiceScreen, EventBus eventBus) {
        activationTrialServiceScreen.mEventBus = eventBus;
    }
}
