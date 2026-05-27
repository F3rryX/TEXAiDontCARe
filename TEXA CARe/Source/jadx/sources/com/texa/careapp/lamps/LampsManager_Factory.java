package com.texa.careapp.lamps;

import android.content.Context;
import android.content.SharedPreferences;
import com.texa.careapp.parameters.VehicleParametersManagerV2;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.careapp.utils.DtcManager;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class LampsManager_Factory implements Factory<LampsManager> {
    private final Provider<Context> contextProvider;
    private final Provider<DtcManager> dtcManagerProvider;
    private final Provider<CAReWorkerManager> mCareWorkerManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<VehicleParametersManagerV2> vehicleParametersManagerV2Provider;

    public LampsManager_Factory(Provider<Context> provider, Provider<DtcManager> provider2, Provider<VehicleParametersManagerV2> provider3, Provider<LoggerManager> provider4, Provider<SharedPreferences> provider5, Provider<CAReWorkerManager> provider6) {
        this.contextProvider = provider;
        this.dtcManagerProvider = provider2;
        this.vehicleParametersManagerV2Provider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mSharedPreferencesProvider = provider5;
        this.mCareWorkerManagerProvider = provider6;
    }

    @Override // javax.inject.Provider
    public LampsManager get() {
        LampsManager lampsManagerNewInstance = newInstance(this.contextProvider.get(), this.dtcManagerProvider.get(), this.vehicleParametersManagerV2Provider.get());
        LampsManager_MembersInjector.injectMLoggerManager(lampsManagerNewInstance, this.mLoggerManagerProvider.get());
        LampsManager_MembersInjector.injectMSharedPreferences(lampsManagerNewInstance, this.mSharedPreferencesProvider.get());
        LampsManager_MembersInjector.injectMCareWorkerManager(lampsManagerNewInstance, this.mCareWorkerManagerProvider.get());
        return lampsManagerNewInstance;
    }

    public static LampsManager_Factory create(Provider<Context> provider, Provider<DtcManager> provider2, Provider<VehicleParametersManagerV2> provider3, Provider<LoggerManager> provider4, Provider<SharedPreferences> provider5, Provider<CAReWorkerManager> provider6) {
        return new LampsManager_Factory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static LampsManager newInstance(Context context, DtcManager dtcManager, VehicleParametersManagerV2 vehicleParametersManagerV2) {
        return new LampsManager(context, dtcManager, vehicleParametersManagerV2);
    }
}
