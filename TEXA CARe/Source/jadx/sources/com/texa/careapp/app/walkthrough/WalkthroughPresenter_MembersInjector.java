package com.texa.careapp.app.walkthrough;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class WalkthroughPresenter_MembersInjector implements MembersInjector<WalkthroughPresenter> {
    private final Provider<Context> mContextProvider;

    public WalkthroughPresenter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<WalkthroughPresenter> create(Provider<Context> provider) {
        return new WalkthroughPresenter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(WalkthroughPresenter walkthroughPresenter) {
        injectMContext(walkthroughPresenter, this.mContextProvider.get());
    }

    public static void injectMContext(WalkthroughPresenter walkthroughPresenter, Context context) {
        walkthroughPresenter.mContext = context;
    }
}
