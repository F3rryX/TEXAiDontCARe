package com.texa.careapp.utils;

import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.sync.CAReWorkerManager;
import com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class BatteryServiceAnalyzer_MembersInjector implements MembersInjector<BatteryServiceAnalyzer> {
    private final Provider<BatteryAnalyzer> mBatteryAnalyzerProvider;
    private final Provider<CAReWorkerManager> mCAReWorkerManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;

    public BatteryServiceAnalyzer_MembersInjector(Provider<BatteryAnalyzer> provider, Provider<TexaCareApiServiceUser> provider2, Provider<DongleDataManager> provider3, Provider<CAReWorkerManager> provider4) {
        this.mBatteryAnalyzerProvider = provider;
        this.mTexaCareApiServiceUserProvider = provider2;
        this.mDongleDataManagerProvider = provider3;
        this.mCAReWorkerManagerProvider = provider4;
    }

    public static MembersInjector<BatteryServiceAnalyzer> create(Provider<BatteryAnalyzer> provider, Provider<TexaCareApiServiceUser> provider2, Provider<DongleDataManager> provider3, Provider<CAReWorkerManager> provider4) {
        return new BatteryServiceAnalyzer_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(BatteryServiceAnalyzer batteryServiceAnalyzer) {
        injectMBatteryAnalyzer(batteryServiceAnalyzer, this.mBatteryAnalyzerProvider.get());
        injectMTexaCareApiServiceUser(batteryServiceAnalyzer, this.mTexaCareApiServiceUserProvider.get());
        injectMDongleDataManager(batteryServiceAnalyzer, this.mDongleDataManagerProvider.get());
        injectMCAReWorkerManager(batteryServiceAnalyzer, this.mCAReWorkerManagerProvider.get());
    }

    public static void injectMBatteryAnalyzer(BatteryServiceAnalyzer batteryServiceAnalyzer, BatteryAnalyzer batteryAnalyzer) {
        batteryServiceAnalyzer.mBatteryAnalyzer = batteryAnalyzer;
    }

    public static void injectMTexaCareApiServiceUser(BatteryServiceAnalyzer batteryServiceAnalyzer, TexaCareApiServiceUser texaCareApiServiceUser) {
        batteryServiceAnalyzer.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMDongleDataManager(BatteryServiceAnalyzer batteryServiceAnalyzer, DongleDataManager dongleDataManager) {
        batteryServiceAnalyzer.mDongleDataManager = dongleDataManager;
    }

    public static void injectMCAReWorkerManager(BatteryServiceAnalyzer batteryServiceAnalyzer, CAReWorkerManager cAReWorkerManager) {
        batteryServiceAnalyzer.mCAReWorkerManager = cAReWorkerManager;
    }
}
