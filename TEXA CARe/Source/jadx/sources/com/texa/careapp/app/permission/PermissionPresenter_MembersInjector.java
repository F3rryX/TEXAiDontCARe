package com.texa.careapp.app.permission;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class PermissionPresenter_MembersInjector implements MembersInjector<PermissionPresenter> {
    private final Provider<Context> mContextProvider;

    public PermissionPresenter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<PermissionPresenter> create(Provider<Context> provider) {
        return new PermissionPresenter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(PermissionPresenter permissionPresenter) {
        injectMContext(permissionPresenter, this.mContextProvider.get());
    }

    public static void injectMContext(PermissionPresenter permissionPresenter, Context context) {
        permissionPresenter.mContext = context;
    }
}
