package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CrashLogJob_MembersInjector implements MembersInjector<CrashLogJob> {
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;

    public CrashLogJob_MembersInjector(Provider<TexaCareApiServiceUser> provider) {
        this.mTexaCareApiServiceProvider = provider;
    }

    public static MembersInjector<CrashLogJob> create(Provider<TexaCareApiServiceUser> provider) {
        return new CrashLogJob_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CrashLogJob crashLogJob) {
        injectMTexaCareApiService(crashLogJob, this.mTexaCareApiServiceProvider.get());
    }

    public static void injectMTexaCareApiService(CrashLogJob crashLogJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        crashLogJob.mTexaCareApiService = texaCareApiServiceUser;
    }
}
