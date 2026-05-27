package com.texa.careapp.dagger;

import android.content.SharedPreferences;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.care.accessory.Accessory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideLoggerManagerFactory implements Factory<LoggerManager> {
    private final Provider<Accessory> accessoryProvider;
    private final Provider<CAReWorkerManager> caReWorkerManagerProvider;
    private final Provider<CommunicationObservable> communicationObservableProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final CareModule module;
    private final Provider<SharedPreferences> sharedPreferencesProvider;
    private final Provider<UserDataManager> userDataManagerProvider;

    public CareModule_ProvideLoggerManagerFactory(CareModule careModule, Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<CommunicationObservable> provider3, Provider<SharedPreferences> provider4, Provider<Accessory> provider5, Provider<CAReWorkerManager> provider6) {
        this.module = careModule;
        this.userDataManagerProvider = provider;
        this.dongleDataManagerProvider = provider2;
        this.communicationObservableProvider = provider3;
        this.sharedPreferencesProvider = provider4;
        this.accessoryProvider = provider5;
        this.caReWorkerManagerProvider = provider6;
    }

    @Override // javax.inject.Provider
    public LoggerManager get() {
        return provideLoggerManager(this.module, this.userDataManagerProvider.get(), this.dongleDataManagerProvider.get(), this.communicationObservableProvider.get(), this.sharedPreferencesProvider.get(), this.accessoryProvider.get(), this.caReWorkerManagerProvider.get());
    }

    public static CareModule_ProvideLoggerManagerFactory create(CareModule careModule, Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<CommunicationObservable> provider3, Provider<SharedPreferences> provider4, Provider<Accessory> provider5, Provider<CAReWorkerManager> provider6) {
        return new CareModule_ProvideLoggerManagerFactory(careModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static LoggerManager provideLoggerManager(CareModule careModule, UserDataManager userDataManager, DongleDataManager dongleDataManager, CommunicationObservable communicationObservable, SharedPreferences sharedPreferences, Accessory accessory, CAReWorkerManager cAReWorkerManager) {
        return (LoggerManager) Preconditions.checkNotNullFromProvides(careModule.provideLoggerManager(userDataManager, dongleDataManager, communicationObservable, sharedPreferences, accessory, cAReWorkerManager));
    }
}
