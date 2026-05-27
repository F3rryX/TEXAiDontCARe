package com.texa.careapp.dagger;

import android.content.SharedPreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvidePreferenceManagerFactory implements Factory<SharedPreferences> {
    private final CareModule module;

    public CareModule_ProvidePreferenceManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public SharedPreferences get() {
        return providePreferenceManager(this.module);
    }

    public static CareModule_ProvidePreferenceManagerFactory create(CareModule careModule) {
        return new CareModule_ProvidePreferenceManagerFactory(careModule);
    }

    public static SharedPreferences providePreferenceManager(CareModule careModule) {
        return (SharedPreferences) Preconditions.checkNotNullFromProvides(careModule.providePreferenceManager());
    }
}
