package com.texa.careapp.base;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class BaseFragment_MembersInjector implements MembersInjector<BaseFragment> {
    private final Provider<Context> mContextProvider;

    public BaseFragment_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<BaseFragment> create(Provider<Context> provider) {
        return new BaseFragment_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(BaseFragment baseFragment) {
        injectMContext(baseFragment, this.mContextProvider.get());
    }

    public static void injectMContext(BaseFragment baseFragment, Context context) {
        baseFragment.mContext = context;
    }
}
