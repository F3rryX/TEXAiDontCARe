package com.texa.careapp.dagger;

import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideVehicleDataManagerFactory implements Factory<VehicleDataManager> {
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final CareModule module;

    public CareModule_ProvideVehicleDataManagerFactory(CareModule careModule, Provider<DongleDataManager> provider) {
        this.module = careModule;
        this.dongleDataManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public VehicleDataManager get() {
        return provideVehicleDataManager(this.module, this.dongleDataManagerProvider.get());
    }

    public static CareModule_ProvideVehicleDataManagerFactory create(CareModule careModule, Provider<DongleDataManager> provider) {
        return new CareModule_ProvideVehicleDataManagerFactory(careModule, provider);
    }

    public static VehicleDataManager provideVehicleDataManager(CareModule careModule, DongleDataManager dongleDataManager) {
        return (VehicleDataManager) Preconditions.checkNotNullFromProvides(careModule.provideVehicleDataManager(dongleDataManager));
    }
}
