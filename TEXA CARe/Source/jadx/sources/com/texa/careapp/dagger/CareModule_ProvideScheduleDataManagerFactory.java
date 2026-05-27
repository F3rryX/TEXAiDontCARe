package com.texa.careapp.dagger;

import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.UserDataManager;
import com.texa.careapp.utils.VehicleObserver;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideScheduleDataManagerFactory implements Factory<ScheduleDataManager> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<TexaCareApiServiceUser> mTexaCareApiServiceProvider;
    private final Provider<VehicleObserver> mVehicleObserverProvider;
    private final CareModule module;
    private final Provider<UserDataManager> userDataManagerProvider;

    public CareModule_ProvideScheduleDataManagerFactory(CareModule careModule, Provider<EventBus> provider, Provider<TexaCareApiServiceUser> provider2, Provider<VehicleObserver> provider3, Provider<UserDataManager> provider4) {
        this.module = careModule;
        this.mEventBusProvider = provider;
        this.mTexaCareApiServiceProvider = provider2;
        this.mVehicleObserverProvider = provider3;
        this.userDataManagerProvider = provider4;
    }

    @Override // javax.inject.Provider
    public ScheduleDataManager get() {
        return provideScheduleDataManager(this.module, this.mEventBusProvider.get(), this.mTexaCareApiServiceProvider.get(), this.mVehicleObserverProvider.get(), this.userDataManagerProvider.get());
    }

    public static CareModule_ProvideScheduleDataManagerFactory create(CareModule careModule, Provider<EventBus> provider, Provider<TexaCareApiServiceUser> provider2, Provider<VehicleObserver> provider3, Provider<UserDataManager> provider4) {
        return new CareModule_ProvideScheduleDataManagerFactory(careModule, provider, provider2, provider3, provider4);
    }

    public static ScheduleDataManager provideScheduleDataManager(CareModule careModule, EventBus eventBus, TexaCareApiServiceUser texaCareApiServiceUser, VehicleObserver vehicleObserver, UserDataManager userDataManager) {
        return (ScheduleDataManager) Preconditions.checkNotNullFromProvides(careModule.provideScheduleDataManager(eventBus, texaCareApiServiceUser, vehicleObserver, userDataManager));
    }
}
