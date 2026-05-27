package com.texa.careapp.app.ecodriving.hint;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class HintPresenter_MembersInjector implements MembersInjector<HintPresenter> {
    private final Provider<Context> mContextProvider;

    public HintPresenter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<HintPresenter> create(Provider<Context> provider) {
        return new HintPresenter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(HintPresenter hintPresenter) {
        injectMContext(hintPresenter, this.mContextProvider.get());
    }

    public static void injectMContext(HintPresenter hintPresenter, Context context) {
        hintPresenter.mContext = context;
    }
}
