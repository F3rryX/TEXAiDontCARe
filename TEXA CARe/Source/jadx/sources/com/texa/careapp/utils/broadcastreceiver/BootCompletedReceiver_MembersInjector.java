package com.texa.careapp.utils.broadcastreceiver;

import android.content.SharedPreferences;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class BootCompletedReceiver_MembersInjector implements MembersInjector<BootCompletedReceiver> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<SharedPreferences> mPrefsProvider;

    public BootCompletedReceiver_MembersInjector(Provider<LoggerManager> provider, Provider<SharedPreferences> provider2, Provider<DongleDataManager> provider3) {
        this.mLoggerManagerProvider = provider;
        this.mPrefsProvider = provider2;
        this.mDongleDataManagerProvider = provider3;
    }

    public static MembersInjector<BootCompletedReceiver> create(Provider<LoggerManager> provider, Provider<SharedPreferences> provider2, Provider<DongleDataManager> provider3) {
        return new BootCompletedReceiver_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(BootCompletedReceiver bootCompletedReceiver) {
        injectMLoggerManager(bootCompletedReceiver, this.mLoggerManagerProvider.get());
        injectMPrefs(bootCompletedReceiver, this.mPrefsProvider.get());
        injectMDongleDataManager(bootCompletedReceiver, this.mDongleDataManagerProvider.get());
    }

    public static void injectMLoggerManager(BootCompletedReceiver bootCompletedReceiver, LoggerManager loggerManager) {
        bootCompletedReceiver.mLoggerManager = loggerManager;
    }

    public static void injectMPrefs(BootCompletedReceiver bootCompletedReceiver, SharedPreferences sharedPreferences) {
        bootCompletedReceiver.mPrefs = sharedPreferences;
    }

    public static void injectMDongleDataManager(BootCompletedReceiver bootCompletedReceiver, DongleDataManager dongleDataManager) {
        bootCompletedReceiver.mDongleDataManager = dongleDataManager;
    }
}
