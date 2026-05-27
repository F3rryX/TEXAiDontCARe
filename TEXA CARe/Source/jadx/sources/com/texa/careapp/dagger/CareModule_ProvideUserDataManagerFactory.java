package com.texa.careapp.dagger;

import com.texa.careapp.utils.UserDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideUserDataManagerFactory implements Factory<UserDataManager> {
    private final CareModule module;

    public CareModule_ProvideUserDataManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public UserDataManager get() {
        return provideUserDataManager(this.module);
    }

    public static CareModule_ProvideUserDataManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideUserDataManagerFactory(careModule);
    }

    public static UserDataManager provideUserDataManager(CareModule careModule) {
        return (UserDataManager) Preconditions.checkNotNullFromProvides(careModule.provideUserDataManager());
    }
}
