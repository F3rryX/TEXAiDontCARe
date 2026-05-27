package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class DTCJob_MembersInjector implements MembersInjector<DTCJob> {
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public DTCJob_MembersInjector(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        this.mVehicleDataManagerProvider = provider;
        this.mTexaCareApiServiceProvider = provider2;
    }

    public static MembersInjector<DTCJob> create(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        return new DTCJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(DTCJob dTCJob) {
        injectMVehicleDataManager(dTCJob, this.mVehicleDataManagerProvider.get());
        injectMTexaCareApiService(dTCJob, this.mTexaCareApiServiceProvider.get());
    }

    public static void injectMVehicleDataManager(DTCJob dTCJob, VehicleDataManager vehicleDataManager) {
        dTCJob.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMTexaCareApiService(DTCJob dTCJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        dTCJob.mTexaCareApiService = texaCareApiServiceUser;
    }
}
