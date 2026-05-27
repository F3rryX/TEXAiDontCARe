package com.texa.careapp.app.schedule.addThreshold;

import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class SelectNewScheduleScreen_MembersInjector implements MembersInjector<SelectNewScheduleScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleDataManager> mVehicleDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public SelectNewScheduleScreen_MembersInjector(Provider<VehicleObserver> provider, Provider<EventBus> provider2, Provider<VehicleDataManager> provider3, Provider<UserDataManager> provider4) {
        this.mVehicleObserverProvider = provider;
        this.mEventBusProvider = provider2;
        this.mVehicleDataManagerProvider = provider3;
        this.mUserDataManagerProvider = provider4;
    }

    public static MembersInjector<SelectNewScheduleScreen> create(Provider<VehicleObserver> provider, Provider<EventBus> provider2, Provider<VehicleDataManager> provider3, Provider<UserDataManager> provider4) {
        return new SelectNewScheduleScreen_MembersInjector(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SelectNewScheduleScreen selectNewScheduleScreen) {
        injectMVehicleObserver(selectNewScheduleScreen, this.mVehicleObserverProvider.get());
        injectMEventBus(selectNewScheduleScreen, this.mEventBusProvider.get());
        injectMVehicleDataManager(selectNewScheduleScreen, this.mVehicleDataManagerProvider.get());
        injectMUserDataManager(selectNewScheduleScreen, this.mUserDataManagerProvider.get());
    }

    public static void injectMVehicleObserver(SelectNewScheduleScreen selectNewScheduleScreen, VehicleObserver vehicleObserver) {
        selectNewScheduleScreen.mVehicleObserver = vehicleObserver;
    }

    public static void injectMEventBus(SelectNewScheduleScreen selectNewScheduleScreen, EventBus eventBus) {
        selectNewScheduleScreen.mEventBus = eventBus;
    }

    public static void injectMVehicleDataManager(SelectNewScheduleScreen selectNewScheduleScreen, VehicleDataManager vehicleDataManager) {
        selectNewScheduleScreen.mVehicleDataManager = vehicleDataManager;
    }

    public static void injectMUserDataManager(SelectNewScheduleScreen selectNewScheduleScreen, UserDataManager userDataManager) {
        selectNewScheduleScreen.mUserDataManager = userDataManager;
    }
}
