package com.texa.careapp.sync.jobs;

import android.content.SharedPreferences;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EmergencyInfoMessageJob_MembersInjector implements MembersInjector<EmergencyInfoMessageJob> {
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceUserProvider;

    public EmergencyInfoMessageJob_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<SharedPreferences> provider2) {
        this.texaCareApiServiceUserProvider = provider;
        this.mPreferencesProvider = provider2;
    }

    public static MembersInjector<EmergencyInfoMessageJob> create(Provider<TexaCareApiServiceUser> provider, Provider<SharedPreferences> provider2) {
        return new EmergencyInfoMessageJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(EmergencyInfoMessageJob emergencyInfoMessageJob) {
        injectTexaCareApiServiceUser(emergencyInfoMessageJob, this.texaCareApiServiceUserProvider.get());
        injectMPreferences(emergencyInfoMessageJob, this.mPreferencesProvider.get());
    }

    public static void injectTexaCareApiServiceUser(EmergencyInfoMessageJob emergencyInfoMessageJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        emergencyInfoMessageJob.texaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMPreferences(EmergencyInfoMessageJob emergencyInfoMessageJob, SharedPreferences sharedPreferences) {
        emergencyInfoMessageJob.mPreferences = sharedPreferences;
    }
}
