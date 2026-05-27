package com.texa.carelib.care.diagnosticconfiguration;

import android.os.Bundle;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationErasedEvent;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface DiagnosticConfiguration {
    public static final String EXTRA_RECEIVE_REPORT_TIMEOUT = "EXTRA_RECEIVE_REPORT_TIMEOUT";
    public static final String EXTRA_WAIT_ENGINE_ON_TIMEOUT = "EXTRA_WAIT_ENGINE_ON_TIMEOUT";

    void clearConfiguration(Callback<DiagnosticConfigurationErasedEvent> callback) throws CareLibException;

    Bundle getArguments();

    DiagnosticConfigurationStatus getStatus();

    void loadConfigurations(List<File> list) throws CareLibException;

    void setDiagnosticConfigurationListener(DiagnosticConfigurationListener diagnosticConfigurationListener);
}
