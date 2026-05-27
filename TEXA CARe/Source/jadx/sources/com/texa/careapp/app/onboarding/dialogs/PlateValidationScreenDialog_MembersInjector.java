package com.texa.careapp.app.onboarding.dialogs;

import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class PlateValidationScreenDialog_MembersInjector implements MembersInjector<PlateValidationScreenDialog> {
    private final Provider<EventBus> mEventBusProvider;

    public PlateValidationScreenDialog_MembersInjector(Provider<EventBus> provider) {
        this.mEventBusProvider = provider;
    }

    public static MembersInjector<PlateValidationScreenDialog> create(Provider<EventBus> provider) {
        return new PlateValidationScreenDialog_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(PlateValidationScreenDialog plateValidationScreenDialog) {
        injectMEventBus(plateValidationScreenDialog, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(PlateValidationScreenDialog plateValidationScreenDialog, EventBus eventBus) {
        plateValidationScreenDialog.mEventBus = eventBus;
    }
}
