package com.texa.careapp.app.activationSosServices.phone;

import android.content.SharedPreferences;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class NumberValidatorScreen_MembersInjector implements MembersInjector<NumberValidatorScreen> {
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public NumberValidatorScreen_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<UserDataManager> provider2, Provider<SharedPreferences> provider3) {
        this.mTexaCareApiServiceProvider = provider;
        this.mUserDataManagerProvider = provider2;
        this.mSharedPreferencesProvider = provider3;
    }

    public static MembersInjector<NumberValidatorScreen> create(Provider<TexaCareApiServiceUser> provider, Provider<UserDataManager> provider2, Provider<SharedPreferences> provider3) {
        return new NumberValidatorScreen_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(NumberValidatorScreen numberValidatorScreen) {
        injectMTexaCareApiService(numberValidatorScreen, this.mTexaCareApiServiceProvider.get());
        injectMUserDataManager(numberValidatorScreen, this.mUserDataManagerProvider.get());
        injectMSharedPreferences(numberValidatorScreen, this.mSharedPreferencesProvider.get());
    }

    public static void injectMTexaCareApiService(NumberValidatorScreen numberValidatorScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        numberValidatorScreen.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMUserDataManager(NumberValidatorScreen numberValidatorScreen, UserDataManager userDataManager) {
        numberValidatorScreen.mUserDataManager = userDataManager;
    }

    public static void injectMSharedPreferences(NumberValidatorScreen numberValidatorScreen, SharedPreferences sharedPreferences) {
        numberValidatorScreen.mSharedPreferences = sharedPreferences;
    }
}
