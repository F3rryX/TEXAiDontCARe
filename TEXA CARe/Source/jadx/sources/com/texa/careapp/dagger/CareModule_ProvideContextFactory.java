package com.texa.careapp.dagger;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideContextFactory implements Factory<Context> {
    private final CareModule module;

    public CareModule_ProvideContextFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public Context get() {
        return provideContext(this.module);
    }

    public static CareModule_ProvideContextFactory create(CareModule careModule) {
        return new CareModule_ProvideContextFactory(careModule);
    }

    public static Context provideContext(CareModule careModule) {
        return (Context) Preconditions.checkNotNullFromProvides(careModule.provideContext());
    }
}
