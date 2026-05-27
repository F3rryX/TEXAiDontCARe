package com.texa.careapp.dagger;

import com.texa.careapp.parameters.VehicleParamMapperV2;
import com.texa.carelib.communication.Communication;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideVehicleParamMapperV2Factory implements Factory<VehicleParamMapperV2> {
    private final Provider<Communication> communicationProvider;
    private final CareModule module;

    public CareModule_ProvideVehicleParamMapperV2Factory(CareModule careModule, Provider<Communication> provider) {
        this.module = careModule;
        this.communicationProvider = provider;
    }

    @Override // javax.inject.Provider
    public VehicleParamMapperV2 get() {
        return provideVehicleParamMapperV2(this.module, this.communicationProvider.get());
    }

    public static CareModule_ProvideVehicleParamMapperV2Factory create(CareModule careModule, Provider<Communication> provider) {
        return new CareModule_ProvideVehicleParamMapperV2Factory(careModule, provider);
    }

    public static VehicleParamMapperV2 provideVehicleParamMapperV2(CareModule careModule, Communication communication) {
        return (VehicleParamMapperV2) Preconditions.checkNotNullFromProvides(careModule.provideVehicleParamMapperV2(communication));
    }
}
