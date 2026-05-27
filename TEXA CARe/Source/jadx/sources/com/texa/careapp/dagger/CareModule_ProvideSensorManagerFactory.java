package com.texa.careapp.dagger;

import android.content.Context;
import android.hardware.SensorManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideSensorManagerFactory implements Factory<SensorManager> {
    private final Provider<Context> contextProvider;
    private final CareModule module;

    public CareModule_ProvideSensorManagerFactory(CareModule careModule, Provider<Context> provider) {
        this.module = careModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public SensorManager get() {
        return provideSensorManager(this.module, this.contextProvider.get());
    }

    public static CareModule_ProvideSensorManagerFactory create(CareModule careModule, Provider<Context> provider) {
        return new CareModule_ProvideSensorManagerFactory(careModule, provider);
    }

    public static SensorManager provideSensorManager(CareModule careModule, Context context) {
        return (SensorManager) Preconditions.checkNotNullFromProvides(careModule.provideSensorManager(context));
    }
}
