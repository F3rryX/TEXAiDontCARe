package com.texa.careapp.app.settings.settingscare;

import android.content.Context;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.webservices.TexaService;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingsCareScreen_MembersInjector implements MembersInjector<SettingsCareScreen> {
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<ICareObserver> mCareObserverProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<TexaService> mTexaServiceProvider;

    public SettingsCareScreen_MembersInjector(Provider<Context> provider, Provider<EventBus> provider2, Provider<ICareObserver> provider3, Provider<TexaService> provider4, Provider<DongleDataManager> provider5, Provider<Accessory> provider6) {
        this.mContextProvider = provider;
        this.mEventBusProvider = provider2;
        this.mCareObserverProvider = provider3;
        this.mTexaServiceProvider = provider4;
        this.mDongleDataManagerProvider = provider5;
        this.mAccessoryProvider = provider6;
    }

    public static MembersInjector<SettingsCareScreen> create(Provider<Context> provider, Provider<EventBus> provider2, Provider<ICareObserver> provider3, Provider<TexaService> provider4, Provider<DongleDataManager> provider5, Provider<Accessory> provider6) {
        return new SettingsCareScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SettingsCareScreen settingsCareScreen) {
        injectMContext(settingsCareScreen, this.mContextProvider.get());
        injectMEventBus(settingsCareScreen, this.mEventBusProvider.get());
        injectMCareObserver(settingsCareScreen, this.mCareObserverProvider.get());
        injectMTexaService(settingsCareScreen, this.mTexaServiceProvider.get());
        injectMDongleDataManager(settingsCareScreen, this.mDongleDataManagerProvider.get());
        injectMAccessory(settingsCareScreen, this.mAccessoryProvider.get());
    }

    public static void injectMContext(SettingsCareScreen settingsCareScreen, Context context) {
        settingsCareScreen.mContext = context;
    }

    public static void injectMEventBus(SettingsCareScreen settingsCareScreen, EventBus eventBus) {
        settingsCareScreen.mEventBus = eventBus;
    }

    public static void injectMCareObserver(SettingsCareScreen settingsCareScreen, ICareObserver iCareObserver) {
        settingsCareScreen.mCareObserver = iCareObserver;
    }

    public static void injectMTexaService(SettingsCareScreen settingsCareScreen, TexaService texaService) {
        settingsCareScreen.mTexaService = texaService;
    }

    public static void injectMDongleDataManager(SettingsCareScreen settingsCareScreen, DongleDataManager dongleDataManager) {
        settingsCareScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMAccessory(SettingsCareScreen settingsCareScreen, Accessory accessory) {
        settingsCareScreen.mAccessory = accessory;
    }
}
