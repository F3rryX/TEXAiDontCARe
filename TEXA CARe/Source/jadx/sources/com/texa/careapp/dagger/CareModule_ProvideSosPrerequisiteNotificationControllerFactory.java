package com.texa.careapp.dagger;

import android.app.NotificationManager;
import com.texa.careapp.app.service.SosPrerequisiteNotificationController;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.model.DongleDataManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideSosPrerequisiteNotificationControllerFactory implements Factory<SosPrerequisiteNotificationController> {
    private final Provider<CommunicationObservable> communicationObservableProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final CareModule module;
    private final Provider<NotificationManager> notificationManagerProvider;
    private final Provider<SosFeatureManager> sosFeatureManagerProvider;

    public CareModule_ProvideSosPrerequisiteNotificationControllerFactory(CareModule careModule, Provider<NotificationManager> provider, Provider<CommunicationObservable> provider2, Provider<DongleDataManager> provider3, Provider<SosFeatureManager> provider4) {
        this.module = careModule;
        this.notificationManagerProvider = provider;
        this.communicationObservableProvider = provider2;
        this.dongleDataManagerProvider = provider3;
        this.sosFeatureManagerProvider = provider4;
    }

    @Override // javax.inject.Provider
    public SosPrerequisiteNotificationController get() {
        return provideSosPrerequisiteNotificationController(this.module, this.notificationManagerProvider.get(), this.communicationObservableProvider.get(), this.dongleDataManagerProvider.get(), this.sosFeatureManagerProvider.get());
    }

    public static CareModule_ProvideSosPrerequisiteNotificationControllerFactory create(CareModule careModule, Provider<NotificationManager> provider, Provider<CommunicationObservable> provider2, Provider<DongleDataManager> provider3, Provider<SosFeatureManager> provider4) {
        return new CareModule_ProvideSosPrerequisiteNotificationControllerFactory(careModule, provider, provider2, provider3, provider4);
    }

    public static SosPrerequisiteNotificationController provideSosPrerequisiteNotificationController(CareModule careModule, NotificationManager notificationManager, CommunicationObservable communicationObservable, DongleDataManager dongleDataManager, SosFeatureManager sosFeatureManager) {
        return (SosPrerequisiteNotificationController) Preconditions.checkNotNullFromProvides(careModule.provideSosPrerequisiteNotificationController(notificationManager, communicationObservable, dongleDataManager, sosFeatureManager));
    }
}
