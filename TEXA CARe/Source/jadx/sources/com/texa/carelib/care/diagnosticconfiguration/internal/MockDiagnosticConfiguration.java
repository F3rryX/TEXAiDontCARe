package com.texa.carelib.care.diagnosticconfiguration.internal;

import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationStatus;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationErasedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationProgressChangedEvent;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.Profile;
import java.io.File;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MockDiagnosticConfiguration extends DiagnosticConfigurationBase {
    private static final int CONFIGURATION_UPLOAD_DURATION = 1500;
    public static final String TAG = "MockDiagnosticConfiguration";
    private final Profile mProfile;

    public MockDiagnosticConfiguration(Profile profile, FeatureVerifier featureVerifier) {
        super(featureVerifier);
        this.mProfile = profile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration
    public void loadConfigurations(List<File> list) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        String str = TAG;
        CareLog.i(str, "Update configuration begins", new Object[0]);
        if (DiagnosticConfigurationStatus.Idle != getStatus()) {
            throw new OperationAlreadyRunningException("Could not subscribe the configuration. Operation is already running.");
        }
        setStatus(DiagnosticConfigurationStatus.Running);
        final List listUnmodifiableList = Collections.unmodifiableList(list);
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.MockDiagnosticConfiguration$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m697xc6d5bd87(listUnmodifiableList);
            }
        }, str + "_BeginUpdateConfiguration");
        thread.setPriority(1);
        thread.start();
    }

    /* JADX INFO: renamed from: lambda$loadConfigurations$0$com-texa-carelib-care-diagnosticconfiguration-internal-MockDiagnosticConfiguration, reason: not valid java name */
    public /* synthetic */ void m697xc6d5bd87(List list) {
        int i = 0;
        while (true) {
            if (i >= list.size()) {
                break;
            }
            try {
                Thread.sleep(1500L);
            } catch (InterruptedException e) {
                CareLog.e(TAG, "Wait has failed.", e);
            }
            CareLog.d(TAG, String.format("Before notify subscribe configurations progress %s of %s", Integer.valueOf(i), Integer.valueOf(list.size())), new Object[0]);
            DiagnosticConfigurationProgressChangedEvent diagnosticConfigurationProgressChangedEvent = new DiagnosticConfigurationProgressChangedEvent(this, (i / list.size()) * 100.0f, 100.0f, null);
            fireDiagnosticConfigurationProgressChanged(diagnosticConfigurationProgressChangedEvent);
            if (diagnosticConfigurationProgressChangedEvent.isCancel()) {
                terminate(Collections.emptyList(), null);
                break;
            }
            i++;
        }
        String str = TAG;
        CareLog.d(str, "Before notify subscribe configurations completed", new Object[0]);
        terminate(Collections.emptyList(), null);
        setStatus(DiagnosticConfigurationStatus.Idle);
        CareLog.i(str, "Update configuration ends", new Object[0]);
    }

    @Override // com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration
    public void clearConfiguration(Callback<DiagnosticConfigurationErasedEvent> callback) throws CareLibException {
        throw new CareLibException("Not yet implemented.");
    }
}
