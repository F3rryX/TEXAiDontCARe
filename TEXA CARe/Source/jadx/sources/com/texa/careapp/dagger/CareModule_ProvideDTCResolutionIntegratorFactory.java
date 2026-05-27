package com.texa.careapp.dagger;

import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.tools.integrator.DTCResolutionIntegrator;
import com.texa.carelib.webservices.TexaService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideDTCResolutionIntegratorFactory implements Factory<DTCResolutionIntegrator> {
    private final Provider<Accessory> accessoryProvider;
    private final CareModule module;
    private final Provider<TexaService> texaServiceProvider;
    private final Provider<VehicleTroubles> vehicleTroublesProvider;

    public CareModule_ProvideDTCResolutionIntegratorFactory(CareModule careModule, Provider<Accessory> provider, Provider<VehicleTroubles> provider2, Provider<TexaService> provider3) {
        this.module = careModule;
        this.accessoryProvider = provider;
        this.vehicleTroublesProvider = provider2;
        this.texaServiceProvider = provider3;
    }

    @Override // javax.inject.Provider
    public DTCResolutionIntegrator get() {
        return provideDTCResolutionIntegrator(this.module, this.accessoryProvider.get(), this.vehicleTroublesProvider.get(), this.texaServiceProvider.get());
    }

    public static CareModule_ProvideDTCResolutionIntegratorFactory create(CareModule careModule, Provider<Accessory> provider, Provider<VehicleTroubles> provider2, Provider<TexaService> provider3) {
        return new CareModule_ProvideDTCResolutionIntegratorFactory(careModule, provider, provider2, provider3);
    }

    public static DTCResolutionIntegrator provideDTCResolutionIntegrator(CareModule careModule, Accessory accessory, VehicleTroubles vehicleTroubles, TexaService texaService) {
        return (DTCResolutionIntegrator) Preconditions.checkNotNullFromProvides(careModule.provideDTCResolutionIntegrator(accessory, vehicleTroubles, texaService));
    }
}
