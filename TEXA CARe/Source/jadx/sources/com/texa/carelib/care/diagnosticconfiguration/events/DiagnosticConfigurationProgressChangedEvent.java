package com.texa.carelib.care.diagnosticconfiguration.events;

import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class DiagnosticConfigurationProgressChangedEvent extends ErrorEventBase {
    private boolean mCancel;
    private final float mMax;
    private final float mProgress;

    public DiagnosticConfigurationProgressChangedEvent(DiagnosticConfiguration diagnosticConfiguration, float f, float f2, CareError careError) {
        super(diagnosticConfiguration, careError);
        this.mProgress = f;
        this.mMax = f2;
    }

    public float getProgress() {
        return this.mProgress;
    }

    public float getMax() {
        return this.mMax;
    }

    public boolean isCancel() {
        return this.mCancel;
    }

    public void cancel() {
        this.mCancel = true;
    }
}
