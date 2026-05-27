package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ThresholdsJob_MembersInjector implements MembersInjector<ThresholdsJob> {
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public ThresholdsJob_MembersInjector(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        this.mVehicleDataManagerProvider = provider;
        this.mTexaCareApiServiceProvider = provider2;
    }

    public static MembersInjector<ThresholdsJob> create(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        return new ThresholdsJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ThresholdsJob thresholdsJob) {
        injectMVehicleDataManager(thresholdsJob, this.mVehicleDataManagerProvider.get());
        injectMTexaCareApiService(thresholdsJob, this.mTexaCareApiServiceProvider.get());
    }

    public static void injectMVehicleDataManager(ThresholdsJob thresholdsJob, VehicleDataManager vehicleDataManager) {
        thresholdsJob.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMTexaCareApiService(ThresholdsJob thresholdsJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        thresholdsJob.mTexaCareApiService = texaCareApiServiceUser;
    }
}
