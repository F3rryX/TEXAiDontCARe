package com.texa.careapp.app.settings.services;

import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingsServicesScreen_MembersInjector implements MembersInjector<SettingsServicesScreen> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<SosFeatureManager> mSosFeatureManagerProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public SettingsServicesScreen_MembersInjector(Provider<UserDataManager> provider, Provider<TexaCareApiServiceUser> provider2, Provider<ServiceDataManager> provider3, Provider<SosFeatureManager> provider4, Provider<DongleDataManager> provider5) {
        this.mUserDataManagerProvider = provider;
        this.mTexaCareApiServiceUserProvider = provider2;
        this.mServiceDataManagerProvider = provider3;
        this.mSosFeatureManagerProvider = provider4;
        this.mDongleDataManagerProvider = provider5;
    }

    public static MembersInjector<SettingsServicesScreen> create(Provider<UserDataManager> provider, Provider<TexaCareApiServiceUser> provider2, Provider<ServiceDataManager> provider3, Provider<SosFeatureManager> provider4, Provider<DongleDataManager> provider5) {
        return new SettingsServicesScreen_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SettingsServicesScreen settingsServicesScreen) {
        injectMUserDataManager(settingsServicesScreen, this.mUserDataManagerProvider.get());
        injectMTexaCareApiServiceUser(settingsServicesScreen, this.mTexaCareApiServiceUserProvider.get());
        injectMServiceDataManager(settingsServicesScreen, this.mServiceDataManagerProvider.get());
        injectMSosFeatureManager(settingsServicesScreen, this.mSosFeatureManagerProvider.get());
        injectMDongleDataManager(settingsServicesScreen, this.mDongleDataManagerProvider.get());
    }

    public static void injectMUserDataManager(SettingsServicesScreen settingsServicesScreen, UserDataManager userDataManager) {
        settingsServicesScreen.mUserDataManager = userDataManager;
    }

    public static void injectMTexaCareApiServiceUser(SettingsServicesScreen settingsServicesScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        settingsServicesScreen.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMServiceDataManager(SettingsServicesScreen settingsServicesScreen, ServiceDataManager serviceDataManager) {
        settingsServicesScreen.mServiceDataManager = serviceDataManager;
    }

    public static void injectMSosFeatureManager(SettingsServicesScreen settingsServicesScreen, SosFeatureManager sosFeatureManager) {
        settingsServicesScreen.mSosFeatureManager = sosFeatureManager;
    }

    public static void injectMDongleDataManager(SettingsServicesScreen settingsServicesScreen, DongleDataManager dongleDataManager) {
        settingsServicesScreen.mDongleDataManager = dongleDataManager;
    }
}
