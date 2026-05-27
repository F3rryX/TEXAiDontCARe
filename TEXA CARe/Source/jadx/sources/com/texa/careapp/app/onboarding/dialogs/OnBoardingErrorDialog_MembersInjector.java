package com.texa.careapp.app.onboarding.dialogs;

import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class OnBoardingErrorDialog_MembersInjector implements MembersInjector<OnBoardingErrorDialog> {
    private final Provider<EventBus> mEventBusProvider;

    public OnBoardingErrorDialog_MembersInjector(Provider<EventBus> provider) {
        this.mEventBusProvider = provider;
    }

    public static MembersInjector<OnBoardingErrorDialog> create(Provider<EventBus> provider) {
        return new OnBoardingErrorDialog_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(OnBoardingErrorDialog onBoardingErrorDialog) {
        injectMEventBus(onBoardingErrorDialog, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(OnBoardingErrorDialog onBoardingErrorDialog, EventBus eventBus) {
        onBoardingErrorDialog.mEventBus = eventBus;
    }
}
