package com.texa.careapp.lamps;

import android.content.SharedPreferences;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.sync.CAReWorkerManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class LampsManager_MembersInjector implements MembersInjector<LampsManager> {
    private final Provider<CAReWorkerManager> mCareWorkerManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;

    public LampsManager_MembersInjector(Provider<LoggerManager> provider, Provider<SharedPreferences> provider2, Provider<CAReWorkerManager> provider3) {
        this.mLoggerManagerProvider = provider;
        this.mSharedPreferencesProvider = provider2;
        this.mCareWorkerManagerProvider = provider3;
    }

    public static MembersInjector<LampsManager> create(Provider<LoggerManager> provider, Provider<SharedPreferences> provider2, Provider<CAReWorkerManager> provider3) {
        return new LampsManager_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(LampsManager lampsManager) {
        injectMLoggerManager(lampsManager, this.mLoggerManagerProvider.get());
        injectMSharedPreferences(lampsManager, this.mSharedPreferencesProvider.get());
        injectMCareWorkerManager(lampsManager, this.mCareWorkerManagerProvider.get());
    }

    public static void injectMLoggerManager(LampsManager lampsManager, LoggerManager loggerManager) {
        lampsManager.mLoggerManager = loggerManager;
    }

    public static void injectMSharedPreferences(LampsManager lampsManager, SharedPreferences sharedPreferences) {
        lampsManager.mSharedPreferences = sharedPreferences;
    }

    public static void injectMCareWorkerManager(LampsManager lampsManager, CAReWorkerManager cAReWorkerManager) {
        lampsManager.mCareWorkerManager = cAReWorkerManager;
    }
}
