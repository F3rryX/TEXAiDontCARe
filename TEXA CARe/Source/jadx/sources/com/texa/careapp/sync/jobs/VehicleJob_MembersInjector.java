package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class VehicleJob_MembersInjector implements MembersInjector<VehicleJob> {
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceUserProvider;

    public VehicleJob_MembersInjector(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        this.mVehicleDataManagerProvider = provider;
        this.texaCareApiServiceUserProvider = provider2;
    }

    public static MembersInjector<VehicleJob> create(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        return new VehicleJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VehicleJob vehicleJob) {
        injectMVehicleDataManager(vehicleJob, this.mVehicleDataManagerProvider.get());
        injectTexaCareApiServiceUser(vehicleJob, this.texaCareApiServiceUserProvider.get());
    }

    public static void injectMVehicleDataManager(VehicleJob vehicleJob, VehicleDataManager vehicleDataManager) {
        vehicleJob.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectTexaCareApiServiceUser(VehicleJob vehicleJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        vehicleJob.texaCareApiServiceUser = texaCareApiServiceUser;
    }
}
