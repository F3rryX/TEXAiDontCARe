package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ActivationLightServiceScreen_MembersInjector implements MembersInjector<ActivationLightServiceScreen> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;

    public ActivationLightServiceScreen_MembersInjector(Provider<DongleDataManager> provider, Provider<TexaCareApiServiceUser> provider2, Provider<SharedPreferences> provider3) {
        this.mDongleDataManagerProvider = provider;
        this.mTexaCareApiServiceProvider = provider2;
        this.mSharedPreferencesProvider = provider3;
    }

    public static MembersInjector<ActivationLightServiceScreen> create(Provider<DongleDataManager> provider, Provider<TexaCareApiServiceUser> provider2, Provider<SharedPreferences> provider3) {
        return new ActivationLightServiceScreen_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationLightServiceScreen activationLightServiceScreen) {
        injectMDongleDataManager(activationLightServiceScreen, this.mDongleDataManagerProvider.get());
        injectMTexaCareApiService(activationLightServiceScreen, this.mTexaCareApiServiceProvider.get());
        injectMSharedPreferences(activationLightServiceScreen, this.mSharedPreferencesProvider.get());
    }

    public static void injectMDongleDataManager(ActivationLightServiceScreen activationLightServiceScreen, DongleDataManager dongleDataManager) {
        activationLightServiceScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMTexaCareApiService(ActivationLightServiceScreen activationLightServiceScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        activationLightServiceScreen.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMSharedPreferences(ActivationLightServiceScreen activationLightServiceScreen, SharedPreferences sharedPreferences) {
        activationLightServiceScreen.mSharedPreferences = sharedPreferences;
    }
}
