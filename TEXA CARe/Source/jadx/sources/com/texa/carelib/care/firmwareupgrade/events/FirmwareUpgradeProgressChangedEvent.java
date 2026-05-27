package com.texa.carelib.care.firmwareupgrade.events;

import com.texa.carelib.core.AppType;
import com.texa.carelib.core.events.ProgressChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public class FirmwareUpgradeProgressChangedEvent extends ProgressChangedEvent {
    private final AppType mAppType;

    public FirmwareUpgradeProgressChangedEvent(Object obj, AppType appType, float f) {
        super(obj, f);
        this.mAppType = appType;
    }

    public AppType getAppType() {
        return this.mAppType;
    }
}
