package com.texa.careapp.app.onboarding.dialogs;

import android.content.SharedPreferences;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.LoginHelperRx;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareConfigurationRequestDialog_MembersInjector implements MembersInjector<CareConfigurationRequestDialog> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LoginHelperRx> mLogInHelperProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;

    public CareConfigurationRequestDialog_MembersInjector(Provider<DongleDataManager> provider, Provider<LoginHelperRx> provider2, Provider<SharedPreferences> provider3) {
        this.mDongleDataManagerProvider = provider;
        this.mLogInHelperProvider = provider2;
        this.mSharedPreferencesProvider = provider3;
    }

    public static MembersInjector<CareConfigurationRequestDialog> create(Provider<DongleDataManager> provider, Provider<LoginHelperRx> provider2, Provider<SharedPreferences> provider3) {
        return new CareConfigurationRequestDialog_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CareConfigurationRequestDialog careConfigurationRequestDialog) {
        injectMDongleDataManager(careConfigurationRequestDialog, this.mDongleDataManagerProvider.get());
        injectMLogInHelper(careConfigurationRequestDialog, this.mLogInHelperProvider.get());
        injectMSharedPreferences(careConfigurationRequestDialog, this.mSharedPreferencesProvider.get());
    }

    public static void injectMDongleDataManager(CareConfigurationRequestDialog careConfigurationRequestDialog, DongleDataManager dongleDataManager) {
        careConfigurationRequestDialog.mDongleDataManager = dongleDataManager;
    }

    public static void injectMLogInHelper(CareConfigurationRequestDialog careConfigurationRequestDialog, LoginHelperRx loginHelperRx) {
        careConfigurationRequestDialog.mLogInHelper = loginHelperRx;
    }

    public static void injectMSharedPreferences(CareConfigurationRequestDialog careConfigurationRequestDialog, SharedPreferences sharedPreferences) {
        careConfigurationRequestDialog.mSharedPreferences = sharedPreferences;
    }
}
