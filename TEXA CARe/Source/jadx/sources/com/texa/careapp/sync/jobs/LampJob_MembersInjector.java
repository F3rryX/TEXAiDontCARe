package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class LampJob_MembersInjector implements MembersInjector<LampJob> {
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public LampJob_MembersInjector(Provider<TexaCareApiServiceUser> provider, Provider<VehicleDataManager> provider2) {
        this.mTexaCareApiServiceProvider = provider;
        this.mVehicleDataManagerProvider = provider2;
    }

    public static MembersInjector<LampJob> create(Provider<TexaCareApiServiceUser> provider, Provider<VehicleDataManager> provider2) {
        return new LampJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(LampJob lampJob) {
        injectMTexaCareApiService(lampJob, this.mTexaCareApiServiceProvider.get());
        injectMVehicleDataManager(lampJob, this.mVehicleDataManagerProvider.get());
    }

    public static void injectMTexaCareApiService(LampJob lampJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        lampJob.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMVehicleDataManager(LampJob lampJob, VehicleDataManager vehicleDataManager) {
        lampJob.mVehicleDataManager = vehicleDataManager;
    }
}
