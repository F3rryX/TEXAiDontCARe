package com.texa.careapp.dagger;

import com.texa.careapp.utils.CrashlyticsHelper;
import com.texa.careapp.utils.UserDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideCrashlyticsHelperFactory implements Factory<CrashlyticsHelper> {
    private final CareModule module;
    private final Provider<UserDataManager> userDataManagerProvider;

    public CareModule_ProvideCrashlyticsHelperFactory(CareModule careModule, Provider<UserDataManager> provider) {
        this.module = careModule;
        this.userDataManagerProvider = provider;
    }

    @Override // javax.inject.Provider
    public CrashlyticsHelper get() {
        return provideCrashlyticsHelper(this.module, this.userDataManagerProvider.get());
    }

    public static CareModule_ProvideCrashlyticsHelperFactory create(CareModule careModule, Provider<UserDataManager> provider) {
        return new CareModule_ProvideCrashlyticsHelperFactory(careModule, provider);
    }

    public static CrashlyticsHelper provideCrashlyticsHelper(CareModule careModule, UserDataManager userDataManager) {
        return (CrashlyticsHelper) Preconditions.checkNotNullFromProvides(careModule.provideCrashlyticsHelper(userDataManager));
    }
}
