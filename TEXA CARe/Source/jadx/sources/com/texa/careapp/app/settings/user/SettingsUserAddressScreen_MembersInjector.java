package com.texa.careapp.app.settings.user;

import android.content.Context;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingsUserAddressScreen_MembersInjector implements MembersInjector<SettingsUserAddressScreen> {
    private final Provider<Context> mContextProvider;
    private final Provider<FlavorDelegator> mFlavorDelegatorProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public SettingsUserAddressScreen_MembersInjector(Provider<Context> provider, Provider<UserDataManager> provider2, Provider<FlavorDelegator> provider3) {
        this.mContextProvider = provider;
        this.mUserDataManagerProvider = provider2;
        this.mFlavorDelegatorProvider = provider3;
    }

    public static MembersInjector<SettingsUserAddressScreen> create(Provider<Context> provider, Provider<UserDataManager> provider2, Provider<FlavorDelegator> provider3) {
        return new SettingsUserAddressScreen_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SettingsUserAddressScreen settingsUserAddressScreen) {
        injectMContext(settingsUserAddressScreen, this.mContextProvider.get());
        injectMUserDataManager(settingsUserAddressScreen, this.mUserDataManagerProvider.get());
        injectMFlavorDelegator(settingsUserAddressScreen, this.mFlavorDelegatorProvider.get());
    }

    public static void injectMContext(SettingsUserAddressScreen settingsUserAddressScreen, Context context) {
        settingsUserAddressScreen.mContext = context;
    }

    public static void injectMUserDataManager(SettingsUserAddressScreen settingsUserAddressScreen, UserDataManager userDataManager) {
        settingsUserAddressScreen.mUserDataManager = userDataManager;
    }

    public static void injectMFlavorDelegator(SettingsUserAddressScreen settingsUserAddressScreen, FlavorDelegator flavorDelegator) {
        settingsUserAddressScreen.mFlavorDelegator = flavorDelegator;
    }
}
