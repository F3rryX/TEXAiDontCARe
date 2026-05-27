package com.texa.careapp.dagger;

import android.app.NotificationManager;
import com.texa.careapp.alarms.VehicleAlarmNotifier;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.sync.CAReWorkerManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideBatteryChargeNotifierFactory implements Factory<VehicleAlarmNotifier> {
    private final Provider<CAReWorkerManager> caReWorkerManagerProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final CareModule module;
    private final Provider<NotificationManager> notificationManagerProvider;

    public CareModule_ProvideBatteryChargeNotifierFactory(CareModule careModule, Provider<DongleDataManager> provider, Provider<NotificationManager> provider2, Provider<CAReWorkerManager> provider3) {
        this.module = careModule;
        this.dongleDataManagerProvider = provider;
        this.notificationManagerProvider = provider2;
        this.caReWorkerManagerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public VehicleAlarmNotifier get() {
        return provideBatteryChargeNotifier(this.module, this.dongleDataManagerProvider.get(), this.notificationManagerProvider.get(), this.caReWorkerManagerProvider.get());
    }

    public static CareModule_ProvideBatteryChargeNotifierFactory create(CareModule careModule, Provider<DongleDataManager> provider, Provider<NotificationManager> provider2, Provider<CAReWorkerManager> provider3) {
        return new CareModule_ProvideBatteryChargeNotifierFactory(careModule, provider, provider2, provider3);
    }

    public static VehicleAlarmNotifier provideBatteryChargeNotifier(CareModule careModule, DongleDataManager dongleDataManager, NotificationManager notificationManager, CAReWorkerManager cAReWorkerManager) {
        return (VehicleAlarmNotifier) Preconditions.checkNotNullFromProvides(careModule.provideBatteryChargeNotifier(dongleDataManager, notificationManager, cAReWorkerManager));
    }
}
