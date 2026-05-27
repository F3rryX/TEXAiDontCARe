package com.texa.careapp.app.onboarding.dialogs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class VehicleScreenDialog_MembersInjector implements MembersInjector<VehicleScreenDialog> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;

    public VehicleScreenDialog_MembersInjector(Provider<EventBus> provider, Provider<TexaCareApiServiceUser> provider2) {
        this.mEventBusProvider = provider;
        this.mTexaCareApiServiceUserProvider = provider2;
    }

    public static MembersInjector<VehicleScreenDialog> create(Provider<EventBus> provider, Provider<TexaCareApiServiceUser> provider2) {
        return new VehicleScreenDialog_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VehicleScreenDialog vehicleScreenDialog) {
        injectMEventBus(vehicleScreenDialog, this.mEventBusProvider.get());
        injectMTexaCareApiServiceUser(vehicleScreenDialog, this.mTexaCareApiServiceUserProvider.get());
    }

    public static void injectMEventBus(VehicleScreenDialog vehicleScreenDialog, EventBus eventBus) {
        vehicleScreenDialog.mEventBus = eventBus;
    }

    public static void injectMTexaCareApiServiceUser(VehicleScreenDialog vehicleScreenDialog, TexaCareApiServiceUser texaCareApiServiceUser) {
        vehicleScreenDialog.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }
}
