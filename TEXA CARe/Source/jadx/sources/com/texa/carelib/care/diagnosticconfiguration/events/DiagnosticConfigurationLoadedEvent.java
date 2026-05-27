package com.texa.carelib.care.diagnosticconfiguration.events;

import android.content.Context;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;
import java.io.File;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosticConfigurationLoadedEvent extends ErrorEventBase {
    private List<File> mConfigurationReports;
    private final Context mContext;

    public DiagnosticConfigurationLoadedEvent(DiagnosticConfiguration diagnosticConfiguration, Context context, List<File> list, CareError careError) {
        super(diagnosticConfiguration, careError);
        this.mContext = context;
        this.mConfigurationReports = list;
    }

    public List<File> getConfigurationReports() {
        return Collections.unmodifiableList(this.mConfigurationReports);
    }

    public Context getApplicationContext() {
        return this.mContext;
    }
}
