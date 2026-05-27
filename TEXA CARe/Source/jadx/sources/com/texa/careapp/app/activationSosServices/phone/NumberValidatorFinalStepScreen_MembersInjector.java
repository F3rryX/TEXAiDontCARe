package com.texa.careapp.app.activationSosServices.phone;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class NumberValidatorFinalStepScreen_MembersInjector implements MembersInjector<NumberValidatorFinalStepScreen> {
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public NumberValidatorFinalStepScreen_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<UserDataManager> provider2, Provider<RetrofitErrorParser> provider3) {
        this.mTexaCareApiServiceProvider = provider;
        this.mUserDataManagerProvider = provider2;
        this.mRetrofitErrorParserProvider = provider3;
    }

    public static MembersInjector<NumberValidatorFinalStepScreen> create(Provider<TexaCareApiServiceUser> provider, Provider<UserDataManager> provider2, Provider<RetrofitErrorParser> provider3) {
        return new NumberValidatorFinalStepScreen_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(NumberValidatorFinalStepScreen numberValidatorFinalStepScreen) {
        injectMTexaCareApiService(numberValidatorFinalStepScreen, this.mTexaCareApiServiceProvider.get());
        injectMUserDataManager(numberValidatorFinalStepScreen, this.mUserDataManagerProvider.get());
        injectMRetrofitErrorParser(numberValidatorFinalStepScreen, this.mRetrofitErrorParserProvider.get());
    }

    public static void injectMTexaCareApiService(NumberValidatorFinalStepScreen numberValidatorFinalStepScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        numberValidatorFinalStepScreen.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMUserDataManager(NumberValidatorFinalStepScreen numberValidatorFinalStepScreen, UserDataManager userDataManager) {
        numberValidatorFinalStepScreen.mUserDataManager = userDataManager;
    }

    public static void injectMRetrofitErrorParser(NumberValidatorFinalStepScreen numberValidatorFinalStepScreen, RetrofitErrorParser retrofitErrorParser) {
        numberValidatorFinalStepScreen.mRetrofitErrorParser = retrofitErrorParser;
    }
}
