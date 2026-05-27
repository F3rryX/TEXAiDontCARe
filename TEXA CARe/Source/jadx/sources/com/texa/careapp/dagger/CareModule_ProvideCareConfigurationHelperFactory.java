package com.texa.careapp.dagger;

import android.app.NotificationManager;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.configuration.UpdateConfigurationHelper;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.webservices.TexaService;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideCareConfigurationHelperFactory implements Factory<UpdateConfigurationHelper> {
    private final Provider<ICareObserver> careObserverProvider;
    private final Provider<CommunicationObservable> communicationObservableProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final CareModule module;
    private final Provider<NotificationManager> notificationManagerProvider;
    private final Provider<TexaService> texaServiceProvider;
    private final Provider<VehicleObserver> vehicleObserverProvider;

    public CareModule_ProvideCareConfigurationHelperFactory(CareModule careModule, Provider<TexaService> provider, Provider<ICareObserver> provider2, Provider<NotificationManager> provider3, Provider<CommunicationObservable> provider4, Provider<DongleDataManager> provider5, Provider<VehicleObserver> provider6) {
        this.module = careModule;
        this.texaServiceProvider = provider;
        this.careObserverProvider = provider2;
        this.notificationManagerProvider = provider3;
        this.communicationObservableProvider = provider4;
        this.dongleDataManagerProvider = provider5;
        this.vehicleObserverProvider = provider6;
    }

    @Override // javax.inject.Provider
    public UpdateConfigurationHelper get() {
        return provideCareConfigurationHelper(this.module, this.texaServiceProvider.get(), this.careObserverProvider.get(), this.notificationManagerProvider.get(), this.communicationObservableProvider.get(), this.dongleDataManagerProvider.get(), this.vehicleObserverProvider.get());
    }

    public static CareModule_ProvideCareConfigurationHelperFactory create(CareModule careModule, Provider<TexaService> provider, Provider<ICareObserver> provider2, Provider<NotificationManager> provider3, Provider<CommunicationObservable> provider4, Provider<DongleDataManager> provider5, Provider<VehicleObserver> provider6) {
        return new CareModule_ProvideCareConfigurationHelperFactory(careModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static UpdateConfigurationHelper provideCareConfigurationHelper(CareModule careModule, TexaService texaService, ICareObserver iCareObserver, NotificationManager notificationManager, CommunicationObservable communicationObservable, DongleDataManager dongleDataManager, VehicleObserver vehicleObserver) {
        return (UpdateConfigurationHelper) Preconditions.checkNotNullFromProvides(careModule.provideCareConfigurationHelper(texaService, iCareObserver, notificationManager, communicationObservable, dongleDataManager, vehicleObserver));
    }
}
