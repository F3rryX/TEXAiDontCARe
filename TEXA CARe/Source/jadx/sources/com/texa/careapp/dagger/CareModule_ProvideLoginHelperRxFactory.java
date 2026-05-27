package com.texa.careapp.dagger;

import com.texa.careapp.utils.LoginHelperRx;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideLoginHelperRxFactory implements Factory<LoginHelperRx> {
    private final CareModule module;

    public CareModule_ProvideLoginHelperRxFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public LoginHelperRx get() {
        return provideLoginHelperRx(this.module);
    }

    public static CareModule_ProvideLoginHelperRxFactory create(CareModule careModule) {
        return new CareModule_ProvideLoginHelperRxFactory(careModule);
    }

    public static LoginHelperRx provideLoginHelperRx(CareModule careModule) {
        return (LoginHelperRx) Preconditions.checkNotNullFromProvides(careModule.provideLoginHelperRx());
    }
}
