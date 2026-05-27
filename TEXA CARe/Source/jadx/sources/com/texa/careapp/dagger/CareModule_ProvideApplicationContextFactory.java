package com.texa.careapp.dagger;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideApplicationContextFactory implements Factory<Context> {
    private final CareModule module;

    public CareModule_ProvideApplicationContextFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public Context get() {
        return provideApplicationContext(this.module);
    }

    public static CareModule_ProvideApplicationContextFactory create(CareModule careModule) {
        return new CareModule_ProvideApplicationContextFactory(careModule);
    }

    public static Context provideApplicationContext(CareModule careModule) {
        return (Context) Preconditions.checkNotNullFromProvides(careModule.provideApplicationContext());
    }
}
