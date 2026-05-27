package com.texa.careapp.app.settings;

import android.content.Context;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.webservices.TexaService;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingsScreen_MembersInjector implements MembersInjector<SettingsScreen> {
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<TexaService> mTexaServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public SettingsScreen_MembersInjector(Provider<Context> provider, Provider<Profile> provider2, Provider<TexaService> provider3, Provider<UserDataManager> provider4, Provider<DongleDataManager> provider5, Provider<VehicleDataManager> provider6, Provider<CommunicationObservable> provider7, Provider<VehicleObserver> provider8, Provider<TexaCareApiServiceUser> provider9, Provider<LoginHelperRx> provider10, Provider<EventBus> provider11) {
        this.mContextProvider = provider;
        this.mProfileProvider = provider2;
        this.mTexaServiceProvider = provider3;
        this.mUserDataManagerProvider = provider4;
        this.mDongleDataManagerProvider = provider5;
        this.mVehicleDataManagerProvider = provider6;
        this.mCommunicationObservableProvider = provider7;
        this.mVehicleObserverProvider = provider8;
        this.mTexaCareApiServiceUserProvider = provider9;
        this.mLoginHelperRxProvider = provider10;
        this.mEventBusProvider = provider11;
    }

    public static MembersInjector<SettingsScreen> create(Provider<Context> provider, Provider<Profile> provider2, Provider<TexaService> provider3, Provider<UserDataManager> provider4, Provider<DongleDataManager> provider5, Provider<VehicleDataManager> provider6, Provider<CommunicationObservable> provider7, Provider<VehicleObserver> provider8, Provider<TexaCareApiServiceUser> provider9, Provider<LoginHelperRx> provider10, Provider<EventBus> provider11) {
        return new SettingsScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SettingsScreen settingsScreen) {
        injectMContext(settingsScreen, this.mContextProvider.get());
        injectMProfile(settingsScreen, this.mProfileProvider.get());
        injectMTexaService(settingsScreen, this.mTexaServiceProvider.get());
        injectMUserDataManager(settingsScreen, this.mUserDataManagerProvider.get());
        injectMDongleDataManager(settingsScreen, this.mDongleDataManagerProvider.get());
        injectMVehicleDataManager(settingsScreen, this.mVehicleDataManagerProvider.get());
        injectMCommunicationObservable(settingsScreen, this.mCommunicationObservableProvider.get());
        injectMVehicleObserver(settingsScreen, this.mVehicleObserverProvider.get());
        injectMTexaCareApiServiceUser(settingsScreen, this.mTexaCareApiServiceUserProvider.get());
        injectMLoginHelperRx(settingsScreen, this.mLoginHelperRxProvider.get());
        injectMEventBus(settingsScreen, this.mEventBusProvider.get());
    }

    public static void injectMContext(SettingsScreen settingsScreen, Context context) {
        settingsScreen.mContext = context;
    }

    public static void injectMProfile(SettingsScreen settingsScreen, Profile profile) {
        settingsScreen.mProfile = profile;
    }

    public static void injectMTexaService(SettingsScreen settingsScreen, TexaService texaService) {
        settingsScreen.mTexaService = texaService;
    }

    public static void injectMUserDataManager(SettingsScreen settingsScreen, UserDataManager userDataManager) {
        settingsScreen.mUserDataManager = userDataManager;
    }

    public static void injectMDongleDataManager(SettingsScreen settingsScreen, DongleDataManager dongleDataManager) {
        settingsScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMVehicleDataManager(SettingsScreen settingsScreen, VehicleDataManager vehicleDataManager) {
        settingsScreen.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMCommunicationObservable(SettingsScreen settingsScreen, CommunicationObservable communicationObservable) {
        settingsScreen.mCommunicationObservable = communicationObservable;
    }

    public static void injectMVehicleObserver(SettingsScreen settingsScreen, VehicleObserver vehicleObserver) {
        settingsScreen.mVehicleObserver = vehicleObserver;
    }

    public static void injectMTexaCareApiServiceUser(SettingsScreen settingsScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        settingsScreen.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMLoginHelperRx(SettingsScreen settingsScreen, LoginHelperRx loginHelperRx) {
        settingsScreen.mLoginHelperRx = loginHelperRx;
    }

    public static void injectMEventBus(SettingsScreen settingsScreen, EventBus eventBus) {
        settingsScreen.mEventBus = eventBus;
    }
}
