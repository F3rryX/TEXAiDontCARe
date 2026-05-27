package com.texa.careapp.dagger;

import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.tts.Speaker;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideSpeakerFactory implements Factory<Speaker> {
    private final Provider<ICareObserver> careObserverProvider;
    private final CareModule module;

    public CareModule_ProvideSpeakerFactory(CareModule careModule, Provider<ICareObserver> provider) {
        this.module = careModule;
        this.careObserverProvider = provider;
    }

    @Override // javax.inject.Provider
    public Speaker get() {
        return provideSpeaker(this.module, this.careObserverProvider.get());
    }

    public static CareModule_ProvideSpeakerFactory create(CareModule careModule, Provider<ICareObserver> provider) {
        return new CareModule_ProvideSpeakerFactory(careModule, provider);
    }

    public static Speaker provideSpeaker(CareModule careModule, ICareObserver iCareObserver) {
        return (Speaker) Preconditions.checkNotNullFromProvides(careModule.provideSpeaker(iCareObserver));
    }
}
