package com.texa.careapp.dagger;

import android.accounts.AccountManager;
import com.texa.careapp.utils.authentication.AccessTokenPersistenceManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideAccessTokenManagerUserFactory implements Factory<AccessTokenPersistenceManager> {
    private final Provider<AccountManager> accountManagerProvider;
    private final CareModule module;

    public CareModule_ProvideAccessTokenManagerUserFactory(CareModule careModule, Provider<AccountManager> provider) {
        this.module = careModule;
        this.accountManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public AccessTokenPersistenceManager get() {
        return provideAccessTokenManagerUser(this.module, this.accountManagerProvider.get());
    }

    public static CareModule_ProvideAccessTokenManagerUserFactory create(CareModule careModule, Provider<AccountManager> provider) {
        return new CareModule_ProvideAccessTokenManagerUserFactory(careModule, provider);
    }

    public static AccessTokenPersistenceManager provideAccessTokenManagerUser(CareModule careModule, AccountManager accountManager) {
        return (AccessTokenPersistenceManager) Preconditions.checkNotNullFromProvides(careModule.provideAccessTokenManagerUser(accountManager));
    }
}
