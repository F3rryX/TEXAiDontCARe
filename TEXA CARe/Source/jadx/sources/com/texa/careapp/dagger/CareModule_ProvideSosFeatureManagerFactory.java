package com.texa.careapp.dagger;

import android.content.SharedPreferences;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.checks.ChecksFactory;
import com.texa.careapp.impactdetection.ImpactDetector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.CrashLogReader;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.care.impacts.ImpactDetection;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideSosFeatureManagerFactory implements Factory<SosFeatureManager> {
    private final Provider<ChecksFactory> checksFactoryProvider;
    private final Provider<CrashLogReader> crashLogReaderProvider;
    private final Provider<DongleDataManager> dongleDataManagerProvider;
    private final Provider<EventBus> eventBusProvider;
    private final Provider<ImpactDetection> impactDetectionProvider;
    private final Provider<ImpactDetector> impactDetectorProvider;
    private final Provider<LoggerManager> loggerManagerProvider;
    private final CareModule module;
    private final Provider<ServiceDataManager> serviceDataManagerProvider;
    private final Provider<SharedPreferences> sharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceProvider;
    private final Provider<UserDataManager> userDataManagerProvider;

    public CareModule_ProvideSosFeatureManagerFactory(CareModule careModule, Provider<UserDataManager> provider, Provider<TexaCareApiServiceUser> provider2, Provider<DongleDataManager> provider3, Provider<ChecksFactory> provider4, Provider<EventBus> provider5, Provider<LoggerManager> provider6, Provider<ImpactDetection> provider7, Provider<ImpactDetector> provider8, Provider<SharedPreferences> provider9, Provider<ServiceDataManager> provider10, Provider<CrashLogReader> provider11) {
        this.module = careModule;
        this.userDataManagerProvider = provider;
        this.texaCareApiServiceProvider = provider2;
        this.dongleDataManagerProvider = provider3;
        this.checksFactoryProvider = provider4;
        this.eventBusProvider = provider5;
        this.loggerManagerProvider = provider6;
        this.impactDetectionProvider = provider7;
        this.impactDetectorProvider = provider8;
        this.sharedPreferencesProvider = provider9;
        this.serviceDataManagerProvider = provider10;
        this.crashLogReaderProvider = provider11;
    }

    @Override // javax.inject.Provider
    public SosFeatureManager get() {
        return provideSosFeatureManager(this.module, this.userDataManagerProvider.get(), this.texaCareApiServiceProvider.get(), this.dongleDataManagerProvider.get(), this.checksFactoryProvider.get(), this.eventBusProvider.get(), this.loggerManagerProvider.get(), this.impactDetectionProvider.get(), this.impactDetectorProvider.get(), this.sharedPreferencesProvider.get(), this.serviceDataManagerProvider.get(), this.crashLogReaderProvider.get());
    }

    public static CareModule_ProvideSosFeatureManagerFactory create(CareModule careModule, Provider<UserDataManager> provider, Provider<TexaCareApiServiceUser> provider2, Provider<DongleDataManager> provider3, Provider<ChecksFactory> provider4, Provider<EventBus> provider5, Provider<LoggerManager> provider6, Provider<ImpactDetection> provider7, Provider<ImpactDetector> provider8, Provider<SharedPreferences> provider9, Provider<ServiceDataManager> provider10, Provider<CrashLogReader> provider11) {
        return new CareModule_ProvideSosFeatureManagerFactory(careModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }

    public static SosFeatureManager provideSosFeatureManager(CareModule careModule, UserDataManager userDataManager, TexaCareApiServiceUser texaCareApiServiceUser, DongleDataManager dongleDataManager, ChecksFactory checksFactory, EventBus eventBus, LoggerManager loggerManager, ImpactDetection impactDetection, ImpactDetector impactDetector, SharedPreferences sharedPreferences, ServiceDataManager serviceDataManager, CrashLogReader crashLogReader) {
        return (SosFeatureManager) Preconditions.checkNotNullFromProvides(careModule.provideSosFeatureManager(userDataManager, texaCareApiServiceUser, dongleDataManager, checksFactory, eventBus, loggerManager, impactDetection, impactDetector, sharedPreferences, serviceDataManager, crashLogReader));
    }
}
