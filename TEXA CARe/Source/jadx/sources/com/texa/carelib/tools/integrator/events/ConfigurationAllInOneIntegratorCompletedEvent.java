package com.texa.carelib.tools.integrator.events;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigurationAllInOneIntegratorCompletedEvent extends ErrorEventBase {
    private final boolean mIsDiagnosticConfigurationUpgraded;

    public ConfigurationAllInOneIntegratorCompletedEvent(Object obj, boolean z, CareError careError) {
        super(obj, careError);
        this.mIsDiagnosticConfigurationUpgraded = z;
    }

    public boolean isDiagnosticConfigurationUpgraded() {
        return this.mIsDiagnosticConfigurationUpgraded;
    }
}
