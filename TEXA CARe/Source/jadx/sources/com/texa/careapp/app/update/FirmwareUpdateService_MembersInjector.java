package com.texa.careapp.app.update;

import com.texa.careapp.app.service.RxCareService_MembersInjector;
import com.texa.careapp.app.service.ServiceNotificationController;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.utils.wakelock.WakelockManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.trips.CurrentTrip;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.webservices.TexaService;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class FirmwareUpdateService_MembersInjector implements MembersInjector<FirmwareUpdateService> {
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<Accessory> mAccessoryProvider2;
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<CurrentTrip> mCurrentTripProvider;
    private final Provider<FirmwareUpdateController> mFirmwareUpdateControllerProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<ServiceNotificationController> mServiceNotificationControllerProvider;
    private final Provider<TexaService> mTexaServiceProvider;
    private final Provider<WakelockManager> mWakelockManagerProvider;

    public FirmwareUpdateService_MembersInjector(Provider<CurrentTrip> provider, Provider<Accessory> provider2, Provider<CommunicationObservable> provider3, Provider<Communication> provider4, Provider<TexaService> provider5, Provider<FirmwareUpdateController> provider6, Provider<WakelockManager> provider7, Provider<ServiceNotificationController> provider8, Provider<Accessory> provider9, Provider<Profile> provider10) {
        this.mCurrentTripProvider = provider;
        this.mAccessoryProvider = provider2;
        this.mCommunicationObservableProvider = provider3;
        this.mCommunicationProvider = provider4;
        this.mTexaServiceProvider = provider5;
        this.mFirmwareUpdateControllerProvider = provider6;
        this.mWakelockManagerProvider = provider7;
        this.mServiceNotificationControllerProvider = provider8;
        this.mAccessoryProvider2 = provider9;
        this.mProfileProvider = provider10;
    }

    public static MembersInjector<FirmwareUpdateService> create(Provider<CurrentTrip> provider, Provider<Accessory> provider2, Provider<CommunicationObservable> provider3, Provider<Communication> provider4, Provider<TexaService> provider5, Provider<FirmwareUpdateController> provider6, Provider<WakelockManager> provider7, Provider<ServiceNotificationController> provider8, Provider<Accessory> provider9, Provider<Profile> provider10) {
        return new FirmwareUpdateService_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(FirmwareUpdateService firmwareUpdateService) {
        RxCareService_MembersInjector.injectMCurrentTrip(firmwareUpdateService, this.mCurrentTripProvider.get());
        RxCareService_MembersInjector.injectMAccessory(firmwareUpdateService, this.mAccessoryProvider.get());
        RxCareService_MembersInjector.injectMCommunicationObservable(firmwareUpdateService, this.mCommunicationObservableProvider.get());
        RxCareService_MembersInjector.injectMCommunication(firmwareUpdateService, this.mCommunicationProvider.get());
        injectMTexaService(firmwareUpdateService, this.mTexaServiceProvider.get());
        injectMFirmwareUpdateController(firmwareUpdateService, this.mFirmwareUpdateControllerProvider.get());
        injectMWakelockManager(firmwareUpdateService, this.mWakelockManagerProvider.get());
        injectMServiceNotificationController(firmwareUpdateService, this.mServiceNotificationControllerProvider.get());
        injectMAccessory(firmwareUpdateService, this.mAccessoryProvider2.get());
        injectMProfile(firmwareUpdateService, this.mProfileProvider.get());
    }

    public static void injectMTexaService(FirmwareUpdateService firmwareUpdateService, TexaService texaService) {
        firmwareUpdateService.mTexaService = texaService;
    }

    public static void injectMFirmwareUpdateController(FirmwareUpdateService firmwareUpdateService, FirmwareUpdateController firmwareUpdateController) {
        firmwareUpdateService.mFirmwareUpdateController = firmwareUpdateController;
    }

    public static void injectMWakelockManager(FirmwareUpdateService firmwareUpdateService, WakelockManager wakelockManager) {
        firmwareUpdateService.mWakelockManager = wakelockManager;
    }

    public static void injectMServiceNotificationController(FirmwareUpdateService firmwareUpdateService, ServiceNotificationController serviceNotificationController) {
        firmwareUpdateService.mServiceNotificationController = serviceNotificationController;
    }

    public static void injectMAccessory(FirmwareUpdateService firmwareUpdateService, Accessory accessory) {
        firmwareUpdateService.mAccessory = accessory;
    }

    public static void injectMProfile(FirmwareUpdateService firmwareUpdateService, Profile profile) {
        firmwareUpdateService.mProfile = profile;
    }
}
