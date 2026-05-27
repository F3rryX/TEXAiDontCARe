package com.texa.careapp.app.schedule.addThreshold;

import com.texa.careapp.model.ScheduleDataManager;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class SetInsuranceDateThresholdScreen_MembersInjector implements MembersInjector<SetInsuranceDateThresholdScreen> {
    private final Provider<EventBus> mEventBusProvider;
    private final Provider<ScheduleDataManager> mScheduleDataManagerProvider;

    public SetInsuranceDateThresholdScreen_MembersInjector(Provider<ScheduleDataManager> provider, Provider<EventBus> provider2) {
        this.mScheduleDataManagerProvider = provider;
        this.mEventBusProvider = provider2;
    }

    public static MembersInjector<SetInsuranceDateThresholdScreen> create(Provider<ScheduleDataManager> provider, Provider<EventBus> provider2) {
        return new SetInsuranceDateThresholdScreen_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SetInsuranceDateThresholdScreen setInsuranceDateThresholdScreen) {
        injectMScheduleDataManager(setInsuranceDateThresholdScreen, this.mScheduleDataManagerProvider.get());
        injectMEventBus(setInsuranceDateThresholdScreen, this.mEventBusProvider.get());
    }

    public static void injectMScheduleDataManager(SetInsuranceDateThresholdScreen setInsuranceDateThresholdScreen, ScheduleDataManager scheduleDataManager) {
        setInsuranceDateThresholdScreen.mScheduleDataManager = scheduleDataManager;
    }

    public static void injectMEventBus(SetInsuranceDateThresholdScreen setInsuranceDateThresholdScreen, EventBus eventBus) {
        setInsuranceDateThresholdScreen.mEventBus = eventBus;
    }
}
