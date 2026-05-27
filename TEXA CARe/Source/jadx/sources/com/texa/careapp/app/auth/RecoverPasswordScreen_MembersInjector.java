package com.texa.careapp.app.auth;

import com.texa.careapp.networking.TexaCareApiServiceClient;
import com.texa.careapp.networking.TexaCareAuthServiceHelper;
import com.texa.careapp.utils.RetrofitErrorParser;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class RecoverPasswordScreen_MembersInjector implements MembersInjector<RecoverPasswordScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<TexaCareApiServiceClient> mTexaCareApiServiceProvider;
    private final Provider<TexaCareAuthServiceHelper> mTexaCareAuthServiceHelperProvider;

    public RecoverPasswordScreen_MembersInjector(Provider<RetrofitErrorParser> provider, Provider<EventBus> provider2, Provider<TexaCareAuthServiceHelper> provider3, Provider<TexaCareApiServiceClient> provider4) {
        this.mRetrofitErrorParserProvider = provider;
        this.mEventBusProvider = provider2;
        this.mTexaCareAuthServiceHelperProvider = provider3;
        this.mTexaCareApiServiceProvider = provider4;
    }

    public static MembersInjector<RecoverPasswordScreen> create(Provider<RetrofitErrorParser> provider, Provider<EventBus> provider2, Provider<TexaCareAuthServiceHelper> provider3, Provider<TexaCareApiServiceClient> provider4) {
        return new RecoverPasswordScreen_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(RecoverPasswordScreen recoverPasswordScreen) {
        injectMRetrofitErrorParser(recoverPasswordScreen, this.mRetrofitErrorParserProvider.get());
        injectMEventBus(recoverPasswordScreen, this.mEventBusProvider.get());
        injectMTexaCareAuthServiceHelper(recoverPasswordScreen, this.mTexaCareAuthServiceHelperProvider.get());
        injectMTexaCareApiService(recoverPasswordScreen, this.mTexaCareApiServiceProvider.get());
    }

    public static void injectMRetrofitErrorParser(RecoverPasswordScreen recoverPasswordScreen, RetrofitErrorParser retrofitErrorParser) {
        recoverPasswordScreen.mRetrofitErrorParser = retrofitErrorParser;
    }

    public static void injectMEventBus(RecoverPasswordScreen recoverPasswordScreen, EventBus eventBus) {
        recoverPasswordScreen.mEventBus = eventBus;
    }

    public static void injectMTexaCareAuthServiceHelper(RecoverPasswordScreen recoverPasswordScreen, TexaCareAuthServiceHelper texaCareAuthServiceHelper) {
        recoverPasswordScreen.mTexaCareAuthServiceHelper = texaCareAuthServiceHelper;
    }

    public static void injectMTexaCareApiService(RecoverPasswordScreen recoverPasswordScreen, TexaCareApiServiceClient texaCareApiServiceClient) {
        recoverPasswordScreen.mTexaCareApiService = texaCareApiServiceClient;
    }
}
