package com.texa.careapp.app.settings.user;

import android.content.Context;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingsUserScreen_MembersInjector implements MembersInjector<SettingsUserScreen> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<FlavorDelegator> mFlavorDelegatorProvider;
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public SettingsUserScreen_MembersInjector(Provider<FlavorDelegator> provider, Provider<Context> provider2, Provider<CAReWorkerManager> provider3, Provider<LoginHelperRx> provider4, Provider<UserDataManager> provider5) {
        this.mFlavorDelegatorProvider = provider;
        this.mContextProvider = provider2;
        this.mCAReWorkerManagerProvider = provider3;
        this.mLoginHelperRxProvider = provider4;
        this.mUserDataManagerProvider = provider5;
    }

    public static MembersInjector<SettingsUserScreen> create(Provider<FlavorDelegator> provider, Provider<Context> provider2, Provider<CAReWorkerManager> provider3, Provider<LoginHelperRx> provider4, Provider<UserDataManager> provider5) {
        return new SettingsUserScreen_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SettingsUserScreen settingsUserScreen) {
        injectMFlavorDelegator(settingsUserScreen, this.mFlavorDelegatorProvider.get());
        injectMContext(settingsUserScreen, this.mContextProvider.get());
        injectMCAReWorkerManager(settingsUserScreen, this.mCAReWorkerManagerProvider.get());
        injectMLoginHelperRx(settingsUserScreen, this.mLoginHelperRxProvider.get());
        injectMUserDataManager(settingsUserScreen, this.mUserDataManagerProvider.get());
    }

    public static void injectMFlavorDelegator(SettingsUserScreen settingsUserScreen, FlavorDelegator flavorDelegator) {
        settingsUserScreen.mFlavorDelegator = flavorDelegator;
    }

    public static void injectMContext(SettingsUserScreen settingsUserScreen, Context context) {
        settingsUserScreen.mContext = context;
    }

    public static void injectMCAReWorkerManager(SettingsUserScreen settingsUserScreen, CAReWorkerManager cAReWorkerManager) {
        settingsUserScreen.mCAReWorkerManager = cAReWorkerManager;
    }

    public static void injectMLoginHelperRx(SettingsUserScreen settingsUserScreen, LoginHelperRx loginHelperRx) {
        settingsUserScreen.mLoginHelperRx = loginHelperRx;
    }

    public static void injectMUserDataManager(SettingsUserScreen settingsUserScreen, UserDataManager userDataManager) {
        settingsUserScreen.mUserDataManager = userDataManager;
    }
}
