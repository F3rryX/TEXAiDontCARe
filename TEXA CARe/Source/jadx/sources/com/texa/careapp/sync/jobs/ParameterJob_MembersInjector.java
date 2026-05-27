package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ParameterJob_MembersInjector implements MembersInjector<ParameterJob> {
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public ParameterJob_MembersInjector(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        this.mVehicleDataManagerProvider = provider;
        this.mTexaCareApiServiceProvider = provider2;
    }

    public static MembersInjector<ParameterJob> create(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        return new ParameterJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ParameterJob parameterJob) {
        injectMVehicleDataManager(parameterJob, this.mVehicleDataManagerProvider.get());
        injectMTexaCareApiService(parameterJob, this.mTexaCareApiServiceProvider.get());
    }

    public static void injectMVehicleDataManager(ParameterJob parameterJob, VehicleDataManager vehicleDataManager) {
        parameterJob.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMTexaCareApiService(ParameterJob parameterJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        parameterJob.mTexaCareApiService = texaCareApiServiceUser;
    }
}
