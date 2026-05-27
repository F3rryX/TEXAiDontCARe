package com.texa.careapp.app.onboarding;

import android.content.SharedPreferences;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.RetrofitErrorParser;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class StartEngineScreen_MembersInjector implements MembersInjector<StartEngineScreen> {
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RetrofitErrorParser> mRetrofitErrorParserProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleInfo> mVehicleInfoProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public StartEngineScreen_MembersInjector(Provider<SharedPreferences> provider, Provider<TexaCareApiServiceUser> provider2, Provider<EventBus> provider3, Provider<VehicleDataManager> provider4, Provider<LoginHelperRx> provider5, Provider<RetrofitErrorParser> provider6, Provider<VehicleObserver> provider7, Provider<Accessory> provider8, Provider<VehicleInfo> provider9, Provider<DongleDataManager> provider10) {
        this.mPreferencesProvider = provider;
        this.mTexaCareApiServiceUserProvider = provider2;
        this.mEventBusProvider = provider3;
        this.mVehicleDataManagerProvider = provider4;
        this.mLoginHelperRxProvider = provider5;
        this.mRetrofitErrorParserProvider = provider6;
        this.mVehicleObserverProvider = provider7;
        this.mAccessoryProvider = provider8;
        this.mVehicleInfoProvider = provider9;
        this.mDongleDataManagerProvider = provider10;
    }

    public static MembersInjector<StartEngineScreen> create(Provider<SharedPreferences> provider, Provider<TexaCareApiServiceUser> provider2, Provider<EventBus> provider3, Provider<VehicleDataManager> provider4, Provider<LoginHelperRx> provider5, Provider<RetrofitErrorParser> provider6, Provider<VehicleObserver> provider7, Provider<Accessory> provider8, Provider<VehicleInfo> provider9, Provider<DongleDataManager> provider10) {
        return new StartEngineScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(StartEngineScreen startEngineScreen) {
        injectMPreferences(startEngineScreen, this.mPreferencesProvider.get());
        injectMTexaCareApiServiceUser(startEngineScreen, this.mTexaCareApiServiceUserProvider.get());
        injectMEventBus(startEngineScreen, this.mEventBusProvider.get());
        injectMVehicleDataManager(startEngineScreen, this.mVehicleDataManagerProvider.get());
        injectMLoginHelperRx(startEngineScreen, this.mLoginHelperRxProvider.get());
        injectMRetrofitErrorParser(startEngineScreen, this.mRetrofitErrorParserProvider.get());
        injectMVehicleObserver(startEngineScreen, this.mVehicleObserverProvider.get());
        injectMAccessory(startEngineScreen, this.mAccessoryProvider.get());
        injectMVehicleInfo(startEngineScreen, this.mVehicleInfoProvider.get());
        injectMDongleDataManager(startEngineScreen, this.mDongleDataManagerProvider.get());
    }

    public static void injectMPreferences(StartEngineScreen startEngineScreen, SharedPreferences sharedPreferences) {
        startEngineScreen.mPreferences = sharedPreferences;
    }

    public static void injectMTexaCareApiServiceUser(StartEngineScreen startEngineScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        startEngineScreen.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMEventBus(StartEngineScreen startEngineScreen, EventBus eventBus) {
        startEngineScreen.mEventBus = eventBus;
    }

    public static void injectMVehicleDataManager(StartEngineScreen startEngineScreen, VehicleDataManager vehicleDataManager) {
        startEngineScreen.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMLoginHelperRx(StartEngineScreen startEngineScreen, LoginHelperRx loginHelperRx) {
        startEngineScreen.mLoginHelperRx = loginHelperRx;
    }

    public static void injectMRetrofitErrorParser(StartEngineScreen startEngineScreen, RetrofitErrorParser retrofitErrorParser) {
        startEngineScreen.mRetrofitErrorParser = retrofitErrorParser;
    }

    public static void injectMVehicleObserver(StartEngineScreen startEngineScreen, VehicleObserver vehicleObserver) {
        startEngineScreen.mVehicleObserver = vehicleObserver;
    }

    public static void injectMAccessory(StartEngineScreen startEngineScreen, Accessory accessory) {
        startEngineScreen.mAccessory = accessory;
    }

    public static void injectMVehicleInfo(StartEngineScreen startEngineScreen, VehicleInfo vehicleInfo) {
        startEngineScreen.mVehicleInfo = vehicleInfo;
    }

    public static void injectMDongleDataManager(StartEngineScreen startEngineScreen, DongleDataManager dongleDataManager) {
        startEngineScreen.mDongleDataManager = dongleDataManager;
    }
}
