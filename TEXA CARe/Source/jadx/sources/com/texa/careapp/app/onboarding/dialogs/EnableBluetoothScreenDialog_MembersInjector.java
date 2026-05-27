package com.texa.careapp.app.onboarding.dialogs;

import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class EnableBluetoothScreenDialog_MembersInjector implements MembersInjector<EnableBluetoothScreenDialog> {
    private final Provider<EventBus> mEventBusProvider;

    public EnableBluetoothScreenDialog_MembersInjector(Provider<EventBus> provider) {
        this.mEventBusProvider = provider;
    }

    public static MembersInjector<EnableBluetoothScreenDialog> create(Provider<EventBus> provider) {
        return new EnableBluetoothScreenDialog_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EnableBluetoothScreenDialog enableBluetoothScreenDialog) {
        injectMEventBus(enableBluetoothScreenDialog, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(EnableBluetoothScreenDialog enableBluetoothScreenDialog, EventBus eventBus) {
        enableBluetoothScreenDialog.mEventBus = eventBus;
    }
}
