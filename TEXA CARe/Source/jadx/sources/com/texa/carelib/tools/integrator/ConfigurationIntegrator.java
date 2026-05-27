package com.texa.carelib.tools.integrator;

import android.util.Base64;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationListener;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationStatus;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationLoadedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationProgressChangedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationStatusChangedEvent;
import com.texa.carelib.care.diagnosticconfiguration.internal.ConfigurationReportParser;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.FileUtils;
import com.texa.carelib.tools.R;
import com.texa.carelib.webservices.ConfigurationReport;
import com.texa.carelib.webservices.ConfigurationReportStoredEvent;
import com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigurationIntegrator {
    private static final float CONFIGURATION_WEIGHT = 0.95f;
    private static final String TAG = "ConfigurationIntegrator";
    private static final float UPLOAD_REPORTS_WEIGHT = 0.05f;
    private final DiagnosticConfigurationListener mConfigurationProcedureListener = new AnonymousClass1();
    private DiagnosticConfiguration mDiagnosticConfiguration;
    private CareError mError;
    private ConfigurationIntegratorListener mListener;
    private float mProgress;
    private String mSerialNumber;
    private ServiceVehicleConfigurationProcedure mServiceVehicleConfigurationProcedure;

    public CareError getLastError() {
        return this.mError;
    }

    public float getProgress() {
        return this.mProgress;
    }

    public ConfigurationIntegrator setConfigurationProcedure(DiagnosticConfiguration diagnosticConfiguration) {
        this.mDiagnosticConfiguration = diagnosticConfiguration;
        return this;
    }

    public ConfigurationIntegrator setServiceVehicleConfigurationProcedure(ServiceVehicleConfigurationProcedure serviceVehicleConfigurationProcedure) {
        this.mServiceVehicleConfigurationProcedure = serviceVehicleConfigurationProcedure;
        return this;
    }

    public ConfigurationIntegrator setListener(ConfigurationIntegratorListener configurationIntegratorListener) {
        this.mListener = configurationIntegratorListener;
        return this;
    }

    protected void fireCareConfigurationCompleted(DiagnosticConfigurationLoadedEvent diagnosticConfigurationLoadedEvent) {
        ConfigurationIntegratorListener configurationIntegratorListener = this.mListener;
        if (configurationIntegratorListener != null) {
            configurationIntegratorListener.onConfigurationProcedureCompleted(diagnosticConfigurationLoadedEvent);
        }
    }

    protected void fireCareConfigurationProgressChanged(DiagnosticConfigurationProgressChangedEvent diagnosticConfigurationProgressChangedEvent) {
        ConfigurationIntegratorListener configurationIntegratorListener = this.mListener;
        if (configurationIntegratorListener != null) {
            configurationIntegratorListener.onConfigurationProcedureProgressChanged(diagnosticConfigurationProgressChangedEvent);
        }
    }

    protected void fireCareConfigurationStatusChanged(DiagnosticConfigurationStatusChangedEvent diagnosticConfigurationStatusChangedEvent) {
        ConfigurationIntegratorListener configurationIntegratorListener = this.mListener;
        if (configurationIntegratorListener != null) {
            configurationIntegratorListener.onConfigurationProcedureStatusChanged(diagnosticConfigurationStatusChangedEvent);
        }
    }

    public DiagnosticConfigurationStatus getCareConfigurationProcedureStatus() {
        DiagnosticConfiguration diagnosticConfiguration = this.mDiagnosticConfiguration;
        if (diagnosticConfiguration == null) {
            return DiagnosticConfigurationStatus.Undef;
        }
        return diagnosticConfiguration.getStatus();
    }

    public boolean updateConfigurationAndUploadReports(String str, List<File> list) {
        if (this.mDiagnosticConfiguration == null) {
            throw new IllegalStateException("Service vehicle configuration procedure is not yet set.");
        }
        if (this.mServiceVehicleConfigurationProcedure == null) {
            throw new IllegalStateException("Service vehicle configuration procedure is not yet set.");
        }
        CareLog.d(TAG, "Begin configuration...", new Object[0]);
        this.mSerialNumber = str;
        this.mDiagnosticConfiguration.setDiagnosticConfigurationListener(this.mConfigurationProcedureListener);
        try {
            this.mDiagnosticConfiguration.loadConfigurations(list);
            return true;
        } catch (CareLibException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.tools.integrator.ConfigurationIntegrator$1, reason: invalid class name */
    class AnonymousClass1 implements DiagnosticConfigurationListener {
        AnonymousClass1() {
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationListener
        public void onDiagnosticConfigurationProgressChanged(DiagnosticConfigurationProgressChangedEvent diagnosticConfigurationProgressChangedEvent) {
            ConfigurationIntegrator.this.mError = diagnosticConfigurationProgressChangedEvent.getError();
            ConfigurationIntegrator.this.mProgress = diagnosticConfigurationProgressChangedEvent.getProgress() * ConfigurationIntegrator.CONFIGURATION_WEIGHT;
            ConfigurationIntegrator.this.fireCareConfigurationProgressChanged(new DiagnosticConfigurationProgressChangedEvent(ConfigurationIntegrator.this.mDiagnosticConfiguration, ConfigurationIntegrator.this.mProgress, 100.0f, ConfigurationIntegrator.this.mError));
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationListener
        public void onDiagnosticConfigurationLoaded(final DiagnosticConfigurationLoadedEvent diagnosticConfigurationLoadedEvent) throws Throwable {
            if (diagnosticConfigurationLoadedEvent.getError() == null) {
                CareLog.d(ConfigurationIntegrator.TAG, "onCareConfigurationProcedureCompleted. Reports count: %d", Integer.valueOf(diagnosticConfigurationLoadedEvent.getConfigurationReports().size()));
            } else {
                CareLog.e(ConfigurationIntegrator.TAG, "onCareConfigurationProcedureCompleted with error: %s", diagnosticConfigurationLoadedEvent.getError());
            }
            ConfigurationIntegrator.this.mError = diagnosticConfigurationLoadedEvent.getError();
            List<ConfigurationReport> reports = ConfigurationIntegrator.this.getReports(diagnosticConfigurationLoadedEvent.getConfigurationReports());
            ConfigurationIntegrator.this.deleteReports(diagnosticConfigurationLoadedEvent.getConfigurationReports());
            if (diagnosticConfigurationLoadedEvent.getError() == null) {
                try {
                    ConfigurationIntegrator.this.mServiceVehicleConfigurationProcedure.storeConfigurationReports(ConfigurationIntegrator.this.mSerialNumber, reports, new Callback() { // from class: com.texa.carelib.tools.integrator.ConfigurationIntegrator$1$$ExternalSyntheticLambda0
                        @Override // com.texa.carelib.core.Callback
                        public final void onCompleted(Object obj) {
                            this.f$0.m756xeb2dc416(diagnosticConfigurationLoadedEvent, (ConfigurationReportStoredEvent) obj);
                        }
                    });
                    return;
                } catch (CareLibException e) {
                    CareLog.e(ConfigurationIntegrator.TAG, e, "Could not upload the configuration reports at this moment.", new Object[0]);
                    terminate(new DiagnosticConfigurationLoadedEvent(ConfigurationIntegrator.this.mDiagnosticConfiguration, diagnosticConfigurationLoadedEvent.getApplicationContext(), Collections.emptyList(), new CareError.Builder(2, 5).setMessage(diagnosticConfigurationLoadedEvent.getApplicationContext().getResources().getString(R.string.error_care_configurator_upload_not_available)).build()));
                    return;
                }
            }
            terminate(diagnosticConfigurationLoadedEvent);
        }

        /* JADX INFO: renamed from: lambda$onDiagnosticConfigurationLoaded$0$com-texa-carelib-tools-integrator-ConfigurationIntegrator$1, reason: not valid java name */
        public /* synthetic */ void m756xeb2dc416(DiagnosticConfigurationLoadedEvent diagnosticConfigurationLoadedEvent, ConfigurationReportStoredEvent configurationReportStoredEvent) {
            ConfigurationIntegrator.this.mProgress += ConfigurationIntegrator.UPLOAD_REPORTS_WEIGHT;
            ConfigurationIntegrator.this.fireCareConfigurationProgressChanged(new DiagnosticConfigurationProgressChangedEvent(ConfigurationIntegrator.this.mDiagnosticConfiguration, ConfigurationIntegrator.this.mProgress, 100.0f, null));
            ConfigurationIntegrator.this.mError = configurationReportStoredEvent.getError();
            terminate(diagnosticConfigurationLoadedEvent);
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationListener
        public void onDiagnosticConfigurationStatusChanged(DiagnosticConfigurationStatusChangedEvent diagnosticConfigurationStatusChangedEvent) {
            ConfigurationIntegrator.this.fireCareConfigurationStatusChanged(diagnosticConfigurationStatusChangedEvent);
        }

        private void terminate(DiagnosticConfigurationLoadedEvent diagnosticConfigurationLoadedEvent) {
            if (diagnosticConfigurationLoadedEvent.getError() == null) {
                CareLog.d(ConfigurationIntegrator.TAG, "Terminating...", new Object[0]);
            } else {
                CareLog.d(ConfigurationIntegrator.TAG, "Terminating with error: %s", diagnosticConfigurationLoadedEvent.getError());
            }
            ConfigurationIntegrator.this.fireCareConfigurationCompleted(diagnosticConfigurationLoadedEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteReports(List<File> list) {
        for (File file : list) {
            if (file != null) {
                try {
                    FileUtils.forceDelete(file);
                } catch (IOException unused) {
                    CareLog.e(TAG, "Could not delete file: %s", file.getAbsolutePath());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ConfigurationReport> getReports(List<File> list) throws Throwable {
        ArrayList arrayList = new ArrayList();
        for (File file : list) {
            if (file == null) {
                CareLog.wtf(TAG, "Configuration file cannot be null!!", new Object[0]);
            } else if (!file.exists()) {
                CareLog.wtf(TAG, "Configuration file does not exists!!", new Object[0]);
            } else {
                try {
                    byte[] allBytes = FileUtils.readAllBytes(file);
                    int reportStatus = ConfigurationReportParser.getReportStatus(allBytes);
                    String str = null;
                    if (reportStatus == 0) {
                        str = "OK";
                    } else if (1 == reportStatus) {
                        str = "NOT_AVAILABLE";
                    }
                    arrayList.add(new ConfigurationReport(str, Base64.encodeToString(Arrays.copyOfRange(allBytes, 4, allBytes.length), 2)));
                } catch (FileNotFoundException e) {
                    CareLog.e(TAG, e, "File doesn't exists: " + file.getAbsolutePath(), new Object[0]);
                }
            }
        }
        return arrayList;
    }
}
