package com.texa.careapp.dagger;

import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.communication.Communication;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_VehicleObserverFactory implements Factory<VehicleObserver> {
    private final Provider<TexaCareApiServiceUser> apiServiceProvider;
    private final Provider<Communication> communicationProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final Provider<EventBus> eventBusProvider;
    private final CareModule module;
    private final Provider<VehicleDataManager> vehicleDataManagerProvider;

    public CareModule_VehicleObserverFactory(CareModule careModule, Provider<DongleDataManager> provider, Provider<TexaCareApiServiceUser> provider2, Provider<VehicleDataManager> provider3, Provider<EventBus> provider4, Provider<Communication> provider5) {
        this.module = careModule;
        this.dongleDataManagerProvider = provider;
        this.apiServiceProvider = provider2;
        this.vehicleDataManagerProvider = provider3;
        this.eventBusProvider = provider4;
        this.communicationProvider = provider5;
    }

    @Override // javax.inject.Provider
    public VehicleObserver get() {
        return vehicleObserver(this.module, this.dongleDataManagerProvider.get(), this.apiServiceProvider.get(), this.vehicleDataManagerProvider.get(), this.eventBusProvider.get(), this.communicationProvider.get());
    }

    public static CareModule_VehicleObserverFactory create(CareModule careModule, Provider<DongleDataManager> provider, Provider<TexaCareApiServiceUser> provider2, Provider<VehicleDataManager> provider3, Provider<EventBus> provider4, Provider<Communication> provider5) {
        return new CareModule_VehicleObserverFactory(careModule, provider, provider2, provider3, provider4, provider5);
    }

    public static VehicleObserver vehicleObserver(CareModule careModule, DongleDataManager dongleDataManager, TexaCareApiServiceUser texaCareApiServiceUser, VehicleDataManager vehicleDataManager, EventBus eventBus, Communication communication) {
        return (VehicleObserver) Preconditions.checkNotNullFromProvides(careModule.vehicleObserver(dongleDataManager, texaCareApiServiceUser, vehicleDataManager, eventBus, communication));
    }
}
