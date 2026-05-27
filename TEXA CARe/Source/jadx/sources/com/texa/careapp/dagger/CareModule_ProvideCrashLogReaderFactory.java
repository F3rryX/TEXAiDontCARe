package com.texa.careapp.dagger;

import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.CrashLogReader;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideCrashLogReaderFactory implements Factory<CrashLogReader> {
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final CareModule module;

    public CareModule_ProvideCrashLogReaderFactory(CareModule careModule, Provider<DongleDataManager> provider, Provider<CAReWorkerManager> provider2) {
        this.module = careModule;
        this.dongleDataManagerProvider = provider;
        this.mCAReWorkerManagerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public CrashLogReader get() {
        return provideCrashLogReader(this.module, this.dongleDataManagerProvider.get(), this.mCAReWorkerManagerProvider.get());
    }

    public static CareModule_ProvideCrashLogReaderFactory create(CareModule careModule, Provider<DongleDataManager> provider, Provider<CAReWorkerManager> provider2) {
        return new CareModule_ProvideCrashLogReaderFactory(careModule, provider, provider2);
    }

    public static CrashLogReader provideCrashLogReader(CareModule careModule, DongleDataManager dongleDataManager, CAReWorkerManager cAReWorkerManager) {
        return (CrashLogReader) Preconditions.checkNotNullFromProvides(careModule.provideCrashLogReader(dongleDataManager, cAReWorkerManager));
    }
}
