package com.texa.careapp.app.activationSosServices.contact;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class ActivationServiceContactScreen_MembersInjector implements MembersInjector<ActivationServiceContactScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public ActivationServiceContactScreen_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<EventBus> provider2, Provider<UserDataManager> provider3, Provider<RetrofitErrorParser> provider4) {
        this.mTexaCareApiServiceProvider = provider;
        this.mEventBusProvider = provider2;
        this.mUserDataManagerProvider = provider3;
        this.mRetrofitErrorParserProvider = provider4;
    }

    public static MembersInjector<ActivationServiceContactScreen> create(Provider<TexaCareApiServiceUser> provider, Provider<EventBus> provider2, Provider<UserDataManager> provider3, Provider<RetrofitErrorParser> provider4) {
        return new ActivationServiceContactScreen_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationServiceContactScreen activationServiceContactScreen) {
        injectMTexaCareApiService(activationServiceContactScreen, this.mTexaCareApiServiceProvider.get());
        injectMEventBus(activationServiceContactScreen, this.mEventBusProvider.get());
        injectMUserDataManager(activationServiceContactScreen, this.mUserDataManagerProvider.get());
        injectMRetrofitErrorParser(activationServiceContactScreen, this.mRetrofitErrorParserProvider.get());
    }

    public static void injectMTexaCareApiService(ActivationServiceContactScreen activationServiceContactScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        activationServiceContactScreen.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMEventBus(ActivationServiceContactScreen activationServiceContactScreen, EventBus eventBus) {
        activationServiceContactScreen.mEventBus = eventBus;
    }

    public static void injectMUserDataManager(ActivationServiceContactScreen activationServiceContactScreen, UserDataManager userDataManager) {
        activationServiceContactScreen.mUserDataManager = userDataManager;
    }

    public static void injectMRetrofitErrorParser(ActivationServiceContactScreen activationServiceContactScreen, RetrofitErrorParser retrofitErrorParser) {
        activationServiceContactScreen.mRetrofitErrorParser = retrofitErrorParser;
    }
}
