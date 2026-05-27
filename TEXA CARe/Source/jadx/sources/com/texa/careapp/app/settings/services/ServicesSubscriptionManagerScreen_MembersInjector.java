package com.texa.careapp.app.settings.services;

import android.content.Context;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ServicesSubscriptionManagerScreen_MembersInjector implements MembersInjector<ServicesSubscriptionManagerScreen> {
    private final Provider<Context> mContextProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public ServicesSubscriptionManagerScreen_MembersInjector(Provider<Context> provider, Provider<UserDataManager> provider2) {
        this.mContextProvider = provider;
        this.mUserDataManagerProvider = provider2;
    }

    public static MembersInjector<ServicesSubscriptionManagerScreen> create(Provider<Context> provider, Provider<UserDataManager> provider2) {
        return new ServicesSubscriptionManagerScreen_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ServicesSubscriptionManagerScreen servicesSubscriptionManagerScreen) {
        injectMContext(servicesSubscriptionManagerScreen, this.mContextProvider.get());
        injectMUserDataManager(servicesSubscriptionManagerScreen, this.mUserDataManagerProvider.get());
    }

    public static void injectMContext(ServicesSubscriptionManagerScreen servicesSubscriptionManagerScreen, Context context) {
        servicesSubscriptionManagerScreen.mContext = context;
    }

    public static void injectMUserDataManager(ServicesSubscriptionManagerScreen servicesSubscriptionManagerScreen, UserDataManager userDataManager) {
        servicesSubscriptionManagerScreen.mUserDataManager = userDataManager;
    }
}
