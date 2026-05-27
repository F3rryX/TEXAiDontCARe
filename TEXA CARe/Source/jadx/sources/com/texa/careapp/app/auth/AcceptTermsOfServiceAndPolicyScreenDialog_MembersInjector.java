package com.texa.careapp.app.auth;

import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class AcceptTermsOfServiceAndPolicyScreenDialog_MembersInjector implements MembersInjector<AcceptTermsOfServiceAndPolicyScreenDialog> {
    private final Provider<EventBus> mEventBusProvider;

    public AcceptTermsOfServiceAndPolicyScreenDialog_MembersInjector(Provider<EventBus> provider) {
        this.mEventBusProvider = provider;
    }

    public static MembersInjector<AcceptTermsOfServiceAndPolicyScreenDialog> create(Provider<EventBus> provider) {
        return new AcceptTermsOfServiceAndPolicyScreenDialog_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(AcceptTermsOfServiceAndPolicyScreenDialog acceptTermsOfServiceAndPolicyScreenDialog) {
        injectMEventBus(acceptTermsOfServiceAndPolicyScreenDialog, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(AcceptTermsOfServiceAndPolicyScreenDialog acceptTermsOfServiceAndPolicyScreenDialog, EventBus eventBus) {
        acceptTermsOfServiceAndPolicyScreenDialog.mEventBus = eventBus;
    }
}
