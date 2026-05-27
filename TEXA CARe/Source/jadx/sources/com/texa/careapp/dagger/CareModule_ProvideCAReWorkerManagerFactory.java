package com.texa.careapp.dagger;

import android.content.Context;
import com.texa.careapp.sync.CAReWorkerManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideCAReWorkerManagerFactory implements Factory<CAReWorkerManager> {
    private final Provider<Context> contextProvider;
    private final CareModule module;

    public CareModule_ProvideCAReWorkerManagerFactory(CareModule careModule, Provider<Context> provider) {
        this.module = careModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public CAReWorkerManager get() {
        return provideCAReWorkerManager(this.module, this.contextProvider.get());
    }

    public static CareModule_ProvideCAReWorkerManagerFactory create(CareModule careModule, Provider<Context> provider) {
        return new CareModule_ProvideCAReWorkerManagerFactory(careModule, provider);
    }

    public static CAReWorkerManager provideCAReWorkerManager(CareModule careModule, Context context) {
        return (CAReWorkerManager) Preconditions.checkNotNullFromProvides(careModule.provideCAReWorkerManager(context));
    }
}
