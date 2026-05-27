package com.texa.careapp.dagger;

import android.app.NotificationManager;
import com.texa.careapp.app.update.FirmwareUpdateController;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.carelib.webservices.TexaService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideFirmwareUpdateControllerFactory implements Factory<FirmwareUpdateController> {
    private final Provider<ICareObserver> careObserverProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final CareModule module;
    private final Provider<NotificationManager> notificationManagerProvider;
    private final Provider<TexaService> texaServiceProvider;

    public CareModule_ProvideFirmwareUpdateControllerFactory(CareModule careModule, Provider<TexaService> provider, Provider<ICareObserver> provider2, Provider<NotificationManager> provider3, Provider<DongleDataManager> provider4) {
        this.module = careModule;
        this.texaServiceProvider = provider;
        this.careObserverProvider = provider2;
        this.notificationManagerProvider = provider3;
        this.dongleDataManagerProvider = provider4;
    }

    @Override // javax.inject.Provider
    public FirmwareUpdateController get() {
        return provideFirmwareUpdateController(this.module, this.texaServiceProvider.get(), this.careObserverProvider.get(), this.notificationManagerProvider.get(), this.dongleDataManagerProvider.get());
    }

    public static CareModule_ProvideFirmwareUpdateControllerFactory create(CareModule careModule, Provider<TexaService> provider, Provider<ICareObserver> provider2, Provider<NotificationManager> provider3, Provider<DongleDataManager> provider4) {
        return new CareModule_ProvideFirmwareUpdateControllerFactory(careModule, provider, provider2, provider3, provider4);
    }

    public static FirmwareUpdateController provideFirmwareUpdateController(CareModule careModule, TexaService texaService, ICareObserver iCareObserver, NotificationManager notificationManager, DongleDataManager dongleDataManager) {
        return (FirmwareUpdateController) Preconditions.checkNotNullFromProvides(careModule.provideFirmwareUpdateController(texaService, iCareObserver, notificationManager, dongleDataManager));
    }
}
