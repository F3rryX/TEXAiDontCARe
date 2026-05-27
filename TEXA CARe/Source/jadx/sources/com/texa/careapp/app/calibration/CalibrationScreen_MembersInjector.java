package com.texa.careapp.app.calibration;

import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class CalibrationScreen_MembersInjector implements MembersInjector<CalibrationScreen> {
    private final Provider<EventBus> mEventBusProvider;

    public CalibrationScreen_MembersInjector(Provider<EventBus> provider) {
        this.mEventBusProvider = provider;
    }

    public static MembersInjector<CalibrationScreen> create(Provider<EventBus> provider) {
        return new CalibrationScreen_MembersInjector(provider);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CalibrationScreen calibrationScreen) {
        injectMEventBus(calibrationScreen, this.mEventBusProvider.get());
    }

    public static void injectMEventBus(CalibrationScreen calibrationScreen, EventBus eventBus) {
        calibrationScreen.mEventBus = eventBus;
    }
}
