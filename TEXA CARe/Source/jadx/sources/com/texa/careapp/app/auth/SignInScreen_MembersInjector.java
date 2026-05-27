package com.texa.careapp.app.auth;

import android.app.NotificationManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.FormValidator;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.care.accessory.Accessory;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class SignInScreen_MembersInjector implements MembersInjector<SignInScreen> {
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<FormValidator> mFormValidatorProvider;
    private final Provider<LoginHelperRx> mLogInHelperProvider;
    private final Provider<LoginHelperRx> mLoginHelperProvider;
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<NotificationManager> notificationManagerProvider;

    public SignInScreen_MembersInjector(Provider<RetrofitErrorParser> provider, Provider<LoginHelperRx> provider2, Provider<UserDataManager> provider3, Provider<FormValidator> provider4, Provider<LoginHelperRx> provider5, Provider<EventBus> provider6, Provider<Accessory> provider7, Provider<DongleDataManager> provider8, Provider<NotificationManager> provider9) {
        this.mRetrofitErrorParserProvider = provider;
        this.mLoginHelperProvider = provider2;
        this.mUserDataManagerProvider = provider3;
        this.mFormValidatorProvider = provider4;
        this.mLogInHelperProvider = provider5;
        this.mEventBusProvider = provider6;
        this.mAccessoryProvider = provider7;
        this.dongleDataManagerProvider = provider8;
        this.notificationManagerProvider = provider9;
    }

    public static MembersInjector<SignInScreen> create(Provider<RetrofitErrorParser> provider, Provider<LoginHelperRx> provider2, Provider<UserDataManager> provider3, Provider<FormValidator> provider4, Provider<LoginHelperRx> provider5, Provider<EventBus> provider6, Provider<Accessory> provider7, Provider<DongleDataManager> provider8, Provider<NotificationManager> provider9) {
        return new SignInScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SignInScreen signInScreen) {
        injectMRetrofitErrorParser(signInScreen, this.mRetrofitErrorParserProvider.get());
        injectMLoginHelper(signInScreen, this.mLoginHelperProvider.get());
        injectMUserDataManager(signInScreen, this.mUserDataManagerProvider.get());
        injectMFormValidator(signInScreen, this.mFormValidatorProvider.get());
        injectMLogInHelper(signInScreen, this.mLogInHelperProvider.get());
        injectMEventBus(signInScreen, this.mEventBusProvider.get());
        injectMAccessory(signInScreen, this.mAccessoryProvider.get());
        injectDongleDataManager(signInScreen, this.dongleDataManagerProvider.get());
        injectNotificationManager(signInScreen, this.notificationManagerProvider.get());
    }

    public static void injectMRetrofitErrorParser(SignInScreen signInScreen, RetrofitErrorParser retrofitErrorParser) {
        signInScreen.mRetrofitErrorParser = retrofitErrorParser;
    }

    public static void injectMLoginHelper(SignInScreen signInScreen, LoginHelperRx loginHelperRx) {
        signInScreen.mLoginHelper = loginHelperRx;
    }

    public static void injectMUserDataManager(SignInScreen signInScreen, UserDataManager userDataManager) {
        signInScreen.mUserDataManager = userDataManager;
    }

    public static void injectMFormValidator(SignInScreen signInScreen, FormValidator formValidator) {
        signInScreen.mFormValidator = formValidator;
    }

    public static void injectMLogInHelper(SignInScreen signInScreen, LoginHelperRx loginHelperRx) {
        signInScreen.mLogInHelper = loginHelperRx;
    }

    public static void injectMEventBus(SignInScreen signInScreen, EventBus eventBus) {
        signInScreen.mEventBus = eventBus;
    }

    public static void injectMAccessory(SignInScreen signInScreen, Accessory accessory) {
        signInScreen.mAccessory = accessory;
    }

    public static void injectDongleDataManager(SignInScreen signInScreen, DongleDataManager dongleDataManager) {
        signInScreen.dongleDataManager = dongleDataManager;
    }

    public static void injectNotificationManager(SignInScreen signInScreen, NotificationManager notificationManager) {
        signInScreen.notificationManager = notificationManager;
    }
}
