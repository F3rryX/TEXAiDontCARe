package com.texa.careapp.app.ecodriving;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class AcceptationTermsScreen_MembersInjector implements MembersInjector<AcceptationTermsScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public AcceptationTermsScreen_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<EventBus> provider2, Provider<UserDataManager> provider3) {
        this.mTexaCareApiServiceProvider = provider;
        this.mEventBusProvider = provider2;
        this.mUserDataManagerProvider = provider3;
    }

    public static MembersInjector<AcceptationTermsScreen> create(Provider<TexaCareApiServiceUser> provider, Provider<EventBus> provider2, Provider<UserDataManager> provider3) {
        return new AcceptationTermsScreen_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(AcceptationTermsScreen acceptationTermsScreen) {
        injectMTexaCareApiService(acceptationTermsScreen, this.mTexaCareApiServiceProvider.get());
        injectMEventBus(acceptationTermsScreen, this.mEventBusProvider.get());
        injectMUserDataManager(acceptationTermsScreen, this.mUserDataManagerProvider.get());
    }

    public static void injectMTexaCareApiService(AcceptationTermsScreen acceptationTermsScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        acceptationTermsScreen.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMEventBus(AcceptationTermsScreen acceptationTermsScreen, EventBus eventBus) {
        acceptationTermsScreen.mEventBus = eventBus;
    }

    public static void injectMUserDataManager(AcceptationTermsScreen acceptationTermsScreen, UserDataManager userDataManager) {
        acceptationTermsScreen.mUserDataManager = userDataManager;
    }
}
