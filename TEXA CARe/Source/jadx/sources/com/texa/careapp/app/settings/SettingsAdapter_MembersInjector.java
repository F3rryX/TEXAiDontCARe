package com.texa.careapp.app.settings;

import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingsAdapter_MembersInjector implements MembersInjector<SettingsAdapter> {
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public SettingsAdapter_MembersInjector(Provider<DongleDataManager> provider, Provider<CommunicationObservable> provider2, Provider<VehicleObserver> provider3, Provider<ServiceDataManager> provider4) {
        this.mDongleDataManagerProvider = provider;
        this.mCommunicationObservableProvider = provider2;
        this.mVehicleObserverProvider = provider3;
        this.mServiceDataManagerProvider = provider4;
    }

    public static MembersInjector<SettingsAdapter> create(Provider<DongleDataManager> provider, Provider<CommunicationObservable> provider2, Provider<VehicleObserver> provider3, Provider<ServiceDataManager> provider4) {
        return new SettingsAdapter_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SettingsAdapter settingsAdapter) {
        injectMDongleDataManager(settingsAdapter, this.mDongleDataManagerProvider.get());
        injectMCommunicationObservable(settingsAdapter, this.mCommunicationObservableProvider.get());
        injectMVehicleObserver(settingsAdapter, this.mVehicleObserverProvider.get());
        injectMServiceDataManager(settingsAdapter, this.mServiceDataManagerProvider.get());
    }

    public static void injectMDongleDataManager(SettingsAdapter settingsAdapter, DongleDataManager dongleDataManager) {
        settingsAdapter.mDongleDataManager = dongleDataManager;
    }

    public static void injectMCommunicationObservable(SettingsAdapter settingsAdapter, CommunicationObservable communicationObservable) {
        settingsAdapter.mCommunicationObservable = communicationObservable;
    }

    public static void injectMVehicleObserver(SettingsAdapter settingsAdapter, VehicleObserver vehicleObserver) {
        settingsAdapter.mVehicleObserver = vehicleObserver;
    }

    public static void injectMServiceDataManager(SettingsAdapter settingsAdapter, ServiceDataManager serviceDataManager) {
        settingsAdapter.mServiceDataManager = serviceDataManager;
    }
}
