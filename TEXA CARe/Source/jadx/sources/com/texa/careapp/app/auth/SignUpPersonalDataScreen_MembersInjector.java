package com.texa.careapp.app.auth;

import android.content.SharedPreferences;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SignUpPersonalDataScreen_MembersInjector implements MembersInjector<SignUpPersonalDataScreen> {
    private final Provider<FormValidator> mFormValidatorProvider;
    private final Provider<LoginHelperRx> mLoginHelperProvider;
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public SignUpPersonalDataScreen_MembersInjector(Provider<SharedPreferences> provider, Provider<FormValidator> provider2, Provider<UserDataManager> provider3, Provider<RetrofitErrorParser> provider4, Provider<LoginHelperRx> provider5) {
        this.mSharedPreferencesProvider = provider;
        this.mFormValidatorProvider = provider2;
        this.mUserDataManagerProvider = provider3;
        this.mRetrofitErrorParserProvider = provider4;
        this.mLoginHelperProvider = provider5;
    }

    public static MembersInjector<SignUpPersonalDataScreen> create(Provider<SharedPreferences> provider, Provider<FormValidator> provider2, Provider<UserDataManager> provider3, Provider<RetrofitErrorParser> provider4, Provider<LoginHelperRx> provider5) {
        return new SignUpPersonalDataScreen_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SignUpPersonalDataScreen signUpPersonalDataScreen) {
        injectMSharedPreferences(signUpPersonalDataScreen, this.mSharedPreferencesProvider.get());
        injectMFormValidator(signUpPersonalDataScreen, this.mFormValidatorProvider.get());
        injectMUserDataManager(signUpPersonalDataScreen, this.mUserDataManagerProvider.get());
        injectMRetrofitErrorParser(signUpPersonalDataScreen, this.mRetrofitErrorParserProvider.get());
        injectMLoginHelper(signUpPersonalDataScreen, this.mLoginHelperProvider.get());
    }

    public static void injectMSharedPreferences(SignUpPersonalDataScreen signUpPersonalDataScreen, SharedPreferences sharedPreferences) {
        signUpPersonalDataScreen.mSharedPreferences = sharedPreferences;
    }

    public static void injectMFormValidator(SignUpPersonalDataScreen signUpPersonalDataScreen, FormValidator formValidator) {
        signUpPersonalDataScreen.mFormValidator = formValidator;
    }

    public static void injectMUserDataManager(SignUpPersonalDataScreen signUpPersonalDataScreen, UserDataManager userDataManager) {
        signUpPersonalDataScreen.mUserDataManager = userDataManager;
    }

    public static void injectMRetrofitErrorParser(SignUpPersonalDataScreen signUpPersonalDataScreen, RetrofitErrorParser retrofitErrorParser) {
        signUpPersonalDataScreen.mRetrofitErrorParser = retrofitErrorParser;
    }

    public static void injectMLoginHelper(SignUpPersonalDataScreen signUpPersonalDataScreen, LoginHelperRx loginHelperRx) {
        signUpPersonalDataScreen.mLoginHelper = loginHelperRx;
    }
}
