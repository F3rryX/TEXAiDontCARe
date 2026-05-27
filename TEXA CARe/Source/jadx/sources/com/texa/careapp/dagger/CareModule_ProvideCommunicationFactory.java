package com.texa.careapp.dagger;

import com.texa.carelib.communication.Communication;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideCommunicationFactory implements Factory<Communication> {
    private final CareModule module;

    public CareModule_ProvideCommunicationFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public Communication get() {
        return provideCommunication(this.module);
    }

    public static CareModule_ProvideCommunicationFactory create(CareModule careModule) {
        return new CareModule_ProvideCommunicationFactory(careModule);
    }

    public static Communication provideCommunication(CareModule careModule) {
        return (Communication) Preconditions.checkNotNullFromProvides(careModule.provideCommunication());
    }
}
