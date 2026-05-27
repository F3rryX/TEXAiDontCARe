package com.texa.careapp.app.dashboard;

import android.content.Context;
import android.content.SharedPreferences;
import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.carelib.CommunicationObservable;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.PercentColorHelper;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class DashboardScreenV2_MembersInjector implements MembersInjector<DashboardScreenV2> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<ICareObserver> mCareObserverProvider;
    private final Provider<CommunicationObservable> mCommunicationObservableProvider;
    private final Provider<Context> mContextProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<FlavorDelegator> mFlavorDelegatorProvider;
    private final Provider<LampsManager> mLampsManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<PercentColorHelper> mPercentColorHelperProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<SosFeatureManager> mSosFeatureManagerProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;
    private final Provider<VehicleParametersManagerV2> mVehicleParametersManagerV2Provider;

    public DashboardScreenV2_MembersInjector(Provider<CommunicationObservable> provider, Provider<ICareObserver> provider2, Provider<LampsManager> provider3, Provider<SharedPreferences> provider4, Provider<UserDataManager> provider5, Provider<FlavorDelegator> provider6, Provider<DongleDataManager> provider7, Provider<Context> provider8, Provider<EventBus> provider9, Provider<TexaCareApiServiceUser> provider10, Provider<VehicleDataManager> provider11, Provider<VehicleObserver> provider12, Provider<VehicleParametersManagerV2> provider13, Provider<LoggerManager> provider14, Provider<SosFeatureManager> provider15, Provider<PercentColorHelper> provider16, Provider<CAReWorkerManager> provider17) {
        this.mCommunicationObservableProvider = provider;
        this.mCareObserverProvider = provider2;
        this.mLampsManagerProvider = provider3;
        this.mSharedPreferencesProvider = provider4;
        this.mUserDataManagerProvider = provider5;
        this.mFlavorDelegatorProvider = provider6;
        this.mDongleDataManagerProvider = provider7;
        this.mContextProvider = provider8;
        this.mEventBusProvider = provider9;
        this.mTexaCareApiServiceProvider = provider10;
        this.mVehicleDataManagerProvider = provider11;
        this.mVehicleObserverProvider = provider12;
        this.mVehicleParametersManagerV2Provider = provider13;
        this.mLoggerManagerProvider = provider14;
        this.mSosFeatureManagerProvider = provider15;
        this.mPercentColorHelperProvider = provider16;
        this.mCAReWorkerManagerProvider = provider17;
    }

    public static MembersInjector<DashboardScreenV2> create(Provider<CommunicationObservable> provider, Provider<ICareObserver> provider2, Provider<LampsManager> provider3, Provider<SharedPreferences> provider4, Provider<UserDataManager> provider5, Provider<FlavorDelegator> provider6, Provider<DongleDataManager> provider7, Provider<Context> provider8, Provider<EventBus> provider9, Provider<TexaCareApiServiceUser> provider10, Provider<VehicleDataManager> provider11, Provider<VehicleObserver> provider12, Provider<VehicleParametersManagerV2> provider13, Provider<LoggerManager> provider14, Provider<SosFeatureManager> provider15, Provider<PercentColorHelper> provider16, Provider<CAReWorkerManager> provider17) {
        return new DashboardScreenV2_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13, provider14, provider15, provider16, provider17);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(DashboardScreenV2 dashboardScreenV2) {
        injectMCommunicationObservable(dashboardScreenV2, this.mCommunicationObservableProvider.get());
        injectMCareObserver(dashboardScreenV2, this.mCareObserverProvider.get());
        injectMLampsManager(dashboardScreenV2, this.mLampsManagerProvider.get());
        injectMSharedPreferences(dashboardScreenV2, this.mSharedPreferencesProvider.get());
        injectMUserDataManager(dashboardScreenV2, this.mUserDataManagerProvider.get());
        injectMFlavorDelegator(dashboardScreenV2, this.mFlavorDelegatorProvider.get());
        injectMDongleDataManager(dashboardScreenV2, this.mDongleDataManagerProvider.get());
        injectMContext(dashboardScreenV2, this.mContextProvider.get());
        injectMEventBus(dashboardScreenV2, this.mEventBusProvider.get());
        injectMTexaCareApiService(dashboardScreenV2, this.mTexaCareApiServiceProvider.get());
        injectMVehicleDataManager(dashboardScreenV2, this.mVehicleDataManagerProvider.get());
        injectMVehicleObserver(dashboardScreenV2, this.mVehicleObserverProvider.get());
        injectMVehicleParametersManagerV2(dashboardScreenV2, this.mVehicleParametersManagerV2Provider.get());
        injectMLoggerManager(dashboardScreenV2, this.mLoggerManagerProvider.get());
        injectMSosFeatureManager(dashboardScreenV2, this.mSosFeatureManagerProvider.get());
        injectMPercentColorHelper(dashboardScreenV2, this.mPercentColorHelperProvider.get());
        injectMCAReWorkerManager(dashboardScreenV2, this.mCAReWorkerManagerProvider.get());
    }

    public static void injectMCommunicationObservable(DashboardScreenV2 dashboardScreenV2, CommunicationObservable communicationObservable) {
        dashboardScreenV2.mCommunicationObservable = communicationObservable;
    }

    public static void injectMCareObserver(DashboardScreenV2 dashboardScreenV2, ICareObserver iCareObserver) {
        dashboardScreenV2.mCareObserver = iCareObserver;
    }

    public static void injectMLampsManager(DashboardScreenV2 dashboardScreenV2, LampsManager lampsManager) {
        dashboardScreenV2.mLampsManager = lampsManager;
    }

    public static void injectMSharedPreferences(DashboardScreenV2 dashboardScreenV2, SharedPreferences sharedPreferences) {
        dashboardScreenV2.mSharedPreferences = sharedPreferences;
    }

    public static void injectMUserDataManager(DashboardScreenV2 dashboardScreenV2, UserDataManager userDataManager) {
        dashboardScreenV2.mUserDataManager = userDataManager;
    }

    public static void injectMFlavorDelegator(DashboardScreenV2 dashboardScreenV2, FlavorDelegator flavorDelegator) {
        dashboardScreenV2.mFlavorDelegator = flavorDelegator;
    }

    public static void injectMDongleDataManager(DashboardScreenV2 dashboardScreenV2, DongleDataManager dongleDataManager) {
        dashboardScreenV2.mDongleDataManager = dongleDataManager;
    }

    public static void injectMContext(DashboardScreenV2 dashboardScreenV2, Context context) {
        dashboardScreenV2.mContext = context;
    }

    public static void injectMEventBus(DashboardScreenV2 dashboardScreenV2, EventBus eventBus) {
        dashboardScreenV2.mEventBus = eventBus;
    }

    public static void injectMTexaCareApiService(DashboardScreenV2 dashboardScreenV2, TexaCareApiServiceUser texaCareApiServiceUser) {
        dashboardScreenV2.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMVehicleDataManager(DashboardScreenV2 dashboardScreenV2, VehicleDataManager vehicleDataManager) {
        dashboardScreenV2.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMVehicleObserver(DashboardScreenV2 dashboardScreenV2, VehicleObserver vehicleObserver) {
        dashboardScreenV2.mVehicleObserver = vehicleObserver;
    }

    public static void injectMVehicleParametersManagerV2(DashboardScreenV2 dashboardScreenV2, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        dashboardScreenV2.mVehicleParametersManagerV2 = vehicleParametersManagerV2;
    }

    public static void injectMLoggerManager(DashboardScreenV2 dashboardScreenV2, LoggerManager loggerManager) {
        dashboardScreenV2.mLoggerManager = loggerManager;
    }

    public static void injectMSosFeatureManager(DashboardScreenV2 dashboardScreenV2, SosFeatureManager sosFeatureManager) {
        dashboardScreenV2.mSosFeatureManager = sosFeatureManager;
    }

    public static void injectMPercentColorHelper(DashboardScreenV2 dashboardScreenV2, PercentColorHelper percentColorHelper) {
        dashboardScreenV2.mPercentColorHelper = percentColorHelper;
    }

    public static void injectMCAReWorkerManager(DashboardScreenV2 dashboardScreenV2, CAReWorkerManager cAReWorkerManager) {
        dashboardScreenV2.mCAReWorkerManager = cAReWorkerManager;
    }
}
