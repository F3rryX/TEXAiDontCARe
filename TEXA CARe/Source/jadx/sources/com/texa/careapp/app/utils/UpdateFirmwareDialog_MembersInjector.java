package com.texa.careapp.app.utils;

import com.texa.careapp.app.update.FirmwareUpdateController;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.webservices.TexaService;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class UpdateFirmwareDialog_MembersInjector implements MembersInjector<UpdateFirmwareDialog> {
    private final Provider<Accessory> mAccessoryProvider;
    private final Provider<ICareObserver> mCareObserverProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<FirmwareUpdateController> mFirmwareUpdateControllerProvider;
    private final Provider<TexaService> mTexaServiceProvider;

    public UpdateFirmwareDialog_MembersInjector(Provider<ICareObserver> provider, Provider<DongleDataManager> provider2, Provider<TexaService> provider3, Provider<FirmwareUpdateController> provider4, Provider<Accessory> provider5) {
        this.mCareObserverProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mTexaServiceProvider = provider3;
        this.mFirmwareUpdateControllerProvider = provider4;
        this.mAccessoryProvider = provider5;
    }

    public static MembersInjector<UpdateFirmwareDialog> create(Provider<ICareObserver> provider, Provider<DongleDataManager> provider2, Provider<TexaService> provider3, Provider<FirmwareUpdateController> provider4, Provider<Accessory> provider5) {
        return new UpdateFirmwareDialog_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(UpdateFirmwareDialog updateFirmwareDialog) {
        injectMCareObserver(updateFirmwareDialog, this.mCareObserverProvider.get());
        injectMDongleDataManager(updateFirmwareDialog, this.mDongleDataManagerProvider.get());
        injectMTexaService(updateFirmwareDialog, this.mTexaServiceProvider.get());
        injectMFirmwareUpdateController(updateFirmwareDialog, this.mFirmwareUpdateControllerProvider.get());
        injectMAccessory(updateFirmwareDialog, this.mAccessoryProvider.get());
    }

    public static void injectMCareObserver(UpdateFirmwareDialog updateFirmwareDialog, ICareObserver iCareObserver) {
        updateFirmwareDialog.mCareObserver = iCareObserver;
    }

    public static void injectMDongleDataManager(UpdateFirmwareDialog updateFirmwareDialog, DongleDataManager dongleDataManager) {
        updateFirmwareDialog.mDongleDataManager = dongleDataManager;
    }

    public static void injectMTexaService(UpdateFirmwareDialog updateFirmwareDialog, TexaService texaService) {
        updateFirmwareDialog.mTexaService = texaService;
    }

    public static void injectMFirmwareUpdateController(UpdateFirmwareDialog updateFirmwareDialog, FirmwareUpdateController firmwareUpdateController) {
        updateFirmwareDialog.mFirmwareUpdateController = firmwareUpdateController;
    }

    public static void injectMAccessory(UpdateFirmwareDialog updateFirmwareDialog, Accessory accessory) {
        updateFirmwareDialog.mAccessory = accessory;
    }
}
