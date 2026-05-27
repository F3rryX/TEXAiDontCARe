package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class ActivationLightForeignServiceScreen_MembersInjector implements MembersInjector<ActivationLightForeignServiceScreen> {
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;

    public ActivationLightForeignServiceScreen_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<SharedPreferences> provider2) {
        this.mTexaCareApiServiceProvider = provider;
        this.mSharedPreferencesProvider = provider2;
    }

    public static MembersInjector<ActivationLightForeignServiceScreen> create(Provider<TexaCareApiServiceUser> provider, Provider<SharedPreferences> provider2) {
        return new ActivationLightForeignServiceScreen_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationLightForeignServiceScreen activationLightForeignServiceScreen) {
        injectMTexaCareApiService(activationLightForeignServiceScreen, this.mTexaCareApiServiceProvider.get());
        injectMSharedPreferences(activationLightForeignServiceScreen, this.mSharedPreferencesProvider.get());
    }

    public static void injectMTexaCareApiService(ActivationLightForeignServiceScreen activationLightForeignServiceScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        activationLightForeignServiceScreen.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMSharedPreferences(ActivationLightForeignServiceScreen activationLightForeignServiceScreen, SharedPreferences sharedPreferences) {
        activationLightForeignServiceScreen.mSharedPreferences = sharedPreferences;
    }
}
