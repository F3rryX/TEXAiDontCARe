package com.texa.careapp.app.dashboard.vehicle;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class VehiclePagerAdapter_MembersInjector implements MembersInjector<VehiclePagerAdapter> {
    private final Provider<Context> mContextProvider;

    public VehiclePagerAdapter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<VehiclePagerAdapter> create(Provider<Context> provider) {
        return new VehiclePagerAdapter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VehiclePagerAdapter vehiclePagerAdapter) {
        injectMContext(vehiclePagerAdapter, this.mContextProvider.get());
    }

    public static void injectMContext(VehiclePagerAdapter vehiclePagerAdapter, Context context) {
        vehiclePagerAdapter.mContext = context;
    }
}
