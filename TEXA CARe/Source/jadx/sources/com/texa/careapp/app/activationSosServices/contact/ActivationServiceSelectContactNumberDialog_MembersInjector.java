package com.texa.careapp.app.activationSosServices.contact;

import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class ActivationServiceSelectContactNumberDialog_MembersInjector implements MembersInjector<ActivationServiceSelectContactNumberDialog> {
    private final Provider<EventBus> mEventBusProvider;

    public ActivationServiceSelectContactNumberDialog_MembersInjector(Provider<EventBus> provider) {
        this.mEventBusProvider = provider;
    }

    public static MembersInjector<ActivationServiceSelectContactNumberDialog> create(Provider<EventBus> provider) {
        return new ActivationServiceSelectContactNumberDialog_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationServiceSelectContactNumberDialog activationServiceSelectContactNumberDialog) {
        injectMEventBus(activationServiceSelectContactNumberDialog, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(ActivationServiceSelectContactNumberDialog activationServiceSelectContactNumberDialog, EventBus eventBus) {
        activationServiceSelectContactNumberDialog.mEventBus = eventBus;
    }
}
