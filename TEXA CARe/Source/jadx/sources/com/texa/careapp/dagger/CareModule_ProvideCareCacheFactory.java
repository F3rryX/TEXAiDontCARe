package com.texa.careapp.dagger;

import android.content.SharedPreferences;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.CareCache;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideCareCacheFactory implements Factory<CareCache> {
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final CareModule module;
    private final Provider<SharedPreferences> preferencesProvider;

    public CareModule_ProvideCareCacheFactory(CareModule careModule, Provider<SharedPreferences> provider, Provider<DongleDataManager> provider2) {
        this.module = careModule;
        this.preferencesProvider = provider;
        this.dongleDataManagerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public CareCache get() {
        return provideCareCache(this.module, this.preferencesProvider.get(), this.dongleDataManagerProvider.get());
    }

    public static CareModule_ProvideCareCacheFactory create(CareModule careModule, Provider<SharedPreferences> provider, Provider<DongleDataManager> provider2) {
        return new CareModule_ProvideCareCacheFactory(careModule, provider, provider2);
    }

    public static CareCache provideCareCache(CareModule careModule, SharedPreferences sharedPreferences, DongleDataManager dongleDataManager) {
        return (CareCache) Preconditions.checkNotNullFromProvides(careModule.provideCareCache(sharedPreferences, dongleDataManager));
    }
}
