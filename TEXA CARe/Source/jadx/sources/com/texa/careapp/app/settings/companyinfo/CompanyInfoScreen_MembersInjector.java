package com.texa.careapp.app.settings.companyinfo;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CompanyInfoScreen_MembersInjector implements MembersInjector<CompanyInfoScreen> {
    private final Provider<Context> mContextProvider;

    public CompanyInfoScreen_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<CompanyInfoScreen> create(Provider<Context> provider) {
        return new CompanyInfoScreen_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CompanyInfoScreen companyInfoScreen) {
        injectMContext(companyInfoScreen, this.mContextProvider.get());
    }

    public static void injectMContext(CompanyInfoScreen companyInfoScreen, Context context) {
        companyInfoScreen.mContext = context;
    }
}
