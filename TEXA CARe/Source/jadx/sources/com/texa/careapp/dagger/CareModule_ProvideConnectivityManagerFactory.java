package com.texa.careapp.dagger;

import android.net.ConnectivityManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideConnectivityManagerFactory implements Factory<ConnectivityManager> {
    private final CareModule module;

    public CareModule_ProvideConnectivityManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public ConnectivityManager get() {
        return provideConnectivityManager(this.module);
    }

    public static CareModule_ProvideConnectivityManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideConnectivityManagerFactory(careModule);
    }

    public static ConnectivityManager provideConnectivityManager(CareModule careModule) {
        return (ConnectivityManager) Preconditions.checkNotNullFromProvides(careModule.provideConnectivityManager());
    }
}
