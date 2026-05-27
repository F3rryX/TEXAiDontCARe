package com.texa.careapp.dagger;

import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.carelib.communication.Communication;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideCommunicationObservableFactory implements Factory<CommunicationObservable> {
    private final Provider<Communication> communicationProvider;
    private final CareModule module;

    public CareModule_ProvideCommunicationObservableFactory(CareModule careModule, Provider<Communication> provider) {
        this.module = careModule;
        this.communicationProvider = provider;
    }

    @Override // javax.inject.Provider
    public CommunicationObservable get() {
        return provideCommunicationObservable(this.module, this.communicationProvider.get());
    }

    public static CareModule_ProvideCommunicationObservableFactory create(CareModule careModule, Provider<Communication> provider) {
        return new CareModule_ProvideCommunicationObservableFactory(careModule, provider);
    }

    public static CommunicationObservable provideCommunicationObservable(CareModule careModule, Communication communication) {
        return (CommunicationObservable) Preconditions.checkNotNullFromProvides(careModule.provideCommunicationObservable(communication));
    }
}
