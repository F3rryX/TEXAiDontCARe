package com.texa.careapp.dagger;

import com.texa.securepreferences.SecurePreferences;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideSecurePreferecesFactory implements Factory<SecurePreferences> {
    private final CareModule module;

    public CareModule_ProvideSecurePreferecesFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public SecurePreferences get() {
        return provideSecurePrefereces(this.module);
    }

    public static CareModule_ProvideSecurePreferecesFactory create(CareModule careModule) {
        return new CareModule_ProvideSecurePreferecesFactory(careModule);
    }

    public static SecurePreferences provideSecurePrefereces(CareModule careModule) {
        return (SecurePreferences) Preconditions.checkNotNullFromProvides(careModule.provideSecurePrefereces());
    }
}
