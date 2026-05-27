package com.texa.careapp.app.diagnosis;

import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.utils.PercentColorHelper;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class DiagnosisScreen_MembersInjector implements MembersInjector<DiagnosisScreen> {
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LampsManager> mLampsManagerProvider;
    private final Provider<PercentColorHelper> mPercentColorHelperProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;
    private final Provider<VehicleParametersManagerV2> vehicleParametersManagerProvider;

    public DiagnosisScreen_MembersInjector(Provider<DongleDataManager> provider, Provider<PercentColorHelper> provider2, Provider<CommunicationObservable> provider3, Provider<LampsManager> provider4, Provider<VehicleParametersManagerV2> provider5, Provider<VehicleObserver> provider6) {
        this.mDongleDataManagerProvider = provider;
        this.mPercentColorHelperProvider = provider2;
        this.mCommunicationObservableProvider = provider3;
        this.mLampsManagerProvider = provider4;
        this.vehicleParametersManagerProvider = provider5;
        this.mVehicleObserverProvider = provider6;
    }

    public static MembersInjector<DiagnosisScreen> create(Provider<DongleDataManager> provider, Provider<PercentColorHelper> provider2, Provider<CommunicationObservable> provider3, Provider<LampsManager> provider4, Provider<VehicleParametersManagerV2> provider5, Provider<VehicleObserver> provider6) {
        return new DiagnosisScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(DiagnosisScreen diagnosisScreen) {
        injectMDongleDataManager(diagnosisScreen, this.mDongleDataManagerProvider.get());
        injectMPercentColorHelper(diagnosisScreen, this.mPercentColorHelperProvider.get());
        injectMCommunicationObservable(diagnosisScreen, this.mCommunicationObservableProvider.get());
        injectMLampsManager(diagnosisScreen, this.mLampsManagerProvider.get());
        injectVehicleParametersManager(diagnosisScreen, this.vehicleParametersManagerProvider.get());
        injectMVehicleObserver(diagnosisScreen, this.mVehicleObserverProvider.get());
    }

    public static void injectMDongleDataManager(DiagnosisScreen diagnosisScreen, DongleDataManager dongleDataManager) {
        diagnosisScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMPercentColorHelper(DiagnosisScreen diagnosisScreen, PercentColorHelper percentColorHelper) {
        diagnosisScreen.mPercentColorHelper = percentColorHelper;
    }

    public static void injectMCommunicationObservable(DiagnosisScreen diagnosisScreen, CommunicationObservable communicationObservable) {
        diagnosisScreen.mCommunicationObservable = communicationObservable;
    }

    public static void injectMLampsManager(DiagnosisScreen diagnosisScreen, LampsManager lampsManager) {
        diagnosisScreen.mLampsManager = lampsManager;
    }

    public static void injectVehicleParametersManager(DiagnosisScreen diagnosisScreen, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        diagnosisScreen.vehicleParametersManager = vehicleParametersManagerV2;
    }

    public static void injectMVehicleObserver(DiagnosisScreen diagnosisScreen, VehicleObserver vehicleObserver) {
        diagnosisScreen.mVehicleObserver = vehicleObserver;
    }
}
