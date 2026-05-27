package com.texa.careapp.sync.jobs;

import android.app.NotificationManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ServiceOneOffJob_MembersInjector implements MembersInjector<ServiceOneOffJob> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;
    private final Provider<NotificationManager> mNotificationManagerProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public ServiceOneOffJob_MembersInjector(Provider<NotificationManager> provider, Provider<LoginHelperRx> provider2, Provider<ServiceDataManager> provider3, Provider<TexaCareApiServiceUser> provider4, Provider<VehicleDataManager> provider5, Provider<DongleDataManager> provider6) {
        this.mNotificationManagerProvider = provider;
        this.mLoginHelperRxProvider = provider2;
        this.mServiceDataManagerProvider = provider3;
        this.mTexaCareApiServiceProvider = provider4;
        this.mVehicleDataManagerProvider = provider5;
        this.mDongleDataManagerProvider = provider6;
    }

    public static MembersInjector<ServiceOneOffJob> create(Provider<NotificationManager> provider, Provider<LoginHelperRx> provider2, Provider<ServiceDataManager> provider3, Provider<TexaCareApiServiceUser> provider4, Provider<VehicleDataManager> provider5, Provider<DongleDataManager> provider6) {
        return new ServiceOneOffJob_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ServiceOneOffJob serviceOneOffJob) {
        injectMNotificationManager(serviceOneOffJob, this.mNotificationManagerProvider.get());
        injectMLoginHelperRx(serviceOneOffJob, this.mLoginHelperRxProvider.get());
        injectMServiceDataManager(serviceOneOffJob, this.mServiceDataManagerProvider.get());
        injectMTexaCareApiService(serviceOneOffJob, this.mTexaCareApiServiceProvider.get());
        injectMVehicleDataManager(serviceOneOffJob, this.mVehicleDataManagerProvider.get());
        injectMDongleDataManager(serviceOneOffJob, this.mDongleDataManagerProvider.get());
    }

    public static void injectMNotificationManager(ServiceOneOffJob serviceOneOffJob, NotificationManager notificationManager) {
        serviceOneOffJob.mNotificationManager = notificationManager;
    }

    public static void injectMLoginHelperRx(ServiceOneOffJob serviceOneOffJob, LoginHelperRx loginHelperRx) {
        serviceOneOffJob.mLoginHelperRx = loginHelperRx;
    }

    public static void injectMServiceDataManager(ServiceOneOffJob serviceOneOffJob, ServiceDataManager serviceDataManager) {
        serviceOneOffJob.mServiceDataManager = serviceDataManager;
    }

    public static void injectMTexaCareApiService(ServiceOneOffJob serviceOneOffJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        serviceOneOffJob.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMVehicleDataManager(ServiceOneOffJob serviceOneOffJob, VehicleDataManager vehicleDataManager) {
        serviceOneOffJob.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMDongleDataManager(ServiceOneOffJob serviceOneOffJob, DongleDataManager dongleDataManager) {
        serviceOneOffJob.mDongleDataManager = dongleDataManager;
    }
}
