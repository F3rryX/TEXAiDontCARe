package com.texa.carelib.care.diagnosticconfiguration.internal;

import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationListener;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationStatus;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationLoadedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationProgressChangedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationStatusChangedEvent;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.CareError;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DiagnosticConfigurationBase extends ProfileSubModule implements DiagnosticConfiguration {
    private final FeatureVerifier mFeatureVerifier;
    private DiagnosticConfigurationListener mListener;
    private DiagnosticConfigurationStatus mStatus = DiagnosticConfigurationStatus.Idle;

    DiagnosticConfigurationBase(FeatureVerifier featureVerifier) {
        this.mFeatureVerifier = featureVerifier;
    }

    @Override // com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration
    public void setDiagnosticConfigurationListener(DiagnosticConfigurationListener diagnosticConfigurationListener) {
        this.mListener = diagnosticConfigurationListener;
    }

    @Override // com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration
    public DiagnosticConfigurationStatus getStatus() {
        return this.mStatus;
    }

    protected DiagnosticConfigurationListener getDiagnosticConfigurationListener() {
        return this.mListener;
    }

    protected void setStatus(DiagnosticConfigurationStatus diagnosticConfigurationStatus) {
        this.mStatus = diagnosticConfigurationStatus;
        fireDiagnosticConfigurationStatusChanged(new DiagnosticConfigurationStatusChangedEvent(this, diagnosticConfigurationStatus));
    }

    protected void fireDiagnosticConfigurationStatusChanged(DiagnosticConfigurationStatusChangedEvent diagnosticConfigurationStatusChangedEvent) {
        DiagnosticConfigurationListener diagnosticConfigurationListener = this.mListener;
        if (diagnosticConfigurationListener != null) {
            diagnosticConfigurationListener.onDiagnosticConfigurationStatusChanged(diagnosticConfigurationStatusChangedEvent);
        }
    }

    protected void fireDiagnosticConfigurationProgressChanged(DiagnosticConfigurationProgressChangedEvent diagnosticConfigurationProgressChangedEvent) {
        DiagnosticConfigurationListener diagnosticConfigurationListener = this.mListener;
        if (diagnosticConfigurationListener != null) {
            diagnosticConfigurationListener.onDiagnosticConfigurationProgressChanged(diagnosticConfigurationProgressChangedEvent);
        }
    }

    protected void fireDiagnosticConfigurationLoaded(DiagnosticConfigurationLoadedEvent diagnosticConfigurationLoadedEvent) {
        DiagnosticConfigurationListener diagnosticConfigurationListener = this.mListener;
        if (diagnosticConfigurationListener != null) {
            diagnosticConfigurationListener.onDiagnosticConfigurationLoaded(diagnosticConfigurationLoadedEvent);
        }
    }

    protected void terminate(List<File> list, CareError careError) {
        fireDiagnosticConfigurationLoaded(new DiagnosticConfigurationLoadedEvent(this, getProfile().getProfileDelegate().getApplicationContext(), list, careError));
        resetData();
    }

    protected boolean isRunning() {
        return DiagnosticConfigurationStatus.Running == getStatus();
    }

    protected void resetData() {
        setStatus(DiagnosticConfigurationStatus.Idle);
        setDiagnosticConfigurationListener(null);
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.diagnosticconfiguration.internal.DiagnosticConfigurationBase$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTION_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            resetData();
        }
    }

    protected FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }
}
