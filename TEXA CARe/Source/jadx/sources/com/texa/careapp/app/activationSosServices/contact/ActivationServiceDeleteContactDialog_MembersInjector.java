package com.texa.careapp.app.activationSosServices.contact;

import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class ActivationServiceDeleteContactDialog_MembersInjector implements MembersInjector<ActivationServiceDeleteContactDialog> {
    private final Provider<EventBus> mEventBusProvider;

    public ActivationServiceDeleteContactDialog_MembersInjector(Provider<EventBus> provider) {
        this.mEventBusProvider = provider;
    }

    public static MembersInjector<ActivationServiceDeleteContactDialog> create(Provider<EventBus> provider) {
        return new ActivationServiceDeleteContactDialog_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationServiceDeleteContactDialog activationServiceDeleteContactDialog) {
        injectMEventBus(activationServiceDeleteContactDialog, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(ActivationServiceDeleteContactDialog activationServiceDeleteContactDialog, EventBus eventBus) {
        activationServiceDeleteContactDialog.mEventBus = eventBus;
    }
}
