package com.texa.careapp.app.schedule;

import android.content.Context;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.VehicleObserver;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class ResetExpiredScheduleScreen_MembersInjector implements MembersInjector<ResetExpiredScheduleScreen> {
    private final Provider<Context> mContextProvider;
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<ScheduleDataManager> mScheduleDataManagerProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;

    public ResetExpiredScheduleScreen_MembersInjector(Provider<Context> provider, Provider<VehicleObserver> provider2, Provider<TexaCareApiServiceUser> provider3, Provider<EventBus> provider4, Provider<ScheduleDataManager> provider5) {
        this.mContextProvider = provider;
        this.mVehicleObserverProvider = provider2;
        this.mTexaCareApiServiceProvider = provider3;
        this.mEventBusProvider = provider4;
        this.mScheduleDataManagerProvider = provider5;
    }

    public static MembersInjector<ResetExpiredScheduleScreen> create(Provider<Context> provider, Provider<VehicleObserver> provider2, Provider<TexaCareApiServiceUser> provider3, Provider<EventBus> provider4, Provider<ScheduleDataManager> provider5) {
        return new ResetExpiredScheduleScreen_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ResetExpiredScheduleScreen resetExpiredScheduleScreen) {
        injectMContext(resetExpiredScheduleScreen, this.mContextProvider.get());
        injectMVehicleObserver(resetExpiredScheduleScreen, this.mVehicleObserverProvider.get());
        injectMTexaCareApiService(resetExpiredScheduleScreen, this.mTexaCareApiServiceProvider.get());
        injectMEventBus(resetExpiredScheduleScreen, this.mEventBusProvider.get());
        injectMScheduleDataManager(resetExpiredScheduleScreen, this.mScheduleDataManagerProvider.get());
    }

    public static void injectMContext(ResetExpiredScheduleScreen resetExpiredScheduleScreen, Context context) {
        resetExpiredScheduleScreen.mContext = context;
    }

    public static void injectMVehicleObserver(ResetExpiredScheduleScreen resetExpiredScheduleScreen, VehicleObserver vehicleObserver) {
        resetExpiredScheduleScreen.mVehicleObserver = vehicleObserver;
    }

    public static void injectMTexaCareApiService(ResetExpiredScheduleScreen resetExpiredScheduleScreen, TexaCareApiServiceUser texaCareApiServiceUser) {
        resetExpiredScheduleScreen.mTexaCareApiService = texaCareApiServiceUser;
    }

    public static void injectMEventBus(ResetExpiredScheduleScreen resetExpiredScheduleScreen, EventBus eventBus) {
        resetExpiredScheduleScreen.mEventBus = eventBus;
    }

    public static void injectMScheduleDataManager(ResetExpiredScheduleScreen resetExpiredScheduleScreen, ScheduleDataManager scheduleDataManager) {
        resetExpiredScheduleScreen.mScheduleDataManager = scheduleDataManager;
    }
}
