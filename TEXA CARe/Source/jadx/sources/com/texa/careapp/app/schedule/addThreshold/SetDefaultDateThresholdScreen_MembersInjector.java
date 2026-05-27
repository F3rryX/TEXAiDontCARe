package com.texa.careapp.app.schedule.addThreshold;

import com.texa.careapp.model.ScheduleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class SetDefaultDateThresholdScreen_MembersInjector implements MembersInjector<SetDefaultDateThresholdScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<ScheduleDataManager> mScheduleDataManagerProvider;

    public SetDefaultDateThresholdScreen_MembersInjector(Provider<ScheduleDataManager> provider, Provider<EventBus> provider2) {
        this.mScheduleDataManagerProvider = provider;
        this.mEventBusProvider = provider2;
    }

    public static MembersInjector<SetDefaultDateThresholdScreen> create(Provider<ScheduleDataManager> provider, Provider<EventBus> provider2) {
        return new SetDefaultDateThresholdScreen_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SetDefaultDateThresholdScreen setDefaultDateThresholdScreen) {
        injectMScheduleDataManager(setDefaultDateThresholdScreen, this.mScheduleDataManagerProvider.get());
        injectMEventBus(setDefaultDateThresholdScreen, this.mEventBusProvider.get());
    }

    public static void injectMScheduleDataManager(SetDefaultDateThresholdScreen setDefaultDateThresholdScreen, ScheduleDataManager scheduleDataManager) {
        setDefaultDateThresholdScreen.mScheduleDataManager = scheduleDataManager;
    }

    public static void injectMEventBus(SetDefaultDateThresholdScreen setDefaultDateThresholdScreen, EventBus eventBus) {
        setDefaultDateThresholdScreen.mEventBus = eventBus;
    }
}
