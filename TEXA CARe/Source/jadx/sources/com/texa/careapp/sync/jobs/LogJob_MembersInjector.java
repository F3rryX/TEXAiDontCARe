package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareServiceBus;
import com.texa.careapp.utils.LoginHelperRx;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class LogJob_MembersInjector implements MembersInjector<LogJob> {
    private final Provider<LoginHelperRx> mLoginHelperRxProvider;
    private final Provider<TexaCareServiceBus> mTexaCareServiceBusProvider;

    public LogJob_MembersInjector(Provider<LoginHelperRx> provider, Provider<TexaCareServiceBus> provider2) {
        this.mLoginHelperRxProvider = provider;
        this.mTexaCareServiceBusProvider = provider2;
    }

    public static MembersInjector<LogJob> create(Provider<LoginHelperRx> provider, Provider<TexaCareServiceBus> provider2) {
        return new LogJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(LogJob logJob) {
        injectMLoginHelperRx(logJob, this.mLoginHelperRxProvider.get());
        injectMTexaCareServiceBus(logJob, this.mTexaCareServiceBusProvider.get());
    }

    public static void injectMLoginHelperRx(LogJob logJob, LoginHelperRx loginHelperRx) {
        logJob.mLoginHelperRx = loginHelperRx;
    }

    public static void injectMTexaCareServiceBus(LogJob logJob, TexaCareServiceBus texaCareServiceBus) {
        logJob.mTexaCareServiceBus = texaCareServiceBus;
    }
}
