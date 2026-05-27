package com.texa.careapp.app.ecodriving.tutorial;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EcoDrivingTutorialAdapter_MembersInjector implements MembersInjector<EcoDrivingTutorialAdapter> {
    private final Provider<Context> mContextProvider;

    public EcoDrivingTutorialAdapter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<EcoDrivingTutorialAdapter> create(Provider<Context> provider) {
        return new EcoDrivingTutorialAdapter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EcoDrivingTutorialAdapter ecoDrivingTutorialAdapter) {
        injectMContext(ecoDrivingTutorialAdapter, this.mContextProvider.get());
    }

    public static void injectMContext(EcoDrivingTutorialAdapter ecoDrivingTutorialAdapter, Context context) {
        ecoDrivingTutorialAdapter.mContext = context;
    }
}
