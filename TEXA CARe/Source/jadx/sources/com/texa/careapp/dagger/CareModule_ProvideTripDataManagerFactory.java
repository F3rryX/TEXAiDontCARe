package com.texa.careapp.dagger;

import com.texa.careapp.utils.TripDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideTripDataManagerFactory implements Factory<TripDataManager> {
    private final CareModule module;

    public CareModule_ProvideTripDataManagerFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public TripDataManager get() {
        return provideTripDataManager(this.module);
    }

    public static CareModule_ProvideTripDataManagerFactory create(CareModule careModule) {
        return new CareModule_ProvideTripDataManagerFactory(careModule);
    }

    public static TripDataManager provideTripDataManager(CareModule careModule) {
        return (TripDataManager) Preconditions.checkNotNullFromProvides(careModule.provideTripDataManager());
    }
}
