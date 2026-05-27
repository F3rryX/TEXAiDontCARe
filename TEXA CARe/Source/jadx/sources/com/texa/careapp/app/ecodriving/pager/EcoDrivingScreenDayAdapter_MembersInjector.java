package com.texa.careapp.app.ecodriving.pager;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EcoDrivingScreenDayAdapter_MembersInjector implements MembersInjector<EcoDrivingScreenDayAdapter> {
    private final Provider<Context> mContextProvider;

    public EcoDrivingScreenDayAdapter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<EcoDrivingScreenDayAdapter> create(Provider<Context> provider) {
        return new EcoDrivingScreenDayAdapter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EcoDrivingScreenDayAdapter ecoDrivingScreenDayAdapter) {
        injectMContext(ecoDrivingScreenDayAdapter, this.mContextProvider.get());
    }

    public static void injectMContext(EcoDrivingScreenDayAdapter ecoDrivingScreenDayAdapter, Context context) {
        ecoDrivingScreenDayAdapter.mContext = context;
    }
}
