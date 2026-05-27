package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class BatteryAnalyzerJob_MembersInjector implements MembersInjector<BatteryAnalyzerJob> {
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;

    public BatteryAnalyzerJob_MembersInjector(Provider<TexaCareApiServiceUser> provider) {
        this.mTexaCareApiServiceProvider = provider;
    }

    public static MembersInjector<BatteryAnalyzerJob> create(Provider<TexaCareApiServiceUser> provider) {
        return new BatteryAnalyzerJob_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(BatteryAnalyzerJob batteryAnalyzerJob) {
        injectMTexaCareApiService(batteryAnalyzerJob, this.mTexaCareApiServiceProvider.get());
    }

    public static void injectMTexaCareApiService(BatteryAnalyzerJob batteryAnalyzerJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        batteryAnalyzerJob.mTexaCareApiService = texaCareApiServiceUser;
    }
}
