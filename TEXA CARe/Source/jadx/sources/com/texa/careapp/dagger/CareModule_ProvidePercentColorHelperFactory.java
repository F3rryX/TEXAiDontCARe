package com.texa.careapp.dagger;

import com.texa.careapp.utils.PercentColorHelper;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvidePercentColorHelperFactory implements Factory<PercentColorHelper> {
    private final CareModule module;

    public CareModule_ProvidePercentColorHelperFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public PercentColorHelper get() {
        return providePercentColorHelper(this.module);
    }

    public static CareModule_ProvidePercentColorHelperFactory create(CareModule careModule) {
        return new CareModule_ProvidePercentColorHelperFactory(careModule);
    }

    public static PercentColorHelper providePercentColorHelper(CareModule careModule) {
        return (PercentColorHelper) Preconditions.checkNotNullFromProvides(careModule.providePercentColorHelper());
    }
}
