package com.texa.careapp.app.activationSosServices;

import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public final class NoSosServiceScreen_MembersInjector implements MembersInjector<NoSosServiceScreen> {
    private final Provider<EventBus> mEventBusProvider;

    public NoSosServiceScreen_MembersInjector(Provider<EventBus> provider) {
        this.mEventBusProvider = provider;
    }

    public static MembersInjector<NoSosServiceScreen> create(Provider<EventBus> provider) {
        return new NoSosServiceScreen_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(NoSosServiceScreen noSosServiceScreen) {
        injectMEventBus(noSosServiceScreen, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(NoSosServiceScreen noSosServiceScreen, EventBus eventBus) {
        noSosServiceScreen.mEventBus = eventBus;
    }
}
