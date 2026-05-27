package com.texa.careapp.dagger;

import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.utils.DtcManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.vehicletroubles.VehicleTroubles;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.tools.integrator.DTCResolutionIntegrator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideDtcManagerFactory implements Factory<DtcManager> {
    private final Provider<Accessory> accessoryProvider;
    private final Provider<ICareObserver> careObserverProvider;
    private final Provider<DTCResolutionIntegrator> dtcResolutionIntegratorProvider;
    private final Provider<FeatureVerifier> featureVerifierProvider;
    private final CareModule module;
    private final Provider<Profile> profileProvider;
    private final Provider<VehicleObserver> vehicleObserverProvider;
    private final Provider<VehicleTroubles> vehicleTroublesProvider;

    public CareModule_ProvideDtcManagerFactory(CareModule careModule, Provider<ICareObserver> provider, Provider<Profile> provider2, Provider<Accessory> provider3, Provider<FeatureVerifier> provider4, Provider<VehicleTroubles> provider5, Provider<DTCResolutionIntegrator> provider6, Provider<VehicleObserver> provider7) {
        this.module = careModule;
        this.careObserverProvider = provider;
        this.profileProvider = provider2;
        this.accessoryProvider = provider3;
        this.featureVerifierProvider = provider4;
        this.vehicleTroublesProvider = provider5;
        this.dtcResolutionIntegratorProvider = provider6;
        this.vehicleObserverProvider = provider7;
    }

    @Override // javax.inject.Provider
    public DtcManager get() {
        return provideDtcManager(this.module, this.careObserverProvider.get(), this.profileProvider.get(), this.accessoryProvider.get(), this.featureVerifierProvider.get(), this.vehicleTroublesProvider.get(), this.dtcResolutionIntegratorProvider.get(), this.vehicleObserverProvider.get());
    }

    public static CareModule_ProvideDtcManagerFactory create(CareModule careModule, Provider<ICareObserver> provider, Provider<Profile> provider2, Provider<Accessory> provider3, Provider<FeatureVerifier> provider4, Provider<VehicleTroubles> provider5, Provider<DTCResolutionIntegrator> provider6, Provider<VehicleObserver> provider7) {
        return new CareModule_ProvideDtcManagerFactory(careModule, provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static DtcManager provideDtcManager(CareModule careModule, ICareObserver iCareObserver, Profile profile, Accessory accessory, FeatureVerifier featureVerifier, VehicleTroubles vehicleTroubles, DTCResolutionIntegrator dTCResolutionIntegrator, VehicleObserver vehicleObserver) {
        return (DtcManager) Preconditions.checkNotNullFromProvides(careModule.provideDtcManager(iCareObserver, profile, accessory, featureVerifier, vehicleTroubles, dTCResolutionIntegrator, vehicleObserver));
    }
}
