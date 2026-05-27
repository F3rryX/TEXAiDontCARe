package com.texa.careapp.dagger;

import android.content.Context;
import at.favre.lib.armadillo.ArmadilloSharedPreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideSecurePreferecesV2Factory implements Factory<ArmadilloSharedPreferences> {
    private final Provider<Context> contextProvider;
    private final CareModule module;

    public CareModule_ProvideSecurePreferecesV2Factory(CareModule careModule, Provider<Context> provider) {
        this.module = careModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public ArmadilloSharedPreferences get() {
        return provideSecurePreferecesV2(this.module, this.contextProvider.get());
    }

    public static CareModule_ProvideSecurePreferecesV2Factory create(CareModule careModule, Provider<Context> provider) {
        return new CareModule_ProvideSecurePreferecesV2Factory(careModule, provider);
    }

    public static ArmadilloSharedPreferences provideSecurePreferecesV2(CareModule careModule, Context context) {
        return (ArmadilloSharedPreferences) Preconditions.checkNotNullFromProvides(careModule.provideSecurePreferecesV2(context));
    }
}
