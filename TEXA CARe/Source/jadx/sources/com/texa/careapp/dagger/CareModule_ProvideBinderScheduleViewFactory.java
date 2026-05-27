package com.texa.careapp.dagger;

import com.texa.careapp.app.schedule.BinderScheduleView;
import com.texa.careapp.utils.VehicleObserver;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_ProvideBinderScheduleViewFactory implements Factory<BinderScheduleView> {
    private final Provider<VehicleObserver> mVehicleObserverProvider;
    private final CareModule module;

    public CareModule_ProvideBinderScheduleViewFactory(CareModule careModule, Provider<VehicleObserver> provider) {
        this.module = careModule;
        this.mVehicleObserverProvider = provider;
    }

    @Override // javax.inject.Provider
    public BinderScheduleView get() {
        return provideBinderScheduleView(this.module, this.mVehicleObserverProvider.get());
    }

    public static CareModule_ProvideBinderScheduleViewFactory create(CareModule careModule, Provider<VehicleObserver> provider) {
        return new CareModule_ProvideBinderScheduleViewFactory(careModule, provider);
    }

    public static BinderScheduleView provideBinderScheduleView(CareModule careModule, VehicleObserver vehicleObserver) {
        return (BinderScheduleView) Preconditions.checkNotNullFromProvides(careModule.provideBinderScheduleView(vehicleObserver));
    }
}
