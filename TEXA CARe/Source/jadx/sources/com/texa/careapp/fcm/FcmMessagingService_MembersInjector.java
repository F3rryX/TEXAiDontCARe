package com.texa.careapp.fcm;

import android.app.NotificationManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class FcmMessagingService_MembersInjector implements MembersInjector<FcmMessagingService> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<NotificationManager> mNotificationManagerProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public FcmMessagingService_MembersInjector(Provider<DongleDataManager> provider, Provider<VehicleDataManager> provider2, Provider<EventBus> provider3, Provider<ServiceDataManager> provider4, Provider<NotificationManager> provider5, Provider<CAReWorkerManager> provider6) {
        this.mDongleDataManagerProvider = provider;
        this.mVehicleDataManagerProvider = provider2;
        this.mEventBusProvider = provider3;
        this.mServiceDataManagerProvider = provider4;
        this.mNotificationManagerProvider = provider5;
        this.mCAReWorkerManagerProvider = provider6;
    }

    public static MembersInjector<FcmMessagingService> create(Provider<DongleDataManager> provider, Provider<VehicleDataManager> provider2, Provider<EventBus> provider3, Provider<ServiceDataManager> provider4, Provider<NotificationManager> provider5, Provider<CAReWorkerManager> provider6) {
        return new FcmMessagingService_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(FcmMessagingService fcmMessagingService) {
        injectMDongleDataManager(fcmMessagingService, this.mDongleDataManagerProvider.get());
        injectMVehicleDataManager(fcmMessagingService, this.mVehicleDataManagerProvider.get());
        injectMEventBus(fcmMessagingService, this.mEventBusProvider.get());
        injectMServiceDataManager(fcmMessagingService, this.mServiceDataManagerProvider.get());
        injectMNotificationManager(fcmMessagingService, this.mNotificationManagerProvider.get());
        injectMCAReWorkerManager(fcmMessagingService, this.mCAReWorkerManagerProvider.get());
    }

    public static void injectMDongleDataManager(FcmMessagingService fcmMessagingService, DongleDataManager dongleDataManager) {
        fcmMessagingService.mDongleDataManager = dongleDataManager;
    }

    public static void injectMVehicleDataManager(FcmMessagingService fcmMessagingService, VehicleDataManager vehicleDataManager) {
        fcmMessagingService.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMEventBus(FcmMessagingService fcmMessagingService, EventBus eventBus) {
        fcmMessagingService.mEventBus = eventBus;
    }

    public static void injectMServiceDataManager(FcmMessagingService fcmMessagingService, ServiceDataManager serviceDataManager) {
        fcmMessagingService.mServiceDataManager = serviceDataManager;
    }

    public static void injectMNotificationManager(FcmMessagingService fcmMessagingService, NotificationManager notificationManager) {
        fcmMessagingService.mNotificationManager = notificationManager;
    }

    public static void injectMCAReWorkerManager(FcmMessagingService fcmMessagingService, CAReWorkerManager cAReWorkerManager) {
        fcmMessagingService.mCAReWorkerManager = cAReWorkerManager;
    }
}
