package com.texa.careapp.dagger;

import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.utils.DtcManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideLampsManagerFactory implements Factory<LampsManager> {
    private final Provider<DtcManager> dtcManagerProvider;
    private final CareModule module;
    private final Provider<VehicleParametersManagerV2> vehicleParametersManagerProvider;

    public CareModule_ProvideLampsManagerFactory(CareModule careModule, Provider<DtcManager> provider, Provider<VehicleParametersManagerV2> provider2) {
        this.module = careModule;
        this.dtcManagerProvider = provider;
        this.vehicleParametersManagerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public LampsManager get() {
        return provideLampsManager(this.module, this.dtcManagerProvider.get(), this.vehicleParametersManagerProvider.get());
    }

    public static CareModule_ProvideLampsManagerFactory create(CareModule careModule, Provider<DtcManager> provider, Provider<VehicleParametersManagerV2> provider2) {
        return new CareModule_ProvideLampsManagerFactory(careModule, provider, provider2);
    }

    public static LampsManager provideLampsManager(CareModule careModule, DtcManager dtcManager, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        return (LampsManager) Preconditions.checkNotNullFromProvides(careModule.provideLampsManager(dtcManager, vehicleParametersManagerV2));
    }
}
