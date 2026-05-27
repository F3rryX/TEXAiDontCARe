package com.texa.careapp.app.dashboard.vehicle;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class VehiclePresenter_MembersInjector implements MembersInjector<VehiclePresenter> {
    private final Provider<Context> mContextProvider;

    public VehiclePresenter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<VehiclePresenter> create(Provider<Context> provider) {
        return new VehiclePresenter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VehiclePresenter vehiclePresenter) {
        injectMContext(vehiclePresenter, this.mContextProvider.get());
    }

    public static void injectMContext(VehiclePresenter vehiclePresenter, Context context) {
        vehiclePresenter.mContext = context;
    }
}
