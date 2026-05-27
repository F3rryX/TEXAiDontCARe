package com.texa.careapp.app.ecodriving.hint;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EcoDrivingHintAdapter_MembersInjector implements MembersInjector<EcoDrivingHintAdapter> {
    private final Provider<Context> mContextProvider;

    public EcoDrivingHintAdapter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<EcoDrivingHintAdapter> create(Provider<Context> provider) {
        return new EcoDrivingHintAdapter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EcoDrivingHintAdapter ecoDrivingHintAdapter) {
        injectMContext(ecoDrivingHintAdapter, this.mContextProvider.get());
    }

    public static void injectMContext(EcoDrivingHintAdapter ecoDrivingHintAdapter, Context context) {
        ecoDrivingHintAdapter.mContext = context;
    }
}
