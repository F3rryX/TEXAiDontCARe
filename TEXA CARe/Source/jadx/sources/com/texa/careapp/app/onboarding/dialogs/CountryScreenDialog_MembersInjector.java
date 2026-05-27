package com.texa.careapp.app.onboarding.dialogs;

import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class CountryScreenDialog_MembersInjector implements MembersInjector<CountryScreenDialog> {
    private final Provider<EventBus> mEventBusProvider;

    public CountryScreenDialog_MembersInjector(Provider<EventBus> provider) {
        this.mEventBusProvider = provider;
    }

    public static MembersInjector<CountryScreenDialog> create(Provider<EventBus> provider) {
        return new CountryScreenDialog_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CountryScreenDialog countryScreenDialog) {
        injectMEventBus(countryScreenDialog, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(CountryScreenDialog countryScreenDialog, EventBus eventBus) {
        countryScreenDialog.mEventBus = eventBus;
    }
}
