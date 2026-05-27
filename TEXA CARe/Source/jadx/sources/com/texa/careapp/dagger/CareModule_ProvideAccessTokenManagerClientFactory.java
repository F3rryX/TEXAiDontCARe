package com.texa.careapp.dagger;

import android.content.SharedPreferences;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideAccessTokenManagerClientFactory implements Factory<AccessTokenPersistenceManager> {
    private final CareModule module;
    private final Provider<SharedPreferences> preferencesProvider;

    public CareModule_ProvideAccessTokenManagerClientFactory(CareModule careModule, Provider<SharedPreferences> provider) {
        this.module = careModule;
        this.preferencesProvider = provider;
    }

    @Override // javax.inject.Provider
    public AccessTokenPersistenceManager get() {
        return provideAccessTokenManagerClient(this.module, this.preferencesProvider.get());
    }

    public static CareModule_ProvideAccessTokenManagerClientFactory create(CareModule careModule, Provider<SharedPreferences> provider) {
        return new CareModule_ProvideAccessTokenManagerClientFactory(careModule, provider);
    }

    public static AccessTokenPersistenceManager provideAccessTokenManagerClient(CareModule careModule, SharedPreferences sharedPreferences) {
        return (AccessTokenPersistenceManager) Preconditions.checkNotNullFromProvides(careModule.provideAccessTokenManagerClient(sharedPreferences));
    }
}
