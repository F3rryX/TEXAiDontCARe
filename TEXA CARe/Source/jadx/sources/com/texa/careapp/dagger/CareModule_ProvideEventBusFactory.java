package com.texa.careapp.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideEventBusFactory implements Factory<EventBus> {
    private final CareModule module;

    public CareModule_ProvideEventBusFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public EventBus get() {
        return provideEventBus(this.module);
    }

    public static CareModule_ProvideEventBusFactory create(CareModule careModule) {
        return new CareModule_ProvideEventBusFactory(careModule);
    }

    public static EventBus provideEventBus(CareModule careModule) {
        return (EventBus) Preconditions.checkNotNullFromProvides(careModule.provideEventBus());
    }
}
