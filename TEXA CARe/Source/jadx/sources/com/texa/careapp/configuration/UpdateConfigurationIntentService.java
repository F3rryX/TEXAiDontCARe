package com.texa.careapp.configuration;

import android.app.ActivityManager;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ServerLogModel;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationStatus;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationLoadedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationProgressChangedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationStatusChangedEvent;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.tools.integrator.ConfigurationIntegrator;
import com.texa.carelib.tools.integrator.ConfigurationIntegratorListener;
import com.texa.carelib.webservices.ServiceVehicleConfigurationDownloadedEvent;
import com.texa.carelib.webservices.TexaService;
import java.io.File;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class UpdateConfigurationIntentService extends IntentService {
    private static final String TAG = "UpdateConfigurationIntentService";

    @Inject
    protected ICareObserver mCareObserver;

    @Inject
    protected DiagnosticConfiguration mDiagnosticConfiguration;

    @Inject
    protected DongleDataManager mDongleDataManager;
    protected DongleModel mDongleModel;

    @Inject
    protected EventBus mEventBus;

    @Inject
    protected LoggerManager mLoggerManager;

    @Inject
    protected Profile mProfile;

    @Inject
    protected TexaService mTexaService;

    public static class ConfigurationUpdateSuccessEvent {
    }

    public UpdateConfigurationIntentService() {
        super(TAG);
    }

    public static boolean isRunning(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        Log.i(TAG, "isRunning...");
        Iterator<ActivityManager.RunningServiceInfo> it = activityManager.getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            String className = it.next().service.getClassName();
            String str = TAG;
            if (className.contains(str)) {
                Log.i(str, "isRunning true");
                return true;
            }
        }
        Log.i(TAG, "isRunning false");
        return false;
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        ((CareApplication) getApplication()).component().inject(this);
        this.mDongleModel = this.mDongleDataManager.getDongleModel();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        postUpdate(R.string.getting_care_infos);
        downloadConfiguration(this.mDongleModel.getHwid(), this.mDongleModel.getVinCode(), this.mDongleModel.getInterpreterVersion());
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    private void downloadConfiguration(final String str, String str2, BigInteger bigInteger) {
        Log.d(TAG, "Downloading configuration for HWID=[" + str + "], VIN=[" + str2 + "], InterpreterVersion=[" + bigInteger + "]");
        try {
            postUpdate(R.string.configuration_update_in_progress);
            this.mTexaService.getVehicleConfigurationProcedure().downloadConfiguration(str, str2, bigInteger, new Callback() { // from class: com.texa.careapp.configuration.UpdateConfigurationIntentService$$ExternalSyntheticLambda0
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m610x8b824a80(str, (ServiceVehicleConfigurationDownloadedEvent) obj);
                }
            });
        } catch (CareLibException e) {
            e.printStackTrace();
            Log.w(TAG, "canDownloadConfiguration is false");
            postError(new Exception("canDownloadConfiguration is false"));
        }
    }

    /* JADX INFO: renamed from: lambda$downloadConfiguration$0$com-texa-careapp-configuration-UpdateConfigurationIntentService, reason: not valid java name */
    public /* synthetic */ void m610x8b824a80(String str, ServiceVehicleConfigurationDownloadedEvent serviceVehicleConfigurationDownloadedEvent) {
        if (serviceVehicleConfigurationDownloadedEvent.getError() == null) {
            Log.d(TAG, "Configuration download has completed successfully. Starting configuration procedure.");
            if (beginCAReConfiguration(str, serviceVehicleConfigurationDownloadedEvent.getConfigurationFiles())) {
                return;
            }
            deleteDownloadedResources(serviceVehicleConfigurationDownloadedEvent.getConfigurationFiles());
            return;
        }
        Log.w(TAG, serviceVehicleConfigurationDownloadedEvent.getError().toString());
        postError(serviceVehicleConfigurationDownloadedEvent.getError());
    }

    private boolean beginCAReConfiguration(String str, final List<File> list) {
        String str2 = TAG;
        Log.d(str2, "beginCAReConfiguration()");
        if (Utils.isEmpty(str)) {
            Log.w(str2, "HWID cannot be null or empty.");
            postError(new Exception("HWID is null or empty."));
            return false;
        }
        if (Utils.isEmpty(list)) {
            Log.w(str2, "configuration_files list is empty");
            postError(new Exception(getResources().getString(R.string.error_empty_configuration_file_list)));
            return false;
        }
        ConfigurationIntegrator configurationIntegrator = new ConfigurationIntegrator();
        configurationIntegrator.setConfigurationProcedure(this.mDiagnosticConfiguration);
        configurationIntegrator.setServiceVehicleConfigurationProcedure(this.mTexaService.getVehicleConfigurationProcedure());
        configurationIntegrator.setListener(new ConfigurationIntegratorListener() { // from class: com.texa.careapp.configuration.UpdateConfigurationIntentService.1
            private int mConfigurationProgress = 0;

            @Override // com.texa.carelib.tools.integrator.ConfigurationIntegratorListener
            public void onConfigurationProcedureCompleted(DiagnosticConfigurationLoadedEvent diagnosticConfigurationLoadedEvent) {
                Log.d(UpdateConfigurationIntentService.TAG, "Finish configuration procedure");
                UpdateConfigurationIntentService.this.deleteDownloadedResources(list);
                CareError error = diagnosticConfigurationLoadedEvent.getError();
                if (error != null) {
                    UpdateConfigurationIntentService.this.postError(error);
                } else {
                    UpdateConfigurationIntentService.this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.SUCCESSFULL, ServerLogModel.LogNote.CARE_CONFIGURATION_LOADED);
                    UpdateConfigurationIntentService.this.postSuccess();
                }
            }

            @Override // com.texa.carelib.tools.integrator.ConfigurationIntegratorListener
            public void onConfigurationProcedureProgressChanged(DiagnosticConfigurationProgressChangedEvent diagnosticConfigurationProgressChangedEvent) {
                this.mConfigurationProgress = (int) diagnosticConfigurationProgressChangedEvent.getProgress();
                Log.d(UpdateConfigurationIntentService.TAG, "Configuration procedure in progress " + this.mConfigurationProgress);
                UpdateConfigurationIntentService.this.postUpdate(R.string.configuration_update_in_progress, this.mConfigurationProgress);
            }

            @Override // com.texa.carelib.tools.integrator.ConfigurationIntegratorListener
            public void onConfigurationProcedureStatusChanged(DiagnosticConfigurationStatusChangedEvent diagnosticConfigurationStatusChangedEvent) {
                Log.i(UpdateConfigurationIntentService.TAG, "Configuration procedure status is changed -> " + diagnosticConfigurationStatusChangedEvent.getStatus().name());
                int i = AnonymousClass2.$SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus[diagnosticConfigurationStatusChangedEvent.getStatus().ordinal()];
                if (i == 1) {
                    UpdateConfigurationIntentService.this.postUpdate(R.string.configuration_update_waiting_engine_on);
                } else {
                    if (i != 2) {
                        return;
                    }
                    UpdateConfigurationIntentService.this.postUpdate(R.string.configuration_update_in_progress, this.mConfigurationProgress);
                }
            }
        });
        boolean zUpdateConfigurationAndUploadReports = configurationIntegrator.updateConfigurationAndUploadReports(str, list);
        Log.d(str2, "canUpdateConfigurationAndUploadReports=" + zUpdateConfigurationAndUploadReports);
        if (!zUpdateConfigurationAndUploadReports) {
            postError(new Exception("updateConfigurationAndUploadReports returned false"));
        }
        return zUpdateConfigurationAndUploadReports;
    }

    /* JADX INFO: renamed from: com.texa.careapp.configuration.UpdateConfigurationIntentService$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus;

        static {
            int[] iArr = new int[DiagnosticConfigurationStatus.values().length];
            $SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus = iArr;
            try {
                iArr[DiagnosticConfigurationStatus.WaitingForEngineON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus[DiagnosticConfigurationStatus.Running.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    protected boolean deleteDownloadedResources(List<File> list) {
        boolean z = true;
        if (!Utils.isEmpty(list)) {
            for (File file : list) {
                if (file != null && file.exists() && !file.delete()) {
                    Log.e(TAG, "Could not delete file: " + file.getAbsolutePath());
                    z = false;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postUpdate(int i) {
        this.mEventBus.post(new ConfigurationUpdateEvent(getString(i), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postUpdate(int i, int i2) {
        this.mEventBus.post(new ConfigurationUpdateEvent(getString(i), i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postError(CareError careError) {
        Throwable exc;
        if (careError.getException() != null) {
            exc = careError.getException();
        } else {
            String string = careError.toString();
            if (1 == careError.getDomain() && 19 == careError.getErrorCode()) {
                string = getResources().getString(R.string.care_error_connection_lost);
            }
            exc = new Exception(string);
        }
        postError(exc);
    }

    private void postError(Throwable th) {
        Timber.w(th, "update configuration exception", new Object[0]);
        this.mLoggerManager.log(ServerLogModel.LogEvent.UNDEFINED, ServerLogModel.ResultForLog.FAILED, "configuration error: " + th.getMessage());
        this.mEventBus.post(new ConfigurationUpdateErrorEvent(th));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postSuccess() {
        this.mEventBus.post(new ConfigurationUpdateSuccessEvent());
    }

    public static class ConfigurationUpdateErrorEvent {
        private final Throwable exception;

        public ConfigurationUpdateErrorEvent(Throwable th) {
            this.exception = th;
        }

        public Throwable getException() {
            return this.exception;
        }
    }

    public static class ConfigurationUpdateEvent {
        private final String mMessage;
        private final int mProgress;

        public ConfigurationUpdateEvent(String str, int i) {
            this.mMessage = str;
            this.mProgress = i;
        }

        public String getMessage() {
            return this.mMessage;
        }

        public int getProgress() {
            return this.mProgress;
        }
    }
}
