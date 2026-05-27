package com.texa.carelib.care.diagnosticconfiguration.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationStatus;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationErasedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationProgressChangedEvent;
import com.texa.carelib.care.diagnosticconfiguration.internal.parser.GetConfigurationPercentPacketParser;
import com.texa.carelib.care.diagnosticconfiguration.internal.parser.StartFileDLUPParser;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.internal.ConfigurationIDSupport;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.FileCache;
import com.texa.carelib.core.utils.internal.FileUtils;
import com.texa.carelib.core.utils.internal.Utils;
import com.texa.carelib.diagnosticconfigurationdatabase.R;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.SerialProfileProxy;
import com.texa.carelib.profile.internal.SynchronizableModule;
import com.texa.carelib.profile.internal.filecarrier.FileCarrier;
import com.texa.carelib.profile.internal.filecarrier.FileCarrierListener;
import com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedProgressChangedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentProgressChangedEvent;
import com.texa.carelib.profile.internal.parser.GetDiagnosisModePacketParser;
import com.texa.carelib.profile.internal.parser.GetStatusPacketParser;
import com.texa.carelib.profile.taskexecutor.SynchronizedTask;
import com.texa.carelib.profile.taskexecutor.TaskSynchronizer;
import com.texa.carelib.utils.TimeoutCallback;
import com.texa.carelib.utils.internal.TimeoutCallbackHandler;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class SerialDiagnosticConfiguration extends DiagnosticConfigurationBase implements SerialProfileMessageReceiver, SynchronizableModule {
    public static final boolean DEFAULT_IS_SYNCHRONIZABLE = true;
    private static final int DEFAULT_RECEIVE_REPORT_TIMEOUT = 150000;
    private static final int DEFAULT_WAIT_ENGINE_ON_TIMEOUT = 90000;
    private static final float MAX_CONFIGURATION_PROGRESS = 100.0f;
    private static final int RECEIVE_CONFIGURATION_REPORT_WATCH_DOG_TIMEOUT_INTERVAL = 60000;
    private static final long TIMEOUT_CHANGE_DIAGNOSIS_MODE_CONFIGURATION = 60000;
    private final Accessory mAccessory;
    private SerialDiagnosticConfigurationStatus mCareConfigurationProcedureStatus;
    private List<ConfigPair> mConfigPairList;
    private int mCurrentConfigIndex;
    private final FileCache mInternalFileCache;
    private final Profile mProfile;
    private final PropertyChangeListener mProfilePropertyChangeListener;
    private float mProgress;
    private SerialProfileProxy mSerialProfileProxy;
    private Boolean mUseConfigurationWatchDog;
    private ScheduledFuture mWaitEngineOnScheduledFuture;
    private static final ScheduledExecutorService mExecutor = Executors.newSingleThreadScheduledExecutor();
    private static final String EXTRA_USE_QUEUE_EXECUTOR = SerialDiagnosticConfiguration.class.getName() + ".EXTRA_USE_QUEUE_EXECUTOR";
    public static final String TAG = "SerialDiagnosticConfiguration";

    public SerialDiagnosticConfiguration(Profile profile, Accessory accessory, FeatureVerifier featureVerifier, FileCache fileCache) {
        super(featureVerifier);
        PropertyChangeListener propertyChangeListener = new PropertyChangeListener() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.1
            @Override // java.beans.PropertyChangeListener
            public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                if (propertyChangeEvent.getPropertyName().equals(Profile.PROPERTY_READY) && SerialDiagnosticConfiguration.this.mProfile.isReady() && SerialDiagnosticConfiguration.this.mUseConfigurationWatchDog == null) {
                    SerialDiagnosticConfiguration.this.mSerialProfileProxy.sendMessage(new Message.Builder().setCommandID(73).build());
                }
            }
        };
        this.mProfilePropertyChangeListener = propertyChangeListener;
        if (!(profile instanceof SerialProfileProxy)) {
            throw new IllegalStateException("Profile must implement SerialProfileProxy");
        }
        this.mProfile = profile;
        SerialProfileProxy serialProfileProxy = (SerialProfileProxy) profile;
        this.mSerialProfileProxy = serialProfileProxy;
        serialProfileProxy.enableCommandSubscription(true, 48);
        this.mSerialProfileProxy.enableCommandSubscription(true, 73);
        this.mAccessory = accessory;
        this.mInternalFileCache = fileCache;
        profile.addPropertyChangeListener(propertyChangeListener);
        resetData();
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    SerialDiagnosticConfiguration setCareConfigurationProcedureStatus(SerialDiagnosticConfigurationStatus serialDiagnosticConfigurationStatus) {
        try {
            serialDiagnosticConfigurationStatus.updateConfigurationProgress();
            SerialDiagnosticConfigurationStatus serialDiagnosticConfigurationStatus2 = this.mCareConfigurationProcedureStatus;
            if (serialDiagnosticConfigurationStatus2 != null) {
                serialDiagnosticConfigurationStatus2.onExit();
            }
            this.mCareConfigurationProcedureStatus = serialDiagnosticConfigurationStatus;
            serialDiagnosticConfigurationStatus.onEnter();
            return this;
        } catch (InterruptedException unused) {
            terminate(new CareError.Builder(1, 23).setMessage(getProfile().getProfileDelegate().getApplicationContext().getString(R.string.error_care_configuration_aborted_by_user)).build());
            return this;
        }
    }

    @Override // com.texa.carelib.care.diagnosticconfiguration.internal.DiagnosticConfigurationBase
    protected void resetData() {
        super.resetData();
        setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusIdle(this));
        this.mCurrentConfigIndex = -1;
        this.mConfigPairList = new ArrayList();
        this.mProgress = 0.0f;
        getArguments().putBoolean(EXTRA_USE_QUEUE_EXECUTOR, true);
        this.mUseConfigurationWatchDog = null;
    }

    static float getConfigurationProgress(int i, List<ConfigPair> list, int i2, Date date) {
        float checkProgress;
        float f;
        float receivedReportElapsedTime;
        if (list == null || list.isEmpty()) {
            return 100.0f;
        }
        int size = list.size();
        float f2 = 2 == i ? 0.01f : 0.0f;
        for (ConfigPair configPair : list) {
            if (configPair.getDateStartCheck() == null) {
                checkProgress = (configPair.getCheckProgress() / 100.0f) * 0.2442f;
                f = size;
            } else {
                f = size;
                f2 += 0.2442f / f;
                if (configPair.getReport() == null) {
                    receivedReportElapsedTime = (getReceivedReportElapsedTime(configPair, date, i2) / i2) * (0.49580002f / f);
                    f2 += receivedReportElapsedTime;
                } else {
                    f2 += 0.49580002f / f;
                    if (!configPair.isStored() && ConfigurationReportParser.isGoodReport(configPair.getReportStatus())) {
                        checkProgress = (configPair.getStoreProgress() / 100.0f) * 0.25f;
                    } else {
                        f2 += 0.25f / f;
                    }
                }
            }
            receivedReportElapsedTime = checkProgress / f;
            f2 += receivedReportElapsedTime;
        }
        return Math.round(f2 * 100.0f);
    }

    protected static long getReceivedReportElapsedTime(ConfigPair configPair, Date date, int i) {
        long j = i;
        return configPair.getDateStartCheck() != null ? Math.min(date.getTime() - configPair.getDateStartCheck().getTime(), j) : j;
    }

    protected void setCurrentConfigIndex(int i) {
        this.mCurrentConfigIndex = i;
    }

    File moveToFirstConfiguration() {
        setCurrentConfigIndex(-1);
        return moveToNextConfiguration();
    }

    File getCurrentConfiguration() {
        if (isValidConfigurationIndex(this.mCurrentConfigIndex, this.mConfigPairList)) {
            return this.mConfigPairList.get(this.mCurrentConfigIndex).getConfig();
        }
        return null;
    }

    static boolean isValidConfigurationIndex(int i, List<ConfigPair> list) {
        return i >= 0 && Utils.isNotEmpty(list) && i < list.size();
    }

    boolean isConfigurationStored(int i) {
        if (isValidConfigurationIndex(i, this.mConfigPairList)) {
            return this.mConfigPairList.get(i).isStored();
        }
        return false;
    }

    boolean setConfigurationStored(int i) {
        if (!isValidConfigurationIndex(i, this.mConfigPairList)) {
            return false;
        }
        this.mConfigPairList.get(i).setStored(true);
        return true;
    }

    float getConfigurationCheckProgress(int i) {
        if (isValidConfigurationIndex(i, this.mConfigPairList)) {
            return this.mConfigPairList.get(i).getCheckProgress();
        }
        return Float.NaN;
    }

    boolean setConfigurationCheckProgress(int i, float f) {
        if (!isValidConfigurationIndex(i, this.mConfigPairList)) {
            return false;
        }
        this.mConfigPairList.get(i).setCheckProgress(f);
        try {
            this.mCareConfigurationProcedureStatus.updateConfigurationProgress();
            return true;
        } catch (InterruptedException unused) {
            return true;
        }
    }

    float getConfigurationStoreProgress(int i) {
        if (isValidConfigurationIndex(i, this.mConfigPairList)) {
            return this.mConfigPairList.get(i).getStoreProgress();
        }
        return Float.NaN;
    }

    boolean setConfigurationStoreProgress(int i, float f) {
        if (!isValidConfigurationIndex(i, this.mConfigPairList)) {
            return false;
        }
        this.mConfigPairList.get(i).setStoreProgress(f);
        try {
            this.mCareConfigurationProcedureStatus.updateConfigurationProgress();
            return true;
        } catch (InterruptedException unused) {
            return true;
        }
    }

    Date getConfigurationStartCheckDate(int i) {
        if (isValidConfigurationIndex(i, this.mConfigPairList)) {
            return this.mConfigPairList.get(i).getDateStartCheck();
        }
        return null;
    }

    boolean setConfigurationStartCheckDate(int i, Date date) {
        if (!isValidConfigurationIndex(i, this.mConfigPairList)) {
            return false;
        }
        this.mConfigPairList.get(i).setDateStartCheck(date);
        try {
            this.mCareConfigurationProcedureStatus.updateConfigurationProgress();
            return true;
        } catch (InterruptedException e) {
            CareLog.e(TAG, e, "Update has be interrupted.", new Object[0]);
            return true;
        }
    }

    File moveToNextConfiguration() {
        if (Utils.isEmpty(this.mConfigPairList)) {
            return null;
        }
        int i = this.mCurrentConfigIndex;
        while (true) {
            this.mCurrentConfigIndex = i + 1;
            if (this.mCurrentConfigIndex >= this.mConfigPairList.size()) {
                break;
            }
            ConfigPair configPair = this.mConfigPairList.get(this.mCurrentConfigIndex);
            if (configPair.getReport() == null) {
                break;
            }
            if (configPair.getReport() != null) {
                try {
                    if (ConfigurationReportParser.isGoodReport(configPair.getReport())) {
                        break;
                    }
                } catch (FileNotFoundException e) {
                    CareLog.e(TAG, e, "Could not check report status.", new Object[0]);
                }
            }
            i = this.mCurrentConfigIndex;
        }
        if (isValidConfigurationIndex(this.mCurrentConfigIndex, this.mConfigPairList)) {
            return this.mConfigPairList.get(this.mCurrentConfigIndex).getConfig();
        }
        return null;
    }

    protected boolean setReportInfo(int i, File file, int i2) {
        if (!isValidConfigurationIndex(i, this.mConfigPairList)) {
            return false;
        }
        CareLog.d(TAG, "Saving report %1$d/%2$d: System=%3$s Status=%4$d", Integer.valueOf(i + 1), Integer.valueOf(this.mConfigPairList.size()), this.mConfigPairList.get(i).getConfig().getName(), Integer.valueOf(i2));
        ConfigPair configPair = this.mConfigPairList.get(i);
        configPair.setReport(file);
        configPair.setReportStatus(i2);
        configPair.setStored(false);
        return true;
    }

    @Override // com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration
    public void loadConfigurations(List<File> list) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (isRunning()) {
            throw new OperationAlreadyRunningException("Could not load diagnostic configuration. Operation is already running.");
        }
        setStatus(DiagnosticConfigurationStatus.Running);
        setProgress(0.0f);
        initConfigPairList(list);
        Runnable runnable = new Runnable() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m699xe634b15d();
            }
        };
        if (isSynchronizable()) {
            TaskSynchronizer.getInstance().execute(new SynchronizedTask.Builder(TAG + "#loadConfigurations()", runnable).build());
            return;
        }
        runnable.run();
    }

    /* JADX INFO: renamed from: lambda$loadConfigurations$0$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration, reason: not valid java name */
    public /* synthetic */ void m699xe634b15d() {
        setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusSetDiagnosisMode(this));
    }

    protected List<ConfigPair> getConfigPairList() {
        return this.mConfigPairList;
    }

    protected void clearConfigPairList() {
        this.mConfigPairList.clear();
    }

    protected void initConfigPairList(List<File> list) {
        clearConfigPairList();
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            this.mConfigPairList.add(new ConfigPair(it.next()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUseConfigurationWatchDog() {
        Boolean bool = this.mUseConfigurationWatchDog;
        return bool != null && bool.booleanValue();
    }

    protected void setProgress(float f) {
        this.mProgress = f;
    }

    void terminate(CareError careError) {
        ArrayList arrayList = new ArrayList();
        if (Utils.isNotEmpty(this.mConfigPairList)) {
            for (ConfigPair configPair : this.mConfigPairList) {
                if (Utils.exists(configPair.getReport())) {
                    arrayList.add(configPair.getReport());
                }
            }
            clearConfigPairList();
        }
        terminate(arrayList, careError);
    }

    @Override // com.texa.carelib.care.diagnosticconfiguration.internal.DiagnosticConfigurationBase
    protected void terminate(List<File> list, CareError careError) {
        try {
            super.terminate(list, careError);
        } finally {
            if (isSynchronizable()) {
                TaskSynchronizer.getInstance().executeNext();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getReceiveConfigurationReportTimeout() {
        return getArguments().getInt(DiagnosticConfiguration.EXTRA_RECEIVE_REPORT_TIMEOUT, DEFAULT_RECEIVE_REPORT_TIMEOUT);
    }

    @Override // com.texa.carelib.care.diagnosticconfiguration.internal.DiagnosticConfigurationBase, com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        CommunicationStatus communicationStatus = communicationStatusChangedEvent.getCommunicationStatus();
        CareLog.v(TAG, "Communication status has changed: %s", communicationStatus);
        this.mCareConfigurationProcedureStatus.onCommunicationStatusChanged(communicationStatusChangedEvent);
        int i = AnonymousClass2.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatus.ordinal()];
        if (i == 1) {
            resetData();
        } else if (i == 2 || i == 3 || i == 4 || i == 5) {
            cancelWaitEngine();
            if (isRunning()) {
                terminate(new CareError.Builder(1, 19).setMessage(getProfile().getProfileDelegate().getApplicationContext().getString(R.string.error_connection_lost)).build());
            }
        }
        super.onCommunicationStatusChanged(communicationStatusChangedEvent);
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    void cancelWaitEngine() {
        ScheduledFuture scheduledFuture = this.mWaitEngineOnScheduledFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.mWaitEngineOnScheduledFuture = null;
        }
    }

    @Override // com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration
    public void clearConfiguration(final Callback<DiagnosticConfigurationErasedEvent> callback) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (isRunning()) {
            throw new OperationAlreadyRunningException("Could not delete configuration while configuration procedure is running.");
        }
        setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusDeleteConfigurationCommand1(this, new Callback() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m698x2cab1e56(callback, (DiagnosticConfigurationErasedEvent) obj);
            }
        }));
    }

    /* JADX INFO: renamed from: lambda$clearConfiguration$1$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration, reason: not valid java name */
    public /* synthetic */ void m698x2cab1e56(Callback callback, DiagnosticConfigurationErasedEvent diagnosticConfigurationErasedEvent) {
        if (callback != null) {
            try {
                callback.onCompleted(diagnosticConfigurationErasedEvent);
            } finally {
                setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusIdle(this));
            }
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        this.mCareConfigurationProcedureStatus.onMessageReceived(obj, message, careError);
    }

    @Override // com.texa.carelib.profile.internal.SynchronizableModule
    public boolean isSynchronizable() {
        return getArguments().getBoolean(EXTRA_USE_QUEUE_EXECUTOR, true);
    }

    @Override // com.texa.carelib.profile.internal.SynchronizableModule
    public void setSynchronizable(boolean z) {
        getArguments().putBoolean(EXTRA_USE_QUEUE_EXECUTOR, z);
    }

    static abstract class SerialDiagnosticConfigurationStatus implements SerialProfileMessageReceiver {
        private final SerialProfileProxy mProfileProxy;
        private final SerialDiagnosticConfiguration mSerialDiagnosticConfiguration;

        public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        }

        public void onEnter() {
        }

        public void onExit() {
        }

        @Override // com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
        }

        SerialProfileProxy getSerialProfileProxy() {
            return this.mProfileProxy;
        }

        SerialDiagnosticConfiguration getSerialDiagnosticConfiguration() {
            return this.mSerialDiagnosticConfiguration;
        }

        protected Context getContext() {
            return this.mSerialDiagnosticConfiguration.getProfile().getProfileDelegate().getApplicationContext();
        }

        SerialDiagnosticConfigurationStatus(SerialDiagnosticConfiguration serialDiagnosticConfiguration) {
            this.mSerialDiagnosticConfiguration = serialDiagnosticConfiguration;
            this.mProfileProxy = serialDiagnosticConfiguration.mSerialProfileProxy;
        }

        protected void updateConfigurationProgress() throws InterruptedException {
            float configurationProgress = SerialDiagnosticConfiguration.getConfigurationProgress(this.mSerialDiagnosticConfiguration.mAccessory.getDiagnosisMode(), this.mSerialDiagnosticConfiguration.mConfigPairList, this.mSerialDiagnosticConfiguration.getReceiveConfigurationReportTimeout(), Calendar.getInstance().getTime());
            if (this.mSerialDiagnosticConfiguration.mProgress != configurationProgress) {
                this.mSerialDiagnosticConfiguration.mProgress = configurationProgress;
                CareLog.v(SerialDiagnosticConfiguration.TAG, "Configuration Progress: %f%%", Float.valueOf(this.mSerialDiagnosticConfiguration.mProgress));
                SerialDiagnosticConfiguration serialDiagnosticConfiguration = this.mSerialDiagnosticConfiguration;
                DiagnosticConfigurationProgressChangedEvent diagnosticConfigurationProgressChangedEvent = new DiagnosticConfigurationProgressChangedEvent(serialDiagnosticConfiguration, serialDiagnosticConfiguration.mProgress, 100.0f, null);
                this.mSerialDiagnosticConfiguration.fireDiagnosticConfigurationProgressChanged(diagnosticConfigurationProgressChangedEvent);
                if (diagnosticConfigurationProgressChangedEvent.isCancel()) {
                    throw new InterruptedException("Operation interrupted by user.");
                }
            }
        }
    }

    class SerialConfigurationProcedureStatusIdle extends SerialDiagnosticConfigurationStatus {
        public final String _TAG;

        public SerialConfigurationProcedureStatusIdle(SerialDiagnosticConfiguration serialDiagnosticConfiguration) {
            super(serialDiagnosticConfiguration);
            this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialConfigurationProcedureStatusIdle.class.getSimpleName();
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onEnter() {
            CareLog.v(this._TAG, "onBegin()", new Object[0]);
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onExit() {
            super.onExit();
        }

        private boolean isValidMessage(Message message) {
            return 73 == message.getCommandID();
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
            super.onMessageReceived(obj, message, careError);
            if (isValidMessage(message)) {
                CareLog.d(this._TAG, "Received command: %s", Commands.getName(Integer.valueOf(message.getCommandID())));
                if (73 == message.getCommandID()) {
                    SerialDiagnosticConfiguration.this.mUseConfigurationWatchDog = Boolean.valueOf(126 != message.getStatus());
                }
            }
        }
    }

    static class SerialConfigurationProcedureStatusSetDiagnosisMode extends SerialDiagnosticConfigurationStatus {
        final String _TAG;
        private final TimeoutCallback mTimeoutCallback;

        SerialConfigurationProcedureStatusSetDiagnosisMode(SerialDiagnosticConfiguration serialDiagnosticConfiguration) {
            super(serialDiagnosticConfiguration);
            this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialConfigurationProcedureStatusSetDiagnosisMode.class.getSimpleName();
            this.mTimeoutCallback = new TimeoutCallbackHandler(new Handler(Looper.getMainLooper()));
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onEnter() {
            CareLog.d(this._TAG, "onBegin()", new Object[0]);
            if (2 == getSerialDiagnosticConfiguration().mAccessory.getDiagnosisMode()) {
                getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusDeleteConfigurations(getSerialDiagnosticConfiguration()));
            } else {
                getSerialProfileProxy().sendMessage(new Message.Builder().setCommandID(16).setPayload(new byte[]{2}).build());
            }
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onExit() {
            super.onExit();
            this.mTimeoutCallback.cancel();
        }

        private boolean isValidMessage(Message message) {
            int commandID = message.getCommandID();
            return commandID == 16 || commandID == 17;
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
            super.onMessageReceived(obj, message, careError);
            if (isValidMessage(message)) {
                CareLog.d(this._TAG, "Received command: %s", Commands.getName(Integer.valueOf(message.getCommandID())));
                if (16 == message.getCommandID()) {
                    handleMessageSetDiagnosisMode(careError);
                } else if (17 == message.getCommandID()) {
                    handleMessageGetDiagnosisMode(message);
                }
            }
        }

        private void handleMessageGetDiagnosisMode(Message message) {
            if (2 == GetDiagnosisModePacketParser.parse(message)) {
                this.mTimeoutCallback.cancel();
                try {
                    updateConfigurationProgress();
                    getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusDeleteConfigurations(getSerialDiagnosticConfiguration()));
                    return;
                } catch (InterruptedException unused) {
                    getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 23).setMessage(getContext().getString(R.string.error_care_configuration_aborted_by_user)).build());
                    return;
                }
            }
            getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 8).setMessage(getContext().getResources().getString(R.string.error_care_configuration_invalid_diagnosis_mode)).build());
        }

        private void handleMessageSetDiagnosisMode(CareError careError) {
            if (careError == null) {
                this.mTimeoutCallback.set(new Runnable() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSetDiagnosisMode$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m700x3b4f5cb0();
                    }
                }, SerialDiagnosticConfiguration.TIMEOUT_CHANGE_DIAGNOSIS_MODE_CONFIGURATION);
                return;
            }
            CareLog.e(this._TAG, "An error is occurred: %s", careError.getMessage());
            getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 8).setMessage(getContext().getResources().getString(R.string.error_care_configuration_set_diagnosis_mode) + " " + careError.getMessage()).build());
        }

        /* JADX INFO: renamed from: lambda$handleMessageSetDiagnosisMode$0$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSetDiagnosisMode, reason: not valid java name */
        public /* synthetic */ void m700x3b4f5cb0() {
            CareLog.w(this._TAG, "Wait for DiagnosisMode change notification fails due to TIMEOUT.", new Object[0]);
            getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 8).setMessage(getContext().getResources().getString(R.string.error_care_configuration_get_diagnosis_mode_timeout)).build());
        }
    }

    static class SerialConfigurationProcedureStatusDeleteConfigurations extends SerialDiagnosticConfigurationStatus {
        public final String _TAG;

        public SerialConfigurationProcedureStatusDeleteConfigurations(SerialDiagnosticConfiguration serialDiagnosticConfiguration) {
            super(serialDiagnosticConfiguration);
            this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialConfigurationProcedureStatusDeleteConfigurations.class.getSimpleName();
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onEnter() {
            CareLog.v(this._TAG, "onBegin()", new Object[0]);
            getSerialProfileProxy().sendMessage(new Message.Builder().setCommandID(74).build());
        }

        private boolean isValidMessage(Message message) {
            return message.getCommandID() == 74;
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
            super.onMessageReceived(obj, message, careError);
            if (isValidMessage(message)) {
                CareLog.d(this._TAG, "Received command: %s", Commands.getName(Integer.valueOf(message.getCommandID())));
                if (74 == message.getCommandID()) {
                    if (careError == null) {
                        if (Utils.isEmpty(getSerialDiagnosticConfiguration().mConfigPairList)) {
                            CareLog.w(this._TAG, "No configuration file provided. Procedure will terminate.", new Object[0]);
                            getSerialDiagnosticConfiguration().terminate(null);
                            return;
                        } else {
                            CareLog.d(this._TAG, "Begin configuration...", new Object[0]);
                            getSerialDiagnosticConfiguration().moveToFirstConfiguration();
                            getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusSendCheckConfiguration(getSerialDiagnosticConfiguration()));
                            return;
                        }
                    }
                    CareLog.e(this._TAG, "An error is occurred: %s", careError.getMessage());
                    getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 8).setMessage(getContext().getResources().getString(R.string.error_care_configuration_clearing_configuration)).build());
                }
            }
        }
    }

    static class SerialConfigurationProcedureStatusDeleteConfigurationCommand1 extends SerialDiagnosticConfigurationStatus {
        public final String _TAG;
        private final Callback<DiagnosticConfigurationErasedEvent> mCallback;

        public SerialConfigurationProcedureStatusDeleteConfigurationCommand1(SerialDiagnosticConfiguration serialDiagnosticConfiguration, Callback<DiagnosticConfigurationErasedEvent> callback) {
            super(serialDiagnosticConfiguration);
            this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialDiagnosticConfigurationStatus.class.getSimpleName();
            this.mCallback = callback;
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onEnter() {
            CareLog.d(this._TAG, "onBegin()", new Object[0]);
            getSerialProfileProxy().sendMessage(new Message.Builder().setCommandID(16).setPayload(new byte[]{2}).build());
        }

        private boolean isValidMessage(Message message) {
            int commandID = message.getCommandID();
            return commandID == 16 || commandID == 17;
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
            super.onMessageReceived(obj, message, careError);
            if (isValidMessage(message)) {
                CareLog.d(this._TAG, "Received command: %s", Commands.getName(Integer.valueOf(message.getCommandID())));
                if (16 == message.getCommandID()) {
                    if (careError != null) {
                        getSerialDiagnosticConfiguration().terminate(careError);
                    }
                } else if (17 == message.getCommandID()) {
                    if (careError != null) {
                        getSerialDiagnosticConfiguration().terminate(careError);
                    } else {
                        getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusDeleteConfigurationCommand2(getSerialDiagnosticConfiguration(), this.mCallback));
                    }
                }
            }
        }

        static class SerialConfigurationProcedureStatusDeleteConfigurationCommand2 extends SerialDiagnosticConfigurationStatus {
            public final String _TAG;
            private Callback<DiagnosticConfigurationErasedEvent> mCallback;

            public SerialConfigurationProcedureStatusDeleteConfigurationCommand2(SerialDiagnosticConfiguration serialDiagnosticConfiguration, Callback<DiagnosticConfigurationErasedEvent> callback) {
                super(serialDiagnosticConfiguration);
                this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialDiagnosticConfigurationStatus.class.getSimpleName();
                this.mCallback = callback;
            }

            @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
            public void onEnter() {
                CareLog.d(this._TAG, "onBegin()", new Object[0]);
                getSerialProfileProxy().sendMessage(new Message.Builder().setCommandID(74).build());
            }

            private boolean isValidMessage(Message message) {
                return message.getCommandID() == 74;
            }

            @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
            public void onMessageReceived(Object obj, Message message, CareError careError) {
                super.onMessageReceived(obj, message, careError);
                if (isValidMessage(message)) {
                    CareLog.d(this._TAG, "Received command: %s", Commands.getName(Integer.valueOf(message.getCommandID())));
                    if (74 == message.getCommandID()) {
                        Callback<DiagnosticConfigurationErasedEvent> callback = this.mCallback;
                        if (callback != null) {
                            callback.onCompleted(new DiagnosticConfigurationErasedEvent(this, careError));
                        }
                        getSerialDiagnosticConfiguration().terminate(careError);
                    }
                }
            }
        }

        static class SerialConfigurationProcedureStatusDeleteConfigurationCommand3 extends SerialDiagnosticConfigurationStatus {
            public final String _TAG;
            private final Callback<DiagnosticConfigurationErasedEvent> mCallback;

            public SerialConfigurationProcedureStatusDeleteConfigurationCommand3(SerialDiagnosticConfiguration serialDiagnosticConfiguration, Callback<DiagnosticConfigurationErasedEvent> callback) {
                super(serialDiagnosticConfiguration);
                this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialDiagnosticConfigurationStatus.class.getSimpleName();
                this.mCallback = callback;
            }

            @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
            public void onEnter() {
                CareLog.d(this._TAG, "onBegin()", new Object[0]);
                getSerialProfileProxy().sendMessage(new Message.Builder().setCommandID(16).setPayload(new byte[]{1}).build());
            }

            private boolean isValidMessage(Message message) {
                return message.getCommandID() == 16;
            }

            @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
            public void onMessageReceived(Object obj, Message message, CareError careError) {
                Callback<DiagnosticConfigurationErasedEvent> callback;
                super.onMessageReceived(obj, message, careError);
                if (isValidMessage(message)) {
                    CareLog.d(this._TAG, "Received command: %s", Commands.getName(Integer.valueOf(message.getCommandID())));
                    if (16 != message.getCommandID() || (callback = this.mCallback) == null) {
                        return;
                    }
                    callback.onCompleted(new DiagnosticConfigurationErasedEvent(this, careError));
                }
            }
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
            int i = AnonymousClass2.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
            if (i == 2 || i == 3 || i == 4 || i == 5) {
                getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 19).setMessage(getContext().getString(R.string.error_connection_lost)).build());
            }
        }
    }

    static class SerialConfigurationProcedureStatusSendCheckConfiguration extends SerialDiagnosticConfigurationStatus {
        private final String _TAG;

        public SerialConfigurationProcedureStatusSendCheckConfiguration(SerialDiagnosticConfiguration serialDiagnosticConfiguration) {
            super(serialDiagnosticConfiguration);
            this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialConfigurationProcedureStatusSendCheckConfiguration.class.getSimpleName();
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onEnter() {
            CareLog.v(this._TAG, "onBegin()", new Object[0]);
            File currentConfiguration = getSerialDiagnosticConfiguration().getCurrentConfiguration();
            if (currentConfiguration != null) {
                CareLog.d(this._TAG, "Sending configuration [%1$d/%2$d]: %3$s", Integer.valueOf(getSerialDiagnosticConfiguration().mCurrentConfigIndex + 1), Integer.valueOf(getSerialDiagnosticConfiguration().mConfigPairList.size()), currentConfiguration.getAbsolutePath());
                try {
                    getSerialProfileProxy().getSerialFileCarrier().sendFile(getContext(), new FileInputStream(currentConfiguration), 1, FileCarrier.SendActionType.Check, null, new SimpleFileCarrierListener() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialConfigurationProcedureStatusSendCheckConfiguration.1
                        @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                        public void onFileSentProgressChanged(FileSentProgressChangedEvent fileSentProgressChangedEvent) {
                            CareLog.d(SerialConfigurationProcedureStatusSendCheckConfiguration.this._TAG, "Sending file: %.02f", Float.valueOf(fileSentProgressChangedEvent.getProgress()));
                            SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().setConfigurationCheckProgress(SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().mCurrentConfigIndex, fileSentProgressChangedEvent.getProgress());
                        }

                        @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                        public void onFileSent(FileSentEvent fileSentEvent) {
                            if (fileSentEvent.getSource() instanceof FileCarrier) {
                                ((FileCarrier) fileSentEvent.getSource()).setFileCarrierListener(null);
                            }
                            int size = SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().mConfigPairList != null ? SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().mConfigPairList.size() : 0;
                            if (fileSentEvent.getError() == null) {
                                SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().setConfigurationStartCheckDate(SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().mCurrentConfigIndex, Calendar.getInstance().getTime());
                                CareLog.d(SerialConfigurationProcedureStatusSendCheckConfiguration.this._TAG, "Configuration %d/%d sent successfully.", Integer.valueOf(SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().mCurrentConfigIndex + 1), Integer.valueOf(size));
                                SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationStatusReceiveReport(SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration(), SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().isUseConfigurationWatchDog()));
                            } else {
                                CareLog.e(SerialConfigurationProcedureStatusSendCheckConfiguration.this._TAG, "Could not send configuration %d/%d.", Integer.valueOf(SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().mCurrentConfigIndex + 1), Integer.valueOf(size));
                                SerialConfigurationProcedureStatusSendCheckConfiguration.this.getSerialDiagnosticConfiguration().terminate(Collections.emptyList(), fileSentEvent.getError());
                            }
                        }
                    });
                } catch (CareLibException | FileNotFoundException unused) {
                    CareLog.e(SerialDiagnosticConfiguration.TAG, "Could not send configuration file at this moment.", new Object[0]);
                    getSerialDiagnosticConfiguration().terminate(Collections.emptyList(), new CareError.Builder(1, 8).setMessage(getContext().getString(R.string.error_could_not_send_configuration)).build());
                }
            }
        }
    }

    static class SerialConfigurationStatusReceiveReport extends SerialDiagnosticConfigurationStatus {
        private final String _TAG;
        private volatile boolean mIsWaiting;
        private ScheduledFuture mTimeoutRunnableFuture;
        private ScheduledFuture mUpdateProgressFuture;
        private boolean mUseWatchDog;

        SerialConfigurationStatusReceiveReport(SerialDiagnosticConfiguration serialDiagnosticConfiguration, boolean z) {
            super(serialDiagnosticConfiguration);
            this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialConfigurationStatusReceiveReport.class.getSimpleName();
            this.mUseWatchDog = z;
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onEnter() {
            CareLog.d(this._TAG, "onEnter()", new Object[0]);
            if (this.mIsWaiting) {
                return;
            }
            this.mIsWaiting = true;
            if (this.mUseWatchDog) {
                onEnterWatchDog();
            } else {
                onEnterBigTimeout();
            }
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onExit() {
            CareLog.v(this._TAG, "onExit()", new Object[0]);
            this.mIsWaiting = false;
            resetReceiveReportTimeoutCallback();
            ScheduledFuture scheduledFuture = this.mUpdateProgressFuture;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
                this.mUpdateProgressFuture = null;
            }
            super.onExit();
        }

        private void onEnterWatchDog() {
            scheduleReceiveReportTimeoutCallback(60000);
        }

        private void resetReceiveReportTimeoutCallback() {
            if (this.mTimeoutRunnableFuture != null) {
                CareLog.v(this._TAG, "Removing receive configuration timeout.", new Object[0]);
                this.mTimeoutRunnableFuture.cancel(true);
                this.mTimeoutRunnableFuture = null;
            }
        }

        private void scheduleReceiveReportTimeoutCallback(int i) {
            this.mTimeoutRunnableFuture = SerialDiagnosticConfiguration.mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m702xc84ed86d();
                }
            }, i, TimeUnit.MILLISECONDS);
        }

        /* JADX INFO: renamed from: lambda$scheduleReceiveReportTimeoutCallback$0$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport, reason: not valid java name */
        public /* synthetic */ void m702xc84ed86d() {
            if (this.mIsWaiting) {
                CareLog.w(this._TAG, "Receive report TIMEOUT!!! Terminating configuration procedure...", new Object[0]);
                getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 8).setMessage(getContext().getResources().getString(R.string.error_receive_configuration_report_timeout)).build());
            }
        }

        private void onEnterBigTimeout() {
            this.mUpdateProgressFuture = SerialDiagnosticConfiguration.mExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m701xeadbaa68();
                }
            }, 1000L, 1000L, TimeUnit.MILLISECONDS);
            CareLog.d(this._TAG, "Setting receive configuration report timeout...", new Object[0]);
            scheduleReceiveReportTimeoutCallback(getSerialDiagnosticConfiguration().getReceiveConfigurationReportTimeout());
        }

        /* JADX INFO: renamed from: lambda$onEnterBigTimeout$1$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport, reason: not valid java name */
        public /* synthetic */ void m701xeadbaa68() {
            try {
                updateConfigurationProgress();
            } catch (InterruptedException unused) {
                getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 23).setMessage(getContext().getString(R.string.error_care_configuration_aborted_by_user)).build());
            }
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
            super.onMessageReceived(obj, message, careError);
            if (48 == message.getCommandID()) {
                CareLog.d(this._TAG, "Received command: %s", Commands.getName(Integer.valueOf(message.getCommandID())));
                onReceiveBeginFileDownload(message, careError);
                return;
            }
            if (230 == message.getCommandID()) {
                CareLog.d(this._TAG, "Received command: %s ", Commands.getName(Integer.valueOf(message.getCommandID())));
                onReceiveGetStatus(message, careError);
            } else if (73 == message.getCommandID()) {
                CareLog.d(this._TAG, "Received command: %s ", Commands.getName(Integer.valueOf(message.getCommandID())));
                CareLog.v(this._TAG, "Configuration verify progress: %d ", GetConfigurationPercentPacketParser.parse(message));
                resetReceiveReportTimeoutCallback();
                try {
                    updateConfigurationProgress();
                    scheduleReceiveReportTimeoutCallback(60000);
                } catch (InterruptedException unused) {
                    getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 23).setMessage(getContext().getString(R.string.error_care_configuration_aborted_by_user)).build());
                }
            }
        }

        private void onReceiveGetStatus(Message message, CareError careError) {
            if (careError != null && DiagnosticConfigurationStatus.WaitingForEngineON == getSerialDiagnosticConfiguration().getStatus() && GetStatusPacketParser.parse(message).getStatus() == 3) {
                getSerialDiagnosticConfiguration().cancelWaitEngine();
                getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusSendCheckConfiguration(getSerialDiagnosticConfiguration()));
            }
        }

        private void onReceiveBeginFileDownload(Message message, CareError careError) {
            this.mIsWaiting = false;
            resetReceiveReportTimeoutCallback();
            if (careError != null) {
                CareLog.e(this._TAG, "Couldn't receive configuration report. (BeginFileDownload error).", new Object[0]);
                getSerialDiagnosticConfiguration().terminate(careError);
                return;
            }
            StartFileDLUPParser startFileDLUPParser = new StartFileDLUPParser();
            int fileLength = startFileDLUPParser.getFileLength(message.getData());
            int fileType = startFileDLUPParser.getFileType(message.getData());
            CareLog.d(this._TAG, "File type:%d", Integer.valueOf(fileType));
            CareLog.d(this._TAG, "File length:%d", Integer.valueOf(fileLength));
            if (fileType == 17) {
                if (fileLength == 0) {
                    CareLog.w(this._TAG, "Report length is zero!", new Object[0]);
                    getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 8).setMessage(getContext().getResources().getString(R.string.error_configuration_report_empty)).build());
                } else {
                    if (getSerialProfileProxy().getSerialFileCarrier().receiveFileWithType(getContext(), fileType, fileLength, new AnonymousClass1())) {
                        return;
                    }
                    CareLog.e(this._TAG, "Could not download configuration report at this moment.", new Object[0]);
                }
            }
        }

        /* JADX INFO: renamed from: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$1, reason: invalid class name */
        class AnonymousClass1 extends SimpleFileCarrierListener {
            AnonymousClass1() {
            }

            @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
            public void onFileReceived(FileReceivedEvent fileReceivedEvent) {
                if (fileReceivedEvent.getError() != null) {
                    CareLog.e(SerialConfigurationStatusReceiveReport.this._TAG, "Could not receive configuration report. Error:%s", fileReceivedEvent.getError().getMessage());
                    SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().terminate(fileReceivedEvent.getError());
                    return;
                }
                CareLog.d(SerialConfigurationStatusReceiveReport.this._TAG, "Configuration report received.", new Object[0]);
                File currentConfiguration = SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().getCurrentConfiguration();
                String str = "report_";
                if (currentConfiguration != null) {
                    str = ((("report_" + FileUtils.getFileNameWithoutExtension(currentConfiguration.getName())) + "_") + Utils.getISO8601Date(Utils.getUTCNow())) + ".dat";
                }
                int reportStatus = -1;
                try {
                    File fileStore = SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().mInternalFileCache.store(FileCache.DIR_DIAGNOSIS_CONFIGURATION, str, fileReceivedEvent.getFile());
                    reportStatus = ConfigurationReportParser.getReportStatus(fileReceivedEvent.getFile());
                    SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().setReportInfo(SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().mCurrentConfigIndex, fileStore, reportStatus);
                } catch (IOException e) {
                    CareLog.e(SerialConfigurationStatusReceiveReport.this._TAG, e, "Could not store diagnostic configuration report.", new Object[0]);
                }
                if (reportStatus == 2) {
                    CareLog.w(SerialConfigurationStatusReceiveReport.this._TAG, "Engine is OFF!", new Object[0]);
                    SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().setStatus(DiagnosticConfigurationStatus.WaitingForEngineON);
                    int i = SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().getArguments().getInt(DiagnosticConfiguration.EXTRA_WAIT_ENGINE_ON_TIMEOUT, SerialDiagnosticConfiguration.DEFAULT_WAIT_ENGINE_ON_TIMEOUT);
                    SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().cancelWaitEngine();
                    SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().mWaitEngineOnScheduledFuture = SerialDiagnosticConfiguration.mExecutor.schedule(new Runnable() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m703x8e389870();
                        }
                    }, i, TimeUnit.MILLISECONDS);
                    return;
                }
                if (SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().moveToNextConfiguration() != null) {
                    CareLog.d(SerialConfigurationStatusReceiveReport.this._TAG, "Proceeding with next configuration file...", new Object[0]);
                    SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusSendCheckConfiguration(SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration()));
                } else {
                    CareLog.d(SerialConfigurationStatusReceiveReport.this._TAG, "Proceeding with status ResetConfiguration...", new Object[0]);
                    SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusResetConfiguration(SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration()));
                }
            }

            /* JADX INFO: renamed from: lambda$onFileReceived$0$com-texa-carelib-care-diagnosticconfiguration-internal-SerialDiagnosticConfiguration$SerialConfigurationStatusReceiveReport$1, reason: not valid java name */
            public /* synthetic */ void m703x8e389870() {
                CareLog.w(SerialConfigurationStatusReceiveReport.this._TAG, "Wait for ignition ON TIMEOUT. Procedure aborted.", new Object[0]);
                SerialConfigurationStatusReceiveReport.this.getSerialDiagnosticConfiguration().terminate(new CareError.Builder(1, 8).setMessage(SerialConfigurationStatusReceiveReport.this.getContext().getResources().getString(R.string.error_care_configuration_ignition_off)).build());
            }

            @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
            public void onFileReceivedProgressChanged(FileReceivedProgressChangedEvent fileReceivedProgressChangedEvent) {
                CareLog.d(SerialConfigurationStatusReceiveReport.this._TAG, "Receive file: %.02f", Float.valueOf(fileReceivedProgressChangedEvent.getProgress()));
            }
        }
    }

    static class SerialConfigurationProcedureStatusResetConfiguration extends SerialDiagnosticConfigurationStatus {
        private final String _TAG;

        public SerialConfigurationProcedureStatusResetConfiguration(SerialDiagnosticConfiguration serialDiagnosticConfiguration) {
            super(serialDiagnosticConfiguration);
            this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialConfigurationProcedureStatusResetConfiguration.class.getSimpleName();
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onEnter() {
            CareLog.d(this._TAG, "onBegin()", new Object[0]);
            getSerialProfileProxy().sendMessage(new Message.Builder().setCommandID(74).build());
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
            super.onMessageReceived(obj, message, careError);
            if (message.getCommandID() == 74) {
                CareLog.d(this._TAG, "Received EraseConfigurationFileArea", new Object[0]);
                onReceiveEraseConfigurationArea(careError);
            }
        }

        private void onReceiveEraseConfigurationArea(CareError careError) {
            if (careError != null) {
                CareLog.e(this._TAG, "EraseConfigurationFileArea error: %s.", careError.getMessage());
                getSerialDiagnosticConfiguration().terminate(careError);
                return;
            }
            CareLog.d(this._TAG, "Begin configuration...", new Object[0]);
            getSerialDiagnosticConfiguration().moveToFirstConfiguration();
            if (getSerialDiagnosticConfiguration().getCurrentConfiguration() == null) {
                CareLog.w(this._TAG, "No configuration available...", new Object[0]);
                getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusFinalize(getSerialDiagnosticConfiguration()));
            } else {
                CareLog.d(this._TAG, "Proceed with status SendStoreConfiguration...", new Object[0]);
                getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusSendStoreConfiguration(getSerialDiagnosticConfiguration()));
            }
        }
    }

    static class SerialConfigurationProcedureStatusSendStoreConfiguration extends SerialDiagnosticConfigurationStatus {
        private final String _TAG;

        public SerialConfigurationProcedureStatusSendStoreConfiguration(SerialDiagnosticConfiguration serialDiagnosticConfiguration) {
            super(serialDiagnosticConfiguration);
            this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialConfigurationProcedureStatusSendStoreConfiguration.class.getSimpleName();
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onEnter() {
            CareLog.d(this._TAG, "onBegin()", new Object[0]);
            File currentConfiguration = getSerialDiagnosticConfiguration().getCurrentConfiguration();
            if (currentConfiguration == null) {
                goToStatusFinalize();
                return;
            }
            CareLog.d(this._TAG, "Storing configuration %d/%d: BEGIN", Integer.valueOf(getSerialDiagnosticConfiguration().mCurrentConfigIndex + 1), Integer.valueOf(getSerialDiagnosticConfiguration().mConfigPairList.size()));
            try {
                getSerialProfileProxy().getSerialFileCarrier().sendFile(getContext(), new FileInputStream(currentConfiguration), 1, FileCarrier.SendActionType.Store, null, new FileCarrierListener() { // from class: com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialConfigurationProcedureStatusSendStoreConfiguration.1
                    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                    public void onFileReceived(FileReceivedEvent fileReceivedEvent) {
                    }

                    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                    public void onFileReceivedProgressChanged(FileReceivedProgressChangedEvent fileReceivedProgressChangedEvent) {
                    }

                    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                    public void onFileSent(FileSentEvent fileSentEvent) {
                        CareLog.d(SerialConfigurationProcedureStatusSendStoreConfiguration.this._TAG, "onFileSent()", new Object[0]);
                        if (fileSentEvent.getError() != null) {
                            CareLog.e(SerialConfigurationProcedureStatusSendStoreConfiguration.this._TAG, "Storing configuration %d/%d: FAILED", Integer.valueOf(SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().mCurrentConfigIndex + 1), Integer.valueOf(SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().mConfigPairList.size()));
                            SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().terminate(fileSentEvent.getError());
                            return;
                        }
                        CareLog.d(SerialConfigurationProcedureStatusSendStoreConfiguration.this._TAG, "Storing configuration %d/%d: SUCCESS", Integer.valueOf(SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().mCurrentConfigIndex + 1), Integer.valueOf(SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().mConfigPairList.size()));
                        SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().setConfigurationStored(SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().mCurrentConfigIndex);
                        if (SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().moveToNextConfiguration() != null) {
                            SerialConfigurationProcedureStatusSendStoreConfiguration.this.goToStatusSendStoreConfiguration();
                        } else {
                            SerialConfigurationProcedureStatusSendStoreConfiguration.this.goToStatusFinalize();
                        }
                    }

                    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                    public void onFileSentProgressChanged(FileSentProgressChangedEvent fileSentProgressChangedEvent) {
                        CareLog.d(SerialConfigurationProcedureStatusSendStoreConfiguration.this._TAG, "Sending file: %.02f", Float.valueOf(fileSentProgressChangedEvent.getProgress()));
                        SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().setConfigurationStoreProgress(SerialConfigurationProcedureStatusSendStoreConfiguration.this.getSerialDiagnosticConfiguration().mCurrentConfigIndex, fileSentProgressChangedEvent.getProgress());
                    }
                });
            } catch (CareLibException | FileNotFoundException e) {
                CareLog.e(SerialDiagnosticConfiguration.TAG, e, "Could not send the file to the dongle.", new Object[0]);
                getSerialDiagnosticConfiguration().terminate(Collections.emptyList(), new CareError.Builder(1, 8).setMessage(getContext().getString(R.string.could_not_store_configuration)).build());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void goToStatusFinalize() {
            CareLog.d(this._TAG, "Proceeding with status Finalize...", new Object[0]);
            getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusFinalize(getSerialDiagnosticConfiguration()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void goToStatusSendStoreConfiguration() {
            CareLog.d(this._TAG, "Proceeding with status SendStoreConfiguration...", new Object[0]);
            getSerialDiagnosticConfiguration().setCareConfigurationProcedureStatus(new SerialConfigurationProcedureStatusSendStoreConfiguration(getSerialDiagnosticConfiguration()));
        }
    }

    static class SerialConfigurationProcedureStatusFinalize extends SerialDiagnosticConfigurationStatus {
        private final String _TAG;

        public SerialConfigurationProcedureStatusFinalize(SerialDiagnosticConfiguration serialDiagnosticConfiguration) {
            super(serialDiagnosticConfiguration);
            this._TAG = SerialDiagnosticConfiguration.TAG + "#" + SerialConfigurationProcedureStatusFinalize.class.getSimpleName();
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onEnter() {
            CareLog.d(this._TAG, "onBegin()", new Object[0]);
            getSerialProfileProxy().sendMessage(new Message.Builder().setCommandID(76).setPayload(ConfigurationIDSupport.toByteArray(BigInteger.ZERO)).build());
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus
        public void onExit() {
            CareLog.d(this._TAG, "onExit()", new Object[0]);
        }

        @Override // com.texa.carelib.care.diagnosticconfiguration.internal.SerialDiagnosticConfiguration.SerialDiagnosticConfigurationStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
            super.onMessageReceived(obj, message, careError);
            if (message.getCommandID() == 76) {
                CareLog.d(this._TAG, "received SetConfigurationID", new Object[0]);
                getSerialProfileProxy().sendMessage(new Message.Builder().setCommandID(77).build());
                getSerialDiagnosticConfiguration().terminate(careError);
            }
        }
    }
}
