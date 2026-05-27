package com.texa.careapp.app.schedule;

import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SchedulesAdapter_MembersInjector implements MembersInjector<SchedulesAdapter> {
    private final Provider<BinderScheduleView> mBinderScheduleViewProvider;
    private final Provider<ScheduleDataManager> mScheduleDataManagerProvider;
    private final Provider<VehicleObserver> vehicleObserverProvider;

    public SchedulesAdapter_MembersInjector(Provider<VehicleObserver> provider, Provider<ScheduleDataManager> provider2, Provider<BinderScheduleView> provider3) {
        this.vehicleObserverProvider = provider;
        this.mScheduleDataManagerProvider = provider2;
        this.mBinderScheduleViewProvider = provider3;
    }

    public static MembersInjector<SchedulesAdapter> create(Provider<VehicleObserver> provider, Provider<ScheduleDataManager> provider2, Provider<BinderScheduleView> provider3) {
        return new SchedulesAdapter_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SchedulesAdapter schedulesAdapter) {
        injectVehicleObserver(schedulesAdapter, this.vehicleObserverProvider.get());
        injectMScheduleDataManager(schedulesAdapter, this.mScheduleDataManagerProvider.get());
        injectMBinderScheduleView(schedulesAdapter, this.mBinderScheduleViewProvider.get());
    }

    public static void injectVehicleObserver(SchedulesAdapter schedulesAdapter, VehicleObserver vehicleObserver) {
        schedulesAdapter.vehicleObserver = vehicleObserver;
    }

    public static void injectMScheduleDataManager(SchedulesAdapter schedulesAdapter, ScheduleDataManager scheduleDataManager) {
        schedulesAdapter.mScheduleDataManager = scheduleDataManager;
    }

    public static void injectMBinderScheduleView(SchedulesAdapter schedulesAdapter, BinderScheduleView binderScheduleView) {
        schedulesAdapter.mBinderScheduleView = binderScheduleView;
    }
}
