package com.texa.careapp.app.calibration;

import com.texa.carelib.care.attitude.Attitude;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class CalibrationDialogScreen_MembersInjector implements MembersInjector<CalibrationDialogScreen> {
    private final Provider<Attitude> mAttitudeProvider;
    private final Provider<EventBus> mEventBusProvider;

    public CalibrationDialogScreen_MembersInjector(Provider<Attitude> provider, Provider<EventBus> provider2) {
        this.mAttitudeProvider = provider;
        this.mEventBusProvider = provider2;
    }

    public static MembersInjector<CalibrationDialogScreen> create(Provider<Attitude> provider, Provider<EventBus> provider2) {
        return new CalibrationDialogScreen_MembersInjector(provider, provider2);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CalibrationDialogScreen calibrationDialogScreen) {
        injectMAttitude(calibrationDialogScreen, this.mAttitudeProvider.get());
        injectMEventBus(calibrationDialogScreen, this.mEventBusProvider.get());
    }

    public static void injectMAttitude(CalibrationDialogScreen calibrationDialogScreen, Attitude attitude) {
        calibrationDialogScreen.mAttitude = attitude;
    }

    public static void injectMEventBus(CalibrationDialogScreen calibrationDialogScreen, EventBus eventBus) {
        calibrationDialogScreen.mEventBus = eventBus;
    }
}
