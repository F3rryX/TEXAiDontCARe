package com.texa.careapp.app.schedule;

import android.content.Context;
import android.content.SharedPreferences;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class ScheduleScreen_MembersInjector implements MembersInjector<ScheduleScreen> {
    private final Provider<Context> mContextProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<ScheduleDataManager> mScheduleDataManagerProvider;
    private final Provider<SharedPreferences> mSharedPreferencesProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceUserProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public ScheduleScreen_MembersInjector(Provider<Context> provider, Provider<UserDataManager> provider2, Provider<VehicleObserver> provider3, Provider<EventBus> provider4, Provider<TexaCareApiServiceUser> provider5, Provider<VehicleDataManager> provider6, Provider<ScheduleDataManager> provider7, Provider<SharedPreferences> provider8) {
        this.mContextProvider = provider;
        this.mUserDataManagerProvider = provider2;
        this.mVehicleObserverProvider = provider3;
        this.mEventBusProvider = provider4;
        this.mTexaCareApiServiceUserProvider = provider5;
        this.mVehicleDataManagerProvider = provider6;
        this.mScheduleDataManagerProvider = provider7;
        this.mSharedPreferencesProvider = provider8;
    }

    public static MembersInjector<ScheduleScreen> create(Provider<Context> provider, Provider<UserDataManager> provider2, Provider<VehicleObserver> provider3, Provider<EventBus> provider4, Provider<TexaCareApiServiceUser> provider5, Provider<VehicleDataManager> provider6, Provider<ScheduleDataManager> provider7, Provider<SharedPreferences> provider8) {
        return new ScheduleScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ScheduleScreen scheduleScreen) {
        injectMContext(scheduleScreen, this.mContextProvider.get());
        injectMUserDataManager(scheduleScreen, this.mUserDataManagerProvider.get());
        injectMVehicleObserver(scheduleScreen, this.mVehicleObserverProvider.get());
        injectMEventBus(scheduleScreen, this.mEventBusProvider.get());
        injectMTexaCareApiServiceUser(scheduleScreen, this.mTexaCareApiServiceUserProvider.get());
        injectMVehicleDataManager(scheduleScreen, this.mVehicleDataManagerProvider.get());
        injectMScheduleDataManager(scheduleScreen, this.mScheduleDataManagerProvider.get());
        injectMSharedPreferences(scheduleScreen, this.mSharedPreferencesProvider.get());
    }

    public static void injectMContext(ScheduleScreen scheduleScreen, Context context) {
        scheduleScreen.mContext = context;
    }

    public static void injectMUserDataManager(ScheduleScreen scheduleScreen, UserDataManager userDataManager) {
        scheduleScreen.mUserDataManager = userDataManager;
    }

    public static void injectMVehicleObserver(ScheduleScreen scheduleScreen, VehicleObserver vehicleObserver) {
        scheduleScreen.mVehicleObserver = vehicleObserver;
    }

    public static void injectMEventBus(ScheduleScreen scheduleScreen, EventBus eventBus) {
        scheduleScreen.mEventBus = eventBus;
    }

    public static void injectMTexaCareApiServiceUser(ScheduleScreen scheduleScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        scheduleScreen.mTexaCareApiServiceUser = texaCareApiServiceUser;
    }

    public static void injectMVehicleDataManager(ScheduleScreen scheduleScreen, VehicleDataManager vehicleDataManager) {
        scheduleScreen.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMScheduleDataManager(ScheduleScreen scheduleScreen, ScheduleDataManager scheduleDataManager) {
        scheduleScreen.mScheduleDataManager = scheduleDataManager;
    }

    public static void injectMSharedPreferences(ScheduleScreen scheduleScreen, SharedPreferences sharedPreferences) {
        scheduleScreen.mSharedPreferences = sharedPreferences;
    }
}
