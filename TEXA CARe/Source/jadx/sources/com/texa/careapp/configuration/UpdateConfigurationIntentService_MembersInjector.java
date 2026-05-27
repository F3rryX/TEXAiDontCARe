package com.texa.careapp.configuration;

import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.webservices.TexaService;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class UpdateConfigurationIntentService_MembersInjector implements MembersInjector<UpdateConfigurationIntentService> {
    private final Provider<ICareObserver> mCareObserverProvider;
    private final Provider<DiagnosticConfiguration> mDiagnosticConfigurationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<TexaService> mTexaServiceProvider;

    public UpdateConfigurationIntentService_MembersInjector(Provider<Profile> provider, Provider<DiagnosticConfiguration> provider2, Provider<TexaService> provider3, Provider<ICareObserver> provider4, Provider<DongleDataManager> provider5, Provider<EventBus> provider6, Provider<LoggerManager> provider7) {
        this.mProfileProvider = provider;
        this.mDiagnosticConfigurationProvider = provider2;
        this.mTexaServiceProvider = provider3;
        this.mCareObserverProvider = provider4;
        this.mDongleDataManagerProvider = provider5;
        this.mEventBusProvider = provider6;
        this.mLoggerManagerProvider = provider7;
    }

    public static MembersInjector<UpdateConfigurationIntentService> create(Provider<Profile> provider, Provider<DiagnosticConfiguration> provider2, Provider<TexaService> provider3, Provider<ICareObserver> provider4, Provider<DongleDataManager> provider5, Provider<EventBus> provider6, Provider<LoggerManager> provider7) {
        return new UpdateConfigurationIntentService_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(UpdateConfigurationIntentService updateConfigurationIntentService) {
        injectMProfile(updateConfigurationIntentService, this.mProfileProvider.get());
        injectMDiagnosticConfiguration(updateConfigurationIntentService, this.mDiagnosticConfigurationProvider.get());
        injectMTexaService(updateConfigurationIntentService, this.mTexaServiceProvider.get());
        injectMCareObserver(updateConfigurationIntentService, this.mCareObserverProvider.get());
        injectMDongleDataManager(updateConfigurationIntentService, this.mDongleDataManagerProvider.get());
        injectMEventBus(updateConfigurationIntentService, this.mEventBusProvider.get());
        injectMLoggerManager(updateConfigurationIntentService, this.mLoggerManagerProvider.get());
    }

    public static void injectMProfile(UpdateConfigurationIntentService updateConfigurationIntentService, Profile profile) {
        updateConfigurationIntentService.mProfile = profile;
    }

    public static void injectMDiagnosticConfiguration(UpdateConfigurationIntentService updateConfigurationIntentService, DiagnosticConfiguration diagnosticConfiguration) {
        updateConfigurationIntentService.mDiagnosticConfiguration = diagnosticConfiguration;
    }

    public static void injectMTexaService(UpdateConfigurationIntentService updateConfigurationIntentService, TexaService texaService) {
        updateConfigurationIntentService.mTexaService = texaService;
    }

    public static void injectMCareObserver(UpdateConfigurationIntentService updateConfigurationIntentService, ICareObserver iCareObserver) {
        updateConfigurationIntentService.mCareObserver = iCareObserver;
    }

    public static void injectMDongleDataManager(UpdateConfigurationIntentService updateConfigurationIntentService, DongleDataManager dongleDataManager) {
        updateConfigurationIntentService.mDongleDataManager = dongleDataManager;
    }

    public static void injectMEventBus(UpdateConfigurationIntentService updateConfigurationIntentService, EventBus eventBus) {
        updateConfigurationIntentService.mEventBus = eventBus;
    }

    public static void injectMLoggerManager(UpdateConfigurationIntentService updateConfigurationIntentService, LoggerManager loggerManager) {
        updateConfigurationIntentService.mLoggerManager = loggerManager;
    }
}
