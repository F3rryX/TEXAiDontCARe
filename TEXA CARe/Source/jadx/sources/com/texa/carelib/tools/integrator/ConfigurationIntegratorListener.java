package com.texa.carelib.tools.integrator;

import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationLoadedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationProgressChangedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationStatusChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface ConfigurationIntegratorListener {
    void onConfigurationProcedureCompleted(DiagnosticConfigurationLoadedEvent diagnosticConfigurationLoadedEvent);

    void onConfigurationProcedureProgressChanged(DiagnosticConfigurationProgressChangedEvent diagnosticConfigurationProgressChangedEvent);

    void onConfigurationProcedureStatusChanged(DiagnosticConfigurationStatusChangedEvent diagnosticConfigurationStatusChangedEvent);
}
