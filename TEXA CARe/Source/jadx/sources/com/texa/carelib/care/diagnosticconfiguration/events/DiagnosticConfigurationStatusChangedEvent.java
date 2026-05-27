package com.texa.carelib.care.diagnosticconfiguration.events;

import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationStatus;
import com.texa.carelib.core.events.EventBase;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosticConfigurationStatusChangedEvent extends EventBase {
    private final DiagnosticConfigurationStatus mStatus;

    public DiagnosticConfigurationStatusChangedEvent(DiagnosticConfiguration diagnosticConfiguration, DiagnosticConfigurationStatus diagnosticConfigurationStatus) {
        super(diagnosticConfiguration);
        this.mStatus = diagnosticConfigurationStatus;
    }

    public DiagnosticConfigurationStatus getStatus() {
        return this.mStatus;
    }
}
