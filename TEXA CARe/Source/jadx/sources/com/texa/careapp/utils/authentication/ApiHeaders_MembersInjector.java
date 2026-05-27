package com.texa.careapp.utils.authentication;

import android.content.SharedPreferences;
import com.texa.careapp.fcm.FcmManager;
import com.texa.careapp.model.DongleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ApiHeaders_MembersInjector implements MembersInjector<ApiHeaders> {
    private final Provider<FcmManager> fcmManagerProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;

    public ApiHeaders_MembersInjector(Provider<DongleDataManager> provider, Provider<SharedPreferences> provider2, Provider<FcmManager> provider3) {
        this.mDongleDataManagerProvider = provider;
        this.mSharedPreferencesProvider = provider2;
        this.fcmManagerProvider = provider3;
    }

    public static MembersInjector<ApiHeaders> create(Provider<DongleDataManager> provider, Provider<SharedPreferences> provider2, Provider<FcmManager> provider3) {
        return new ApiHeaders_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ApiHeaders apiHeaders) {
        injectMDongleDataManager(apiHeaders, this.mDongleDataManagerProvider.get());
        injectMSharedPreferences(apiHeaders, this.mSharedPreferencesProvider.get());
        injectFcmManager(apiHeaders, this.fcmManagerProvider.get());
    }

    public static void injectMDongleDataManager(ApiHeaders apiHeaders, DongleDataManager dongleDataManager) {
        apiHeaders.mDongleDataManager = dongleDataManager;
    }

    public static void injectMSharedPreferences(ApiHeaders apiHeaders, SharedPreferences sharedPreferences) {
        apiHeaders.mSharedPreferences = sharedPreferences;
    }

    public static void injectFcmManager(ApiHeaders apiHeaders, FcmManager fcmManager) {
        apiHeaders.fcmManager = fcmManager;
    }
}
