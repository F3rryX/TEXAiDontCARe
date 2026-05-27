package com.texa.careapp.app.auth;

import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.profile.Profile;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SignUpPasswordScreen_MembersInjector implements MembersInjector<SignUpPasswordScreen> {
    private final Provider<FormValidator> mFormValidatorProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public SignUpPasswordScreen_MembersInjector(Provider<FormValidator> provider, Provider<UserDataManager> provider2, Provider<Profile> provider3, Provider<RetrofitErrorParser> provider4) {
        this.mFormValidatorProvider = provider;
        this.mUserDataManagerProvider = provider2;
        this.mProfileProvider = provider3;
        this.mRetrofitErrorParserProvider = provider4;
    }

    public static MembersInjector<SignUpPasswordScreen> create(Provider<FormValidator> provider, Provider<UserDataManager> provider2, Provider<Profile> provider3, Provider<RetrofitErrorParser> provider4) {
        return new SignUpPasswordScreen_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SignUpPasswordScreen signUpPasswordScreen) {
        injectMFormValidator(signUpPasswordScreen, this.mFormValidatorProvider.get());
        injectMUserDataManager(signUpPasswordScreen, this.mUserDataManagerProvider.get());
        injectMProfile(signUpPasswordScreen, this.mProfileProvider.get());
        injectMRetrofitErrorParser(signUpPasswordScreen, this.mRetrofitErrorParserProvider.get());
    }

    public static void injectMFormValidator(SignUpPasswordScreen signUpPasswordScreen, FormValidator formValidator) {
        signUpPasswordScreen.mFormValidator = formValidator;
    }

    public static void injectMUserDataManager(SignUpPasswordScreen signUpPasswordScreen, UserDataManager userDataManager) {
        signUpPasswordScreen.mUserDataManager = userDataManager;
    }

    public static void injectMProfile(SignUpPasswordScreen signUpPasswordScreen, Profile profile) {
        signUpPasswordScreen.mProfile = profile;
    }

    public static void injectMRetrofitErrorParser(SignUpPasswordScreen signUpPasswordScreen, RetrofitErrorParser retrofitErrorParser) {
        signUpPasswordScreen.mRetrofitErrorParser = retrofitErrorParser;
    }
}
