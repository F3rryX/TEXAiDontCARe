package com.texa.careapp.dagger;

import android.hardware.SensorManager;
import com.texa.careapp.impactdetection.ImpactDetector;
import com.texa.carelib.communication.Communication;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideImpactDetectorFactory implements Factory<ImpactDetector> {
    private final Provider<Communication> communicationProvider;
    private final CareModule module;
    private final Provider<SensorManager> sensorManagerProvider;

    public CareModule_ProvideImpactDetectorFactory(CareModule careModule, Provider<Communication> provider, Provider<SensorManager> provider2) {
        this.module = careModule;
        this.communicationProvider = provider;
        this.sensorManagerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public ImpactDetector get() {
        return provideImpactDetector(this.module, this.communicationProvider.get(), this.sensorManagerProvider.get());
    }

    public static CareModule_ProvideImpactDetectorFactory create(CareModule careModule, Provider<Communication> provider, Provider<SensorManager> provider2) {
        return new CareModule_ProvideImpactDetectorFactory(careModule, provider, provider2);
    }

    public static ImpactDetector provideImpactDetector(CareModule careModule, Communication communication, SensorManager sensorManager) {
        return (ImpactDetector) Preconditions.checkNotNullFromProvides(careModule.provideImpactDetector(communication, sensorManager));
    }
}
