package com.texa.careapp.app.onboarding;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleObserver;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.communication.Communication;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class OnBoardingActivity_MembersInjector implements MembersInjector<OnBoardingActivity> {
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DiagnosticConfiguration> mDiagnosticConfigurationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider2;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;
    private final Provider<VehicleParametersManagerV2> mVehicleParametersManagerV2Provider;

    public OnBoardingActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<DiagnosticConfiguration> provider7, Provider<EventBus> provider8, Provider<Communication> provider9, Provider<DongleDataManager> provider10, Provider<VehicleParametersManagerV2> provider11, Provider<VehicleObserver> provider12, Provider<CommunicationObservable> provider13) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mDiagnosticConfigurationProvider = provider7;
        this.mEventBusProvider = provider8;
        this.mCommunicationProvider = provider9;
        this.mDongleDataManagerProvider2 = provider10;
        this.mVehicleParametersManagerV2Provider = provider11;
        this.mVehicleObserverProvider = provider12;
        this.mCommunicationObservableProvider = provider13;
    }

    public static MembersInjector<OnBoardingActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<DiagnosticConfiguration> provider7, Provider<EventBus> provider8, Provider<Communication> provider9, Provider<DongleDataManager> provider10, Provider<VehicleParametersManagerV2> provider11, Provider<VehicleObserver> provider12, Provider<CommunicationObservable> provider13) {
        return new OnBoardingActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(OnBoardingActivity onBoardingActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(onBoardingActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(onBoardingActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(onBoardingActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(onBoardingActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(onBoardingActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(onBoardingActivity, this.mLocalBroadcastManagerProvider.get());
        injectMDiagnosticConfiguration(onBoardingActivity, this.mDiagnosticConfigurationProvider.get());
        injectMEventBus(onBoardingActivity, this.mEventBusProvider.get());
        injectMCommunication(onBoardingActivity, this.mCommunicationProvider.get());
        injectMDongleDataManager(onBoardingActivity, this.mDongleDataManagerProvider2.get());
        injectMVehicleParametersManagerV2(onBoardingActivity, this.mVehicleParametersManagerV2Provider.get());
        injectMVehicleObserver(onBoardingActivity, this.mVehicleObserverProvider.get());
        injectMCommunicationObservable(onBoardingActivity, this.mCommunicationObservableProvider.get());
    }

    public static void injectMDiagnosticConfiguration(OnBoardingActivity onBoardingActivity, DiagnosticConfiguration diagnosticConfiguration) {
        onBoardingActivity.mDiagnosticConfiguration = diagnosticConfiguration;
    }

    public static void injectMEventBus(OnBoardingActivity onBoardingActivity, EventBus eventBus) {
        onBoardingActivity.mEventBus = eventBus;
    }

    public static void injectMCommunication(OnBoardingActivity onBoardingActivity, Communication communication) {
        onBoardingActivity.mCommunication = communication;
    }

    public static void injectMDongleDataManager(OnBoardingActivity onBoardingActivity, DongleDataManager dongleDataManager) {
        onBoardingActivity.mDongleDataManager = dongleDataManager;
    }

    public static void injectMVehicleParametersManagerV2(OnBoardingActivity onBoardingActivity, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        onBoardingActivity.mVehicleParametersManagerV2 = vehicleParametersManagerV2;
    }

    public static void injectMVehicleObserver(OnBoardingActivity onBoardingActivity, VehicleObserver vehicleObserver) {
        onBoardingActivity.mVehicleObserver = vehicleObserver;
    }

    public static void injectMCommunicationObservable(OnBoardingActivity onBoardingActivity, CommunicationObservable communicationObservable) {
        onBoardingActivity.mCommunicationObservable = communicationObservable;
    }
}
