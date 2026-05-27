package com.texa.careapp.app.diagnosis;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class DiagnosisDataPagerAdapter_MembersInjector implements MembersInjector<DiagnosisDataPagerAdapter> {
    private final Provider<Context> mContextProvider;

    public DiagnosisDataPagerAdapter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<DiagnosisDataPagerAdapter> create(Provider<Context> provider) {
        return new DiagnosisDataPagerAdapter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(DiagnosisDataPagerAdapter diagnosisDataPagerAdapter) {
        injectMContext(diagnosisDataPagerAdapter, this.mContextProvider.get());
    }

    public static void injectMContext(DiagnosisDataPagerAdapter diagnosisDataPagerAdapter, Context context) {
        diagnosisDataPagerAdapter.mContext = context;
    }
}
