package com.texa.careapp.dagger;

import com.texa.careapp.utils.LogConfigurator;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideLogConfiguratorFactory implements Factory<LogConfigurator> {
    private final CareModule module;

    public CareModule_ProvideLogConfiguratorFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public LogConfigurator get() {
        return provideLogConfigurator(this.module);
    }

    public static CareModule_ProvideLogConfiguratorFactory create(CareModule careModule) {
        return new CareModule_ProvideLogConfiguratorFactory(careModule);
    }

    public static LogConfigurator provideLogConfigurator(CareModule careModule) {
        return (LogConfigurator) Preconditions.checkNotNullFromProvides(careModule.provideLogConfigurator());
    }
}
