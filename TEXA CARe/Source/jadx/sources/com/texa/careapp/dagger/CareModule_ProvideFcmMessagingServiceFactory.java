package com.texa.careapp.dagger;

import com.texa.careapp.fcm.FcmMessagingService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideFcmMessagingServiceFactory implements Factory<FcmMessagingService> {
    private final CareModule module;

    public CareModule_ProvideFcmMessagingServiceFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public FcmMessagingService get() {
        return provideFcmMessagingService(this.module);
    }

    public static CareModule_ProvideFcmMessagingServiceFactory create(CareModule careModule) {
        return new CareModule_ProvideFcmMessagingServiceFactory(careModule);
    }

    public static FcmMessagingService provideFcmMessagingService(CareModule careModule) {
        return (FcmMessagingService) Preconditions.checkNotNullFromProvides(careModule.provideFcmMessagingService());
    }
}
