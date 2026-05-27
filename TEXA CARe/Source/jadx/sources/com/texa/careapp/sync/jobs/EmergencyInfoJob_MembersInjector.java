package com.texa.careapp.sync.jobs;

import android.content.SharedPreferences;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EmergencyInfoJob_MembersInjector implements MembersInjector<EmergencyInfoJob> {
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceUserProvider;

    public EmergencyInfoJob_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<SharedPreferences> provider2) {
        this.texaCareApiServiceUserProvider = provider;
        this.mPreferencesProvider = provider2;
    }

    public static MembersInjector<EmergencyInfoJob> create(Provider<TexaCareApiServiceUser> provider, Provider<SharedPreferences> provider2) {
        return new EmergencyInfoJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EmergencyInfoJob emergencyInfoJob) {
        injectTexaCareApiServiceUser(emergencyInfoJob, this.texaCareApiServiceUserProvider.get());
        injectMPreferences(emergencyInfoJob, this.mPreferencesProvider.get());
    }

    public static void injectTexaCareApiServiceUser(EmergencyInfoJob emergencyInfoJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        emergencyInfoJob.texaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMPreferences(EmergencyInfoJob emergencyInfoJob, SharedPreferences sharedPreferences) {
        emergencyInfoJob.mPreferences = sharedPreferences;
    }
}
