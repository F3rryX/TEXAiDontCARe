package com.texa.careapp.app.sos;

import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.texa.care.eco_driving.RxProfile;
import com.texa.careapp.base.BaseActivity_MembersInjector;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.MechanicDataManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class MechanicActivity_MembersInjector implements MembersInjector<MechanicActivity> {
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<LocalBroadcastManager> mLocalBroadcastManagerProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<MechanicDataManager> mMechanicDataManagerProvider;
    private final Provider<SharedPreferences> mPreferencesProvider;
    private final Provider<RxProfile> mRxProfileProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;

    public MechanicActivity_MembersInjector(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<MechanicDataManager> provider7, Provider<VehicleDataManager> provider8) {
        this.mUserDataManagerProvider = provider;
        this.mDongleDataManagerProvider = provider2;
        this.mPreferencesProvider = provider3;
        this.mLoggerManagerProvider = provider4;
        this.mRxProfileProvider = provider5;
        this.mLocalBroadcastManagerProvider = provider6;
        this.mMechanicDataManagerProvider = provider7;
        this.mVehicleDataManagerProvider = provider8;
    }

    public static MembersInjector<MechanicActivity> create(Provider<UserDataManager> provider, Provider<DongleDataManager> provider2, Provider<SharedPreferences> provider3, Provider<LoggerManager> provider4, Provider<RxProfile> provider5, Provider<LocalBroadcastManager> provider6, Provider<MechanicDataManager> provider7, Provider<VehicleDataManager> provider8) {
        return new MechanicActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(MechanicActivity mechanicActivity) {
        BaseActivity_MembersInjector.injectMUserDataManager(mechanicActivity, this.mUserDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMDongleDataManager(mechanicActivity, this.mDongleDataManagerProvider.get());
        BaseActivity_MembersInjector.injectMPreferences(mechanicActivity, this.mPreferencesProvider.get());
        BaseActivity_MembersInjector.injectMLoggerManager(mechanicActivity, this.mLoggerManagerProvider.get());
        BaseActivity_MembersInjector.injectMRxProfile(mechanicActivity, this.mRxProfileProvider.get());
        BaseActivity_MembersInjector.injectMLocalBroadcastManager(mechanicActivity, this.mLocalBroadcastManagerProvider.get());
        injectMMechanicDataManager(mechanicActivity, this.mMechanicDataManagerProvider.get());
        injectMVehicleDataManager(mechanicActivity, this.mVehicleDataManagerProvider.get());
    }

    public static void injectMMechanicDataManager(MechanicActivity mechanicActivity, MechanicDataManager mechanicDataManager) {
        mechanicActivity.mMechanicDataManager = mechanicDataManager;
    }

    public static void injectMVehicleDataManager(MechanicActivity mechanicActivity, VehicleDataManager vehicleDataManager) {
        mechanicActivity.mVehicleDataManager = vehicleDataManager;
    }
}
