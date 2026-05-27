package com.texa.carelib.tools.integrator.events;

import com.texa.carelib.tools.integrator.ConfigurationAllInOneIntegratorStatus;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigurationAllInOneIntegratorProgressChangedEvent {
    private final float mProgress;
    private final ConfigurationAllInOneIntegratorStatus mStatus;

    public ConfigurationAllInOneIntegratorProgressChangedEvent(ConfigurationAllInOneIntegratorStatus configurationAllInOneIntegratorStatus, float f) {
        this.mStatus = configurationAllInOneIntegratorStatus;
        this.mProgress = f;
    }

    public float getProgress() {
        return this.mProgress;
    }

    public ConfigurationAllInOneIntegratorStatus getStatus() {
        return this.mStatus;
    }
}
