package com.texa.careapp.dagger;

import android.accounts.AccountManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideAccountManagerFactory implements Factory<AccountManager> {
    private final CareModule module;

    public CareModule_ProvideAccountManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public AccountManager get() {
        return provideAccountManager(this.module);
    }

    public static CareModule_ProvideAccountManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideAccountManagerFactory(careModule);
    }

    public static AccountManager provideAccountManager(CareModule careModule) {
        return (AccountManager) Preconditions.checkNotNullFromProvides(careModule.provideAccountManager());
    }
}
