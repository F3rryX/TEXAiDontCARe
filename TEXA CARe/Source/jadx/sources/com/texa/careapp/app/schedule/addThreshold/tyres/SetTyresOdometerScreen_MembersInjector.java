package com.texa.careapp.app.schedule.addThreshold.tyres;

import com.texa.careapp.model.ScheduleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class SetTyresOdometerScreen_MembersInjector implements MembersInjector<SetTyresOdometerScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<ScheduleDataManager> mScheduleDataManagerProvider;

    public SetTyresOdometerScreen_MembersInjector(Provider<EventBus> provider, Provider<ScheduleDataManager> provider2) {
        this.mEventBusProvider = provider;
        this.mScheduleDataManagerProvider = provider2;
    }

    public static MembersInjector<SetTyresOdometerScreen> create(Provider<EventBus> provider, Provider<ScheduleDataManager> provider2) {
        return new SetTyresOdometerScreen_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SetTyresOdometerScreen setTyresOdometerScreen) {
        injectMEventBus(setTyresOdometerScreen, this.mEventBusProvider.get());
        injectMScheduleDataManager(setTyresOdometerScreen, this.mScheduleDataManagerProvider.get());
    }

    public static void injectMEventBus(SetTyresOdometerScreen setTyresOdometerScreen, EventBus eventBus) {
        setTyresOdometerScreen.mEventBus = eventBus;
    }

    public static void injectMScheduleDataManager(SetTyresOdometerScreen setTyresOdometerScreen, ScheduleDataManager scheduleDataManager) {
        setTyresOdometerScreen.mScheduleDataManager = scheduleDataManager;
    }
}
