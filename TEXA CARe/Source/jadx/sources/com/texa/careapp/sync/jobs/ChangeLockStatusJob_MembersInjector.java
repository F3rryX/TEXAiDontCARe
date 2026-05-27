package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ChangeLockStatusJob_MembersInjector implements MembersInjector<ChangeLockStatusJob> {
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceUserProvider;

    public ChangeLockStatusJob_MembersInjector(Provider<TexaCareApiServiceUser> provider) {
        this.texaCareApiServiceUserProvider = provider;
    }

    public static MembersInjector<ChangeLockStatusJob> create(Provider<TexaCareApiServiceUser> provider) {
        return new ChangeLockStatusJob_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ChangeLockStatusJob changeLockStatusJob) {
        injectTexaCareApiServiceUser(changeLockStatusJob, this.texaCareApiServiceUserProvider.get());
    }

    public static void injectTexaCareApiServiceUser(ChangeLockStatusJob changeLockStatusJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        changeLockStatusJob.texaCareApiServiceUser = texaCareApiServiceUser;
    }
}
