package com.texa.careapp.app.dashboard.card;

import android.content.Context;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class ScheduleCardViewPresenter_MembersInjector implements MembersInjector<ScheduleCardViewPresenter> {
    private final Provider<Context> mContextProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public ScheduleCardViewPresenter_MembersInjector(Provider<Context> provider, Provider<UserDataManager> provider2, Provider<VehicleObserver> provider3) {
        this.mContextProvider = provider;
        this.mUserDataManagerProvider = provider2;
        this.mVehicleObserverProvider = provider3;
    }

    public static MembersInjector<ScheduleCardViewPresenter> create(Provider<Context> provider, Provider<UserDataManager> provider2, Provider<VehicleObserver> provider3) {
        return new ScheduleCardViewPresenter_MembersInjector(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ScheduleCardViewPresenter scheduleCardViewPresenter) {
        injectMContext(scheduleCardViewPresenter, this.mContextProvider.get());
        injectMUserDataManager(scheduleCardViewPresenter, this.mUserDataManagerProvider.get());
        injectMVehicleObserver(scheduleCardViewPresenter, this.mVehicleObserverProvider.get());
    }

    public static void injectMContext(ScheduleCardViewPresenter scheduleCardViewPresenter, Context context) {
        scheduleCardViewPresenter.mContext = context;
    }

    public static void injectMUserDataManager(ScheduleCardViewPresenter scheduleCardViewPresenter, UserDataManager userDataManager) {
        scheduleCardViewPresenter.mUserDataManager = userDataManager;
    }

    public static void injectMVehicleObserver(ScheduleCardViewPresenter scheduleCardViewPresenter, VehicleObserver vehicleObserver) {
        scheduleCardViewPresenter.mVehicleObserver = vehicleObserver;
    }
}
