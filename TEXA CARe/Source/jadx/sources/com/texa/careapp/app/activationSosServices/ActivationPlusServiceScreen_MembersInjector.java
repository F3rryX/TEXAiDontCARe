package com.texa.careapp.app.activationSosServices;

import android.content.SharedPreferences;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes.dex */
public final class ActivationPlusServiceScreen_MembersInjector implements MembersInjector<ActivationPlusServiceScreen> {
    private final Provider<EventBus> eventBusProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public ActivationPlusServiceScreen_MembersInjector(Provider<VehicleObserver> provider, Provider<TexaCareApiServiceUser> provider2, Provider<VehicleDataManager> provider3, Provider<EventBus> provider4, Provider<SharedPreferences> provider5) {
        this.mVehicleObserverProvider = provider;
        this.mTexaCareApiServiceProvider = provider2;
        this.mVehicleDataManagerProvider = provider3;
        this.eventBusProvider = provider4;
        this.mSharedPreferencesProvider = provider5;
    }

    public static MembersInjector<ActivationPlusServiceScreen> create(Provider<VehicleObserver> provider, Provider<TexaCareApiServiceUser> provider2, Provider<VehicleDataManager> provider3, Provider<EventBus> provider4, Provider<SharedPreferences> provider5) {
        return new ActivationPlusServiceScreen_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ActivationPlusServiceScreen activationPlusServiceScreen) {
        injectMVehicleObserver(activationPlusServiceScreen, this.mVehicleObserverProvider.get());
        injectMTexaCareApiService(activationPlusServiceScreen, this.mTexaCareApiServiceProvider.get());
        injectMVehicleDataManager(activationPlusServiceScreen, this.mVehicleDataManagerProvider.get());
        injectEventBus(activationPlusServiceScreen, this.eventBusProvider.get());
        injectMSharedPreferences(activationPlusServiceScreen, this.mSharedPreferencesProvider.get());
    }

    public static void injectMVehicleObserver(ActivationPlusServiceScreen activationPlusServiceScreen, VehicleObserver vehicleObserver) {
        activationPlusServiceScreen.mVehicleObserver = vehicleObserver;
    }

    public static void injectMTexaCareApiService(ActivationPlusServiceScreen activationPlusServiceScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        activationPlusServiceScreen.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMVehicleDataManager(ActivationPlusServiceScreen activationPlusServiceScreen, VehicleDataManager vehicleDataManager) {
        activationPlusServiceScreen.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectEventBus(ActivationPlusServiceScreen activationPlusServiceScreen, EventBus eventBus) {
        activationPlusServiceScreen.eventBus = eventBus;
    }

    public static void injectMSharedPreferences(ActivationPlusServiceScreen activationPlusServiceScreen, SharedPreferences sharedPreferences) {
        activationPlusServiceScreen.mSharedPreferences = sharedPreferences;
    }
}
