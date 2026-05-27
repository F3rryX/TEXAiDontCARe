package com.texa.careapp.app.permission;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class PermissionAdapter_MembersInjector implements MembersInjector<PermissionAdapter> {
    private final Provider<Context> mContextProvider;

    public PermissionAdapter_MembersInjector(Provider<Context> provider) {
        this.mContextProvider = provider;
    }

    public static MembersInjector<PermissionAdapter> create(Provider<Context> provider) {
        return new PermissionAdapter_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(PermissionAdapter permissionAdapter) {
        injectMContext(permissionAdapter, this.mContextProvider.get());
    }

    public static void injectMContext(PermissionAdapter permissionAdapter, Context context) {
        permissionAdapter.mContext = context;
    }
}
