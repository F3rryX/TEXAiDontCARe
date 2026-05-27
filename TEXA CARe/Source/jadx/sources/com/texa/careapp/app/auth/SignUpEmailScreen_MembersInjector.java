package com.texa.careapp.app.auth;

import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.profile.Profile;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class SignUpEmailScreen_MembersInjector implements MembersInjector<SignUpEmailScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<FormValidator> mFormValidatorProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public SignUpEmailScreen_MembersInjector(Provider<FormValidator> provider, Provider<UserDataManager> provider2, Provider<Profile> provider3, Provider<RetrofitErrorParser> provider4, Provider<EventBus> provider5) {
        this.mFormValidatorProvider = provider;
        this.mUserDataManagerProvider = provider2;
        this.mProfileProvider = provider3;
        this.mRetrofitErrorParserProvider = provider4;
        this.mEventBusProvider = provider5;
    }

    public static MembersInjector<SignUpEmailScreen> create(Provider<FormValidator> provider, Provider<UserDataManager> provider2, Provider<Profile> provider3, Provider<RetrofitErrorParser> provider4, Provider<EventBus> provider5) {
        return new SignUpEmailScreen_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SignUpEmailScreen signUpEmailScreen) {
        injectMFormValidator(signUpEmailScreen, this.mFormValidatorProvider.get());
        injectMUserDataManager(signUpEmailScreen, this.mUserDataManagerProvider.get());
        injectMProfile(signUpEmailScreen, this.mProfileProvider.get());
        injectMRetrofitErrorParser(signUpEmailScreen, this.mRetrofitErrorParserProvider.get());
        injectMEventBus(signUpEmailScreen, this.mEventBusProvider.get());
    }

    public static void injectMFormValidator(SignUpEmailScreen signUpEmailScreen, FormValidator formValidator) {
        signUpEmailScreen.mFormValidator = formValidator;
    }

    public static void injectMUserDataManager(SignUpEmailScreen signUpEmailScreen, UserDataManager userDataManager) {
        signUpEmailScreen.mUserDataManager = userDataManager;
    }

    public static void injectMProfile(SignUpEmailScreen signUpEmailScreen, Profile profile) {
        signUpEmailScreen.mProfile = profile;
    }

    public static void injectMRetrofitErrorParser(SignUpEmailScreen signUpEmailScreen, RetrofitErrorParser retrofitErrorParser) {
        signUpEmailScreen.mRetrofitErrorParser = retrofitErrorParser;
    }

    public static void injectMEventBus(SignUpEmailScreen signUpEmailScreen, EventBus eventBus) {
        signUpEmailScreen.mEventBus = eventBus;
    }
}
