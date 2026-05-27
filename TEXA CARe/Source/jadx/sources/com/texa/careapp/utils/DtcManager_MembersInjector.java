package com.texa.careapp.utils;

import android.content.SharedPreferences;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class DtcManager_MembersInjector implements MembersInjector<DtcManager> {
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;

    public DtcManager_MembersInjector(Provider<LoggerManager> provider, Provider<SharedPreferences> provider2, Provider<CAReWorkerManager> provider3) {
        this.mLoggerManagerProvider = provider;
        this.mSharedPreferencesProvider = provider2;
        this.mCAReWorkerManagerProvider = provider3;
    }

    public static MembersInjector<DtcManager> create(Provider<LoggerManager> provider, Provider<SharedPreferences> provider2, Provider<CAReWorkerManager> provider3) {
        return new DtcManager_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(DtcManager dtcManager) {
        injectMLoggerManager(dtcManager, this.mLoggerManagerProvider.get());
        injectMSharedPreferences(dtcManager, this.mSharedPreferencesProvider.get());
        injectMCAReWorkerManager(dtcManager, this.mCAReWorkerManagerProvider.get());
    }

    public static void injectMLoggerManager(DtcManager dtcManager, LoggerManager loggerManager) {
        dtcManager.mLoggerManager = loggerManager;
    }

    public static void injectMSharedPreferences(DtcManager dtcManager, SharedPreferences sharedPreferences) {
        dtcManager.mSharedPreferences = sharedPreferences;
    }

    public static void injectMCAReWorkerManager(DtcManager dtcManager, CAReWorkerManager cAReWorkerManager) {
        dtcManager.mCAReWorkerManager = cAReWorkerManager;
    }
}
