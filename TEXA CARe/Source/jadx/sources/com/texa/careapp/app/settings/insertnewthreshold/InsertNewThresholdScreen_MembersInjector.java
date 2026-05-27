package com.texa.careapp.app.settings.insertnewthreshold;

import android.content.Context;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class InsertNewThresholdScreen_MembersInjector implements MembersInjector<InsertNewThresholdScreen> {
    private final Provider<Context> mContextProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public InsertNewThresholdScreen_MembersInjector(Provider<VehicleDataManager> provider, Provider<Context> provider2) {
        this.mVehicleDataManagerProvider = provider;
        this.mContextProvider = provider2;
    }

    public static MembersInjector<InsertNewThresholdScreen> create(Provider<VehicleDataManager> provider, Provider<Context> provider2) {
        return new InsertNewThresholdScreen_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(InsertNewThresholdScreen insertNewThresholdScreen) {
        injectMVehicleDataManager(insertNewThresholdScreen, this.mVehicleDataManagerProvider.get());
        injectMContext(insertNewThresholdScreen, this.mContextProvider.get());
    }

    public static void injectMVehicleDataManager(InsertNewThresholdScreen insertNewThresholdScreen, VehicleDataManager vehicleDataManager) {
        insertNewThresholdScreen.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMContext(InsertNewThresholdScreen insertNewThresholdScreen, Context context) {
        insertNewThresholdScreen.mContext = context;
    }
}
