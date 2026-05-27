package com.texa.careapp.dagger;

import android.content.Context;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideLocalBroadcastManagerFactory implements Factory<LocalBroadcastManager> {
    private final Provider<Context> contextProvider;
    private final CareModule module;

    public CareModule_ProvideLocalBroadcastManagerFactory(CareModule careModule, Provider<Context> provider) {
        this.module = careModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public LocalBroadcastManager get() {
        return provideLocalBroadcastManager(this.module, this.contextProvider.get());
    }

    public static CareModule_ProvideLocalBroadcastManagerFactory create(CareModule careModule, Provider<Context> provider) {
        return new CareModule_ProvideLocalBroadcastManagerFactory(careModule, provider);
    }

    public static LocalBroadcastManager provideLocalBroadcastManager(CareModule careModule, Context context) {
        return (LocalBroadcastManager) Preconditions.checkNotNullFromProvides(careModule.provideLocalBroadcastManager(context));
    }
}
