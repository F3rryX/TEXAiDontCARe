package com.texa.careapp.dagger;

import com.texa.careapp.utils.BatteryStatusFormatter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class CareModule_MBatteryStatusFormatterFactory implements Factory<BatteryStatusFormatter> {
    private final CareModule module;

    public CareModule_MBatteryStatusFormatterFactory(CareModule careModule) {
        this.module = careModule;
    }

    @Override // javax.inject.Provider
    public BatteryStatusFormatter get() {
        return mBatteryStatusFormatter(this.module);
    }

    public static CareModule_MBatteryStatusFormatterFactory create(CareModule careModule) {
        return new CareModule_MBatteryStatusFormatterFactory(careModule);
    }

    public static BatteryStatusFormatter mBatteryStatusFormatter(CareModule careModule) {
        return (BatteryStatusFormatter) Preconditions.checkNotNullFromProvides(careModule.mBatteryStatusFormatter());
    }
}
