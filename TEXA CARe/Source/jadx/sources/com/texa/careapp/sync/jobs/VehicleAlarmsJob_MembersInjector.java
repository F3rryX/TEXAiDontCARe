package com.texa.careapp.sync.jobs;

import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class VehicleAlarmsJob_MembersInjector implements MembersInjector<VehicleAlarmsJob> {
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<TexaCareApiServiceUser> texaCareApiServiceUserProvider;

    public VehicleAlarmsJob_MembersInjector(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        this.mVehicleDataManagerProvider = provider;
        this.texaCareApiServiceUserProvider = provider2;
    }

    public static MembersInjector<VehicleAlarmsJob> create(Provider<VehicleDataManager> provider, Provider<TexaCareApiServiceUser> provider2) {
        return new VehicleAlarmsJob_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(VehicleAlarmsJob vehicleAlarmsJob) {
        injectMVehicleDataManager(vehicleAlarmsJob, this.mVehicleDataManagerProvider.get());
        injectTexaCareApiServiceUser(vehicleAlarmsJob, this.texaCareApiServiceUserProvider.get());
    }

    public static void injectMVehicleDataManager(VehicleAlarmsJob vehicleAlarmsJob, VehicleDataManager vehicleDataManager) {
        vehicleAlarmsJob.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectTexaCareApiServiceUser(VehicleAlarmsJob vehicleAlarmsJob, TexaCareApiServiceUser texaCareApiServiceUser) {
        vehicleAlarmsJob.texaCareApiServiceUser = texaCareApiServiceUser;
    }
}
