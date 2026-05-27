package com.texa.careapp.app.settings;

import com.texa.careapp.utils.LoginHelperRx;
import com.texa.carelib.care.accessory.Accessory;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class FactoryResetScreenDialog_MembersInjector implements MembersInjector<FactoryResetScreenDialog> {
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;

    public FactoryResetScreenDialog_MembersInjector(Provider<Accessory> provider, Provider<LoginHelperRx> provider2, Provider<EventBus> provider3) {
        this.mAccessoryProvider = provider;
        this.mLoginHelperRxProvider = provider2;
        this.mEventBusProvider = provider3;
    }

    public static MembersInjector<FactoryResetScreenDialog> create(Provider<Accessory> provider, Provider<LoginHelperRx> provider2, Provider<EventBus> provider3) {
        return new FactoryResetScreenDialog_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(FactoryResetScreenDialog factoryResetScreenDialog) {
        injectMAccessory(factoryResetScreenDialog, this.mAccessoryProvider.get());
        injectMLoginHelperRx(factoryResetScreenDialog, this.mLoginHelperRxProvider.get());
        injectMEventBus(factoryResetScreenDialog, this.mEventBusProvider.get());
    }

    public static void injectMAccessory(FactoryResetScreenDialog factoryResetScreenDialog, Accessory accessory) {
        factoryResetScreenDialog.mAccessory = accessory;
    }

    public static void injectMLoginHelperRx(FactoryResetScreenDialog factoryResetScreenDialog, LoginHelperRx loginHelperRx) {
        factoryResetScreenDialog.mLoginHelperRx = loginHelperRx;
    }

    public static void injectMEventBus(FactoryResetScreenDialog factoryResetScreenDialog, EventBus eventBus) {
        factoryResetScreenDialog.mEventBus = eventBus;
    }
}
