package com.texa.careapp.app.settings.vehicle;

import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingsVehicleScreen_MembersInjector implements MembersInjector<SettingsVehicleScreen> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleParametersManagerV2> mVehicleParametersManagerV2Provider;

    public SettingsVehicleScreen_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<DongleDataManager> provider2, Provider<VehicleDataManager> provider3, Provider<Communication> provider4, Provider<CAReWorkerManager> provider5, Provider<VehicleParametersManagerV2> provider6) {
        this.mTexaCareApiServiceUserProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mVehicleDataManagerProvider = provider3;
        this.mCommunicationProvider = provider4;
        this.mCAReWorkerManagerProvider = provider5;
        this.mVehicleParametersManagerV2Provider = provider6;
    }

    public static MembersInjector<SettingsVehicleScreen> create(Provider<TexaCareApiServiceUser> provider, Provider<DongleDataManager> provider2, Provider<VehicleDataManager> provider3, Provider<Communication> provider4, Provider<CAReWorkerManager> provider5, Provider<VehicleParametersManagerV2> provider6) {
        return new SettingsVehicleScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SettingsVehicleScreen settingsVehicleScreen) {
        injectMTexaCareApiServiceUser(settingsVehicleScreen, this.mTexaCareApiServiceUserProvider.get());
        injectMDongleDataManager(settingsVehicleScreen, this.mDongleDataManagerProvider.get());
        injectMVehicleDataManager(settingsVehicleScreen, this.mVehicleDataManagerProvider.get());
        injectMCommunication(settingsVehicleScreen, this.mCommunicationProvider.get());
        injectMCAReWorkerManager(settingsVehicleScreen, this.mCAReWorkerManagerProvider.get());
        injectMVehicleParametersManagerV2(settingsVehicleScreen, this.mVehicleParametersManagerV2Provider.get());
    }

    public static void injectMTexaCareApiServiceUser(SettingsVehicleScreen settingsVehicleScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        settingsVehicleScreen.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMDongleDataManager(SettingsVehicleScreen settingsVehicleScreen, DongleDataManager dongleDataManager) {
        settingsVehicleScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMVehicleDataManager(SettingsVehicleScreen settingsVehicleScreen, VehicleDataManager vehicleDataManager) {
        settingsVehicleScreen.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMCommunication(SettingsVehicleScreen settingsVehicleScreen, Communication communication) {
        settingsVehicleScreen.mCommunication = communication;
    }

    public static void injectMCAReWorkerManager(SettingsVehicleScreen settingsVehicleScreen, CAReWorkerManager cAReWorkerManager) {
        settingsVehicleScreen.mCAReWorkerManager = cAReWorkerManager;
    }

    public static void injectMVehicleParametersManagerV2(SettingsVehicleScreen settingsVehicleScreen, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        settingsVehicleScreen.mVehicleParametersManagerV2 = vehicleParametersManagerV2;
    }
}
