package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.LoginHelperRx;
import com.texa.careapp.utils.ServiceDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class PeriodicTaskJob_MembersInjector implements MembersInjector<PeriodicTaskJob> {
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;

    public PeriodicTaskJob_MembersInjector(Provider<LoginHelperRx> provider, Provider<TexaCareApiServiceUser> provider2, Provider<ServiceDataManager> provider3) {
        this.mLoginHelperRxProvider = provider;
        this.mTexaCareApiServiceProvider = provider2;
        this.mServiceDataManagerProvider = provider3;
    }

    public static MembersInjector<PeriodicTaskJob> create(Provider<LoginHelperRx> provider, Provider<TexaCareApiServiceUser> provider2, Provider<ServiceDataManager> provider3) {
        return new PeriodicTaskJob_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(PeriodicTaskJob periodicTaskJob) {
        injectMLoginHelperRx(periodicTaskJob, this.mLoginHelperRxProvider.get());
        injectMTexaCareApiService(periodicTaskJob, this.mTexaCareApiServiceProvider.get());
        injectMServiceDataManager(periodicTaskJob, this.mServiceDataManagerProvider.get());
    }

    public static void injectMLoginHelperRx(PeriodicTaskJob periodicTaskJob, LoginHelperRx loginHelperRx) {
        periodicTaskJob.mLoginHelperRx = loginHelperRx;
    }

    public static void injectMTexaCareApiService(PeriodicTaskJob periodicTaskJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        periodicTaskJob.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMServiceDataManager(PeriodicTaskJob periodicTaskJob, ServiceDataManager serviceDataManager) {
        periodicTaskJob.mServiceDataManager = serviceDataManager;
    }
}
