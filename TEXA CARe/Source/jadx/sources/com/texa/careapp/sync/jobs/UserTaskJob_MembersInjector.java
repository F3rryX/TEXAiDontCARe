package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.UserDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class UserTaskJob_MembersInjector implements MembersInjector<UserTaskJob> {
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceUserProvider;

    public UserTaskJob_MembersInjector(Provider<UserDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        this.mUserDataManagerProvider = provider;
        this.texaCareApiServiceUserProvider = provider2;
    }

    public static MembersInjector<UserTaskJob> create(Provider<UserDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        return new UserTaskJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(UserTaskJob userTaskJob) {
        injectMUserDataManager(userTaskJob, this.mUserDataManagerProvider.get());
        injectTexaCareApiServiceUser(userTaskJob, this.texaCareApiServiceUserProvider.get());
    }

    public static void injectMUserDataManager(UserTaskJob userTaskJob, UserDataManager userDataManager) {
        userTaskJob.mUserDataManager = userDataManager;
    }

    public static void injectTexaCareApiServiceUser(UserTaskJob userTaskJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        userTaskJob.texaCareApiServiceUser = texaCareApiServiceUser;
    }
}
