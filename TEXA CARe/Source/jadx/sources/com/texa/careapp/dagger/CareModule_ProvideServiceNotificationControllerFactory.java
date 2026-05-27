package com.texa.careapp.dagger;

import android.app.NotificationManager;
import android.content.SharedPreferences;
import com.texa.careapp.app.service.ServiceNotificationController;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideServiceNotificationControllerFactory implements Factory<ServiceNotificationController> {
    private final Provider<ICareObserver> careObserverProvider;
    private final Provider<CommunicationObservable> communicationObservableProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final Provider<LoggerManager> loggerManagerProvider;
    private final CareModule module;
    private final Provider<NotificationManager> notificationManagerProvider;
    private final Provider<SharedPreferences> sharedPreferencesProvider;

    public CareModule_ProvideServiceNotificationControllerFactory(CareModule careModule, Provider<NotificationManager> provider, Provider<CommunicationObservable> provider2, Provider<ICareObserver> provider3, Provider<LoggerManager> provider4, Provider<DongleDataManager> provider5, Provider<SharedPreferences> provider6) {
        this.module = careModule;
        this.notificationManagerProvider = provider;
        this.communicationObservableProvider = provider2;
        this.careObserverProvider = provider3;
        this.loggerManagerProvider = provider4;
        this.dongleDataManagerProvider = provider5;
        this.sharedPreferencesProvider = provider6;
    }

    @Override // javax.inject.Provider
    public ServiceNotificationController get() {
        return provideServiceNotificationController(this.module, this.notificationManagerProvider.get(), this.communicationObservableProvider.get(), this.careObserverProvider.get(), this.loggerManagerProvider.get(), this.dongleDataManagerProvider.get(), this.sharedPreferencesProvider.get());
    }

    public static CareModule_ProvideServiceNotificationControllerFactory create(CareModule careModule, Provider<NotificationManager> provider, Provider<CommunicationObservable> provider2, Provider<ICareObserver> provider3, Provider<LoggerManager> provider4, Provider<DongleDataManager> provider5, Provider<SharedPreferences> provider6) {
        return new CareModule_ProvideServiceNotificationControllerFactory(careModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static ServiceNotificationController provideServiceNotificationController(CareModule careModule, NotificationManager notificationManager, CommunicationObservable communicationObservable, ICareObserver iCareObserver, LoggerManager loggerManager, DongleDataManager dongleDataManager, SharedPreferences sharedPreferences) {
        return (ServiceNotificationController) Preconditions.checkNotNullFromProvides(careModule.provideServiceNotificationController(notificationManager, communicationObservable, iCareObserver, loggerManager, dongleDataManager, sharedPreferences));
    }
}
