package com.texa.careapp.app.onboarding;

import android.content.SharedPreferences;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceClient;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.TexaProfileDelegate;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class DongleDiscoveryScreen_MembersInjector implements MembersInjector<DongleDiscoveryScreen> {
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceClient> mTexaCareApiServiceClientProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<TexaProfileDelegate> mTexaProfileDelegateProvider;

    public DongleDiscoveryScreen_MembersInjector(Provider<Communication> provider, Provider<DongleDataManager> provider2, Provider<TexaProfileDelegate> provider3, Provider<TexaCareApiServiceClient> provider4, Provider<RetrofitErrorParser> provider5, Provider<CommunicationObservable> provider6, Provider<EventBus> provider7, Provider<TexaCareApiServiceUser> provider8, Provider<SharedPreferences> provider9) {
        this.mCommunicationProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mTexaProfileDelegateProvider = provider3;
        this.mTexaCareApiServiceClientProvider = provider4;
        this.mRetrofitErrorParserProvider = provider5;
        this.mCommunicationObservableProvider = provider6;
        this.mEventBusProvider = provider7;
        this.mTexaCareApiServiceUserProvider = provider8;
        this.mSharedPreferencesProvider = provider9;
    }

    public static MembersInjector<DongleDiscoveryScreen> create(Provider<Communication> provider, Provider<DongleDataManager> provider2, Provider<TexaProfileDelegate> provider3, Provider<TexaCareApiServiceClient> provider4, Provider<RetrofitErrorParser> provider5, Provider<CommunicationObservable> provider6, Provider<EventBus> provider7, Provider<TexaCareApiServiceUser> provider8, Provider<SharedPreferences> provider9) {
        return new DongleDiscoveryScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(DongleDiscoveryScreen dongleDiscoveryScreen) {
        injectMCommunication(dongleDiscoveryScreen, this.mCommunicationProvider.get());
        injectMDongleDataManager(dongleDiscoveryScreen, this.mDongleDataManagerProvider.get());
        injectMTexaProfileDelegate(dongleDiscoveryScreen, this.mTexaProfileDelegateProvider.get());
        injectMTexaCareApiServiceClient(dongleDiscoveryScreen, this.mTexaCareApiServiceClientProvider.get());
        injectMRetrofitErrorParser(dongleDiscoveryScreen, this.mRetrofitErrorParserProvider.get());
        injectMCommunicationObservable(dongleDiscoveryScreen, this.mCommunicationObservableProvider.get());
        injectMEventBus(dongleDiscoveryScreen, this.mEventBusProvider.get());
        injectMTexaCareApiServiceUser(dongleDiscoveryScreen, this.mTexaCareApiServiceUserProvider.get());
        injectMSharedPreferences(dongleDiscoveryScreen, this.mSharedPreferencesProvider.get());
    }

    public static void injectMCommunication(DongleDiscoveryScreen dongleDiscoveryScreen, Communication communication) {
        dongleDiscoveryScreen.mCommunication = communication;
    }

    public static void injectMDongleDataManager(DongleDiscoveryScreen dongleDiscoveryScreen, DongleDataManager dongleDataManager) {
        dongleDiscoveryScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMTexaProfileDelegate(DongleDiscoveryScreen dongleDiscoveryScreen, TexaProfileDelegate texaProfileDelegate) {
        dongleDiscoveryScreen.mTexaProfileDelegate = texaProfileDelegate;
    }

    public static void injectMTexaCareApiServiceClient(DongleDiscoveryScreen dongleDiscoveryScreen, TexaCareApiServiceClient texaCareApiServiceClient) {
        dongleDiscoveryScreen.mTexaCareApiServiceClient = texaCareApiServiceClient;
    }

    public static void injectMRetrofitErrorParser(DongleDiscoveryScreen dongleDiscoveryScreen, RetrofitErrorParser retrofitErrorParser) {
        dongleDiscoveryScreen.mRetrofitErrorParser = retrofitErrorParser;
    }

    public static void injectMCommunicationObservable(DongleDiscoveryScreen dongleDiscoveryScreen, CommunicationObservable communicationObservable) {
        dongleDiscoveryScreen.mCommunicationObservable = communicationObservable;
    }

    public static void injectMEventBus(DongleDiscoveryScreen dongleDiscoveryScreen, EventBus eventBus) {
        dongleDiscoveryScreen.mEventBus = eventBus;
    }

    public static void injectMTexaCareApiServiceUser(DongleDiscoveryScreen dongleDiscoveryScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        dongleDiscoveryScreen.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMSharedPreferences(DongleDiscoveryScreen dongleDiscoveryScreen, SharedPreferences sharedPreferences) {
        dongleDiscoveryScreen.mSharedPreferences = sharedPreferences;
    }
}
