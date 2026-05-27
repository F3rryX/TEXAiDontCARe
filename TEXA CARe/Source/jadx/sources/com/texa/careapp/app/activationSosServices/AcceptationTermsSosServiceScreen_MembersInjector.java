package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import com.texa.careapp.app.ecodriving.AcceptationTermsScreen_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public final class AcceptationTermsSosServiceScreen_MembersInjector implements MembersInjector<AcceptationTermsSosServiceScreen> {
    private final Provider<CAReWorkerManager> caReWorkerManagerProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<EventBus> mEventBusProvider2;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<UserDataManager> userDataManagerProvider;

    public AcceptationTermsSosServiceScreen_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<EventBus> provider2, Provider<UserDataManager> provider3, Provider<UserDataManager> provider4, Provider<DongleDataManager> provider5, Provider<SharedPreferences> provider6, Provider<EventBus> provider7, Provider<CAReWorkerManager> provider8) {
        this.mTexaCareApiServiceProvider = provider;
        this.mEventBusProvider = provider2;
        this.mUserDataManagerProvider = provider3;
        this.userDataManagerProvider = provider4;
        this.dongleDataManagerProvider = provider5;
        this.mSharedPreferencesProvider = provider6;
        this.mEventBusProvider2 = provider7;
        this.caReWorkerManagerProvider = provider8;
    }

    public static MembersInjector<AcceptationTermsSosServiceScreen> create(Provider<TexaCareApiServiceUser> provider, Provider<EventBus> provider2, Provider<UserDataManager> provider3, Provider<UserDataManager> provider4, Provider<DongleDataManager> provider5, Provider<SharedPreferences> provider6, Provider<EventBus> provider7, Provider<CAReWorkerManager> provider8) {
        return new AcceptationTermsSosServiceScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(AcceptationTermsSosServiceScreen acceptationTermsSosServiceScreen) {
        AcceptationTermsScreen_MembersInjector.injectMTexaCareApiService(acceptationTermsSosServiceScreen, this.mTexaCareApiServiceProvider.get());
        AcceptationTermsScreen_MembersInjector.injectMEventBus(acceptationTermsSosServiceScreen, this.mEventBusProvider.get());
        AcceptationTermsScreen_MembersInjector.injectMUserDataManager(acceptationTermsSosServiceScreen, this.mUserDataManagerProvider.get());
        injectUserDataManager(acceptationTermsSosServiceScreen, this.userDataManagerProvider.get());
        injectDongleDataManager(acceptationTermsSosServiceScreen, this.dongleDataManagerProvider.get());
        injectMSharedPreferences(acceptationTermsSosServiceScreen, this.mSharedPreferencesProvider.get());
        injectMEventBus(acceptationTermsSosServiceScreen, this.mEventBusProvider2.get());
        injectCaReWorkerManager(acceptationTermsSosServiceScreen, this.caReWorkerManagerProvider.get());
    }

    public static void injectUserDataManager(AcceptationTermsSosServiceScreen acceptationTermsSosServiceScreen, UserDataManager userDataManager) {
        acceptationTermsSosServiceScreen.userDataManager = userDataManager;
    }

    public static void injectDongleDataManager(AcceptationTermsSosServiceScreen acceptationTermsSosServiceScreen, DongleDataManager dongleDataManager) {
        acceptationTermsSosServiceScreen.dongleDataManager = dongleDataManager;
    }

    public static void injectMSharedPreferences(AcceptationTermsSosServiceScreen acceptationTermsSosServiceScreen, SharedPreferences sharedPreferences) {
        acceptationTermsSosServiceScreen.mSharedPreferences = sharedPreferences;
    }

    public static void injectMEventBus(AcceptationTermsSosServiceScreen acceptationTermsSosServiceScreen, EventBus eventBus) {
        acceptationTermsSosServiceScreen.mEventBus = eventBus;
    }

    public static void injectCaReWorkerManager(AcceptationTermsSosServiceScreen acceptationTermsSosServiceScreen, CAReWorkerManager cAReWorkerManager) {
        acceptationTermsSosServiceScreen.caReWorkerManager = cAReWorkerManager;
    }
}
