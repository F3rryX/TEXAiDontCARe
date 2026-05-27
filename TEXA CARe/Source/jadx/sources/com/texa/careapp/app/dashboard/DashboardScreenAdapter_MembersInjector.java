package com.texa.careapp.app.dashboard;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class DashboardScreenAdapter_MembersInjector implements MembersInjector<DashboardScreenAdapter> {
    private final Provider<Context> mContextProvider;

    public DashboardScreenAdapter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<DashboardScreenAdapter> create(Provider<Context> provider) {
        return new DashboardScreenAdapter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(DashboardScreenAdapter dashboardScreenAdapter) {
        injectMContext(dashboardScreenAdapter, this.mContextProvider.get());
    }

    public static void injectMContext(DashboardScreenAdapter dashboardScreenAdapter, Context context) {
        dashboardScreenAdapter.mContext = context;
    }
}
