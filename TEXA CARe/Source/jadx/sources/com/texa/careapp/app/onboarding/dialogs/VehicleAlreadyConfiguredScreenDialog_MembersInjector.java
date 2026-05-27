package com.texa.careapp.app.onboarding.dialogs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class VehicleAlreadyConfiguredScreenDialog_MembersInjector implements MembersInjector<VehicleAlreadyConfiguredScreenDialog> {
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;

    public VehicleAlreadyConfiguredScreenDialog_MembersInjector(Provider<TexaCareApiServiceUser> provider) {
        this.mTexaCareApiServiceUserProvider = provider;
    }

    public static MembersInjector<VehicleAlreadyConfiguredScreenDialog> create(Provider<TexaCareApiServiceUser> provider) {
        return new VehicleAlreadyConfiguredScreenDialog_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VehicleAlreadyConfiguredScreenDialog vehicleAlreadyConfiguredScreenDialog) {
        injectMTexaCareApiServiceUser(vehicleAlreadyConfiguredScreenDialog, this.mTexaCareApiServiceUserProvider.get());
    }

    public static void injectMTexaCareApiServiceUser(VehicleAlreadyConfiguredScreenDialog vehicleAlreadyConfiguredScreenDialog, TexaCareApiServiceUser texaCareApiServiceUser) {
        vehicleAlreadyConfiguredScreenDialog.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }
}
