package com.texa.careapp.base;

import android.content.Context;
import android.content.SharedPreferences;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationDrawerFragment_MembersInjector implements MembersInjector<NavigationDrawerFragment> {
    private final Provider<CommunicationObservable> mCommunicationObserverProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<SosFeatureManager> mSosFeatureManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public NavigationDrawerFragment_MembersInjector(Provider<EventBus> provider, Provider<DongleDataManager> provider2, Provider<VehicleObserver> provider3, Provider<CommunicationObservable> provider4, Provider<Communication> provider5, Provider<SosFeatureManager> provider6, Provider<Context> provider7, Provider<SharedPreferences> provider8) {
        this.mEventBusProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mVehicleObserverProvider = provider3;
        this.mCommunicationObserverProvider = provider4;
        this.mCommunicationProvider = provider5;
        this.mSosFeatureManagerProvider = provider6;
        this.mContextProvider = provider7;
        this.mSharedPreferencesProvider = provider8;
    }

    public static MembersInjector<NavigationDrawerFragment> create(Provider<EventBus> provider, Provider<DongleDataManager> provider2, Provider<VehicleObserver> provider3, Provider<CommunicationObservable> provider4, Provider<Communication> provider5, Provider<SosFeatureManager> provider6, Provider<Context> provider7, Provider<SharedPreferences> provider8) {
        return new NavigationDrawerFragment_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(NavigationDrawerFragment navigationDrawerFragment) {
        injectMEventBus(navigationDrawerFragment, this.mEventBusProvider.get());
        injectMDongleDataManager(navigationDrawerFragment, this.mDongleDataManagerProvider.get());
        injectMVehicleObserver(navigationDrawerFragment, this.mVehicleObserverProvider.get());
        injectMCommunicationObserver(navigationDrawerFragment, this.mCommunicationObserverProvider.get());
        injectMCommunication(navigationDrawerFragment, this.mCommunicationProvider.get());
        injectMSosFeatureManager(navigationDrawerFragment, this.mSosFeatureManagerProvider.get());
        injectMContext(navigationDrawerFragment, this.mContextProvider.get());
        injectMSharedPreferences(navigationDrawerFragment, this.mSharedPreferencesProvider.get());
    }

    public static void injectMEventBus(NavigationDrawerFragment navigationDrawerFragment, EventBus eventBus) {
        navigationDrawerFragment.mEventBus = eventBus;
    }

    public static void injectMDongleDataManager(NavigationDrawerFragment navigationDrawerFragment, DongleDataManager dongleDataManager) {
        navigationDrawerFragment.mDongleDataManager = dongleDataManager;
    }

    public static void injectMVehicleObserver(NavigationDrawerFragment navigationDrawerFragment, VehicleObserver vehicleObserver) {
        navigationDrawerFragment.mVehicleObserver = vehicleObserver;
    }

    public static void injectMCommunicationObserver(NavigationDrawerFragment navigationDrawerFragment, CommunicationObservable communicationObservable) {
        navigationDrawerFragment.mCommunicationObserver = communicationObservable;
    }

    public static void injectMCommunication(NavigationDrawerFragment navigationDrawerFragment, Communication communication) {
        navigationDrawerFragment.mCommunication = communication;
    }

    public static void injectMSosFeatureManager(NavigationDrawerFragment navigationDrawerFragment, SosFeatureManager sosFeatureManager) {
        navigationDrawerFragment.mSosFeatureManager = sosFeatureManager;
    }

    public static void injectMContext(NavigationDrawerFragment navigationDrawerFragment, Context context) {
        navigationDrawerFragment.mContext = context;
    }

    public static void injectMSharedPreferences(NavigationDrawerFragment navigationDrawerFragment, SharedPreferences sharedPreferences) {
        navigationDrawerFragment.mSharedPreferences = sharedPreferences;
    }
}
