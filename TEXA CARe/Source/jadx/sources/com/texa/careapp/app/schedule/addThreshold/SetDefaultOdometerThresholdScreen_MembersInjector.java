package com.texa.careapp.app.schedule.addThreshold;

import com.texa.careapp.model.ScheduleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class SetDefaultOdometerThresholdScreen_MembersInjector implements MembersInjector<SetDefaultOdometerThresholdScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<ScheduleDataManager> mScheduleDataManagerProvider;

    public SetDefaultOdometerThresholdScreen_MembersInjector(Provider<ScheduleDataManager> provider, Provider<EventBus> provider2) {
        this.mScheduleDataManagerProvider = provider;
        this.mEventBusProvider = provider2;
    }

    public static MembersInjector<SetDefaultOdometerThresholdScreen> create(Provider<ScheduleDataManager> provider, Provider<EventBus> provider2) {
        return new SetDefaultOdometerThresholdScreen_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SetDefaultOdometerThresholdScreen setDefaultOdometerThresholdScreen) {
        injectMScheduleDataManager(setDefaultOdometerThresholdScreen, this.mScheduleDataManagerProvider.get());
        injectMEventBus(setDefaultOdometerThresholdScreen, this.mEventBusProvider.get());
    }

    public static void injectMScheduleDataManager(SetDefaultOdometerThresholdScreen setDefaultOdometerThresholdScreen, ScheduleDataManager scheduleDataManager) {
        setDefaultOdometerThresholdScreen.mScheduleDataManager = scheduleDataManager;
    }

    public static void injectMEventBus(SetDefaultOdometerThresholdScreen setDefaultOdometerThresholdScreen, EventBus eventBus) {
        setDefaultOdometerThresholdScreen.mEventBus = eventBus;
    }
}
