package com.texa.carelib.care.diagnosticconfiguration;

import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationLoadedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationProgressChangedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationStatusChangedEvent;

/* JADX INFO: loaded from: classes2.dex */
public interface DiagnosticConfigurationListener {
    void onDiagnosticConfigurationLoaded(DiagnosticConfigurationLoadedEvent diagnosticConfigurationLoadedEvent);

    void onDiagnosticConfigurationProgressChanged(DiagnosticConfigurationProgressChangedEvent diagnosticConfigurationProgressChangedEvent);

    void onDiagnosticConfigurationStatusChanged(DiagnosticConfigurationStatusChangedEvent diagnosticConfigurationStatusChangedEvent);
}
