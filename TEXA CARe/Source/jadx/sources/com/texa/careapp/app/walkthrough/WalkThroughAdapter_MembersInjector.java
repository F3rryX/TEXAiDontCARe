package com.texa.careapp.app.walkthrough;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class WalkThroughAdapter_MembersInjector implements MembersInjector<WalkThroughAdapter> {
    private final Provider<Context> mContextProvider;

    public WalkThroughAdapter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<WalkThroughAdapter> create(Provider<Context> provider) {
        return new WalkThroughAdapter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(WalkThroughAdapter walkThroughAdapter) {
        injectMContext(walkThroughAdapter, this.mContextProvider.get());
    }

    public static void injectMContext(WalkThroughAdapter walkThroughAdapter, Context context) {
        walkThroughAdapter.mContext = context;
    }
}
