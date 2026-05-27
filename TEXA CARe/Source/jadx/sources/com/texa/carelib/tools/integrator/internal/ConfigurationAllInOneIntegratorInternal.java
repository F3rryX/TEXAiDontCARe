package com.texa.carelib.tools.integrator.internal;

import android.os.Handler;
import android.os.Looper;
import androidx.work.WorkRequest;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.carelib.care.accessory.Accessory;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfiguration;
import com.texa.carelib.care.diagnosticconfiguration.DiagnosticConfigurationStatus;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationLoadedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationProgressChangedEvent;
import com.texa.carelib.care.diagnosticconfiguration.events.DiagnosticConfigurationStatusChangedEvent;
import com.texa.carelib.care.vehicleinfo.VehicleInfo;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.CarelibSchedulers;
import com.texa.carelib.core.ObservableObjectBase;
import com.texa.carelib.core.OperationAlreadyRunningException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SynchronizableModule;
import com.texa.carelib.profile.taskexecutor.SynchronizedTask;
import com.texa.carelib.profile.taskexecutor.TaskSynchronizer;
import com.texa.carelib.tools.R;
import com.texa.carelib.tools.integrator.ConfigurationAllInOneIntegratorListener;
import com.texa.carelib.tools.integrator.ConfigurationAllInOneIntegratorStatus;
import com.texa.carelib.tools.integrator.ConfigurationIntegrator;
import com.texa.carelib.tools.integrator.ConfigurationIntegratorListener;
import com.texa.carelib.tools.integrator.events.ConfigurationAllInOneIntegratorCompletedEvent;
import com.texa.carelib.tools.integrator.events.ConfigurationAllInOneIntegratorConfirmationRequiredEvent;
import com.texa.carelib.tools.integrator.events.ConfigurationAllInOneIntegratorProgressChangedEvent;
import com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal;
import com.texa.carelib.utils.TimeoutCallback;
import com.texa.carelib.utils.internal.TimeoutCallbackHandler;
import com.texa.carelib.webservices.ServiceVehicleConfigurationDownloadedEvent;
import com.texa.carelib.webservices.ServiceVehicleConfigurationInfo;
import com.texa.carelib.webservices.ServiceVehicleConfigurationProcedure;
import com.texa.carelib.webservices.VehicleConfigurationInfoLoadedEvent;
import com.texa.carelib.webservices.VehicleConfigurationStatus;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.File;
import java.math.BigInteger;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class ConfigurationAllInOneIntegratorInternal extends ObservableObjectBase {
    private static final int ACQUIRING_DEVICE_INFO_TIMEOUT_INTERVAL = 600000;
    private static final int CHECK_DEVICE_CONFIGURATION_STATUS_BUSY_TIMEOUT_INTERVAL = 30000;
    private static final int CHECK_DEVICE_CONFIGURATION_STATUS_TIMEOUT_INTERVAL = 120000;
    private static final float CHECK_PROGRESS_1 = 1.0f;
    private static final float CHECK_PROGRESS_2 = 55.0f;
    private static final float CHECK_PROGRESS_MAX = 100.0f;
    private static final float DOWNLOAD_PROGRESS_1 = 1.0f;
    private static final float DOWNLOAD_PROGRESS_MAX = 5.0f;
    private static final float PROGRESS_MAX = 100.0f;
    public static final String PROPERTY_STATUS = "com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal#PROPERTY_STATUS";
    public static final String TAG = "ConfigurationAllInOneIntegratorInternal";
    private static final int UPGRADE_CONFIGURATION_TIMEOUT_INTERVAL = 900000;
    private static final long USER_ACK_TIMEOUT_INTERVAL = 60000;
    private final Accessory mAccessory;
    private final Communication mCommunication;
    private final DiagnosticConfiguration mConfigurationProcedure;
    private String mForceVehicleID;
    private CareError mLastError;
    private ConfigurationAllInOneIntegratorListener mListener;
    private final Profile mProfile;
    private float mProgress;
    private final ServiceVehicleConfigurationInfo mServiceVehicleConfigurationInfo;
    private final ServiceVehicleConfigurationProcedure mServiceVehicleConfigurationProcedure;
    private boolean mSkipConfirmation = false;
    private ConfigurationAllInOneIntegratorStatus mState = ConfigurationAllInOneIntegratorStatus.Undef;
    private ConfigurationAllInOneIntegratorInternalStatus mStatusInternal = new ConfigurationAllInOneIntegratorInternalStatusReady(this, null);
    private final TaskSynchronizer mTaskSynchronizer;
    private final VehicleInfo mVehicleInfo;

    public ConfigurationAllInOneIntegratorInternal(Communication communication, Profile profile, Accessory accessory, VehicleInfo vehicleInfo, DiagnosticConfiguration diagnosticConfiguration, ServiceVehicleConfigurationInfo serviceVehicleConfigurationInfo, ServiceVehicleConfigurationProcedure serviceVehicleConfigurationProcedure) {
        this.mCommunication = communication;
        this.mProfile = profile;
        this.mAccessory = accessory;
        this.mVehicleInfo = vehicleInfo;
        this.mConfigurationProcedure = diagnosticConfiguration;
        this.mServiceVehicleConfigurationInfo = serviceVehicleConfigurationInfo;
        this.mServiceVehicleConfigurationProcedure = serviceVehicleConfigurationProcedure;
        this.mTaskSynchronizer = retrieveQueueExecutorIfSupported(profile);
        communication.addPropertyChangeListener(new PropertyChangeListener() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda0
            @Override // java.beans.PropertyChangeListener
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                this.f$0.m759x63886d33(propertyChangeEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal, reason: not valid java name */
    public /* synthetic */ void m759x63886d33(PropertyChangeEvent propertyChangeEvent) {
        if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
            onCommunicationStatusChanged(new CommunicationStatusChangedEvent(this.mCommunication, (CommunicationStatus) propertyChangeEvent.getNewValue(), this.mCommunication.getCurrentDevice()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ConfigurationAllInOneIntegratorListener getConfigurationAllInOneIntegratorListener() {
        return this.mListener;
    }

    public void setConfigurationAllInOneIntegratorListener(ConfigurationAllInOneIntegratorListener configurationAllInOneIntegratorListener) {
        this.mListener = configurationAllInOneIntegratorListener;
    }

    private TaskSynchronizer retrieveQueueExecutorIfSupported(Profile profile) {
        try {
            return (TaskSynchronizer) profile.getClass().getMethod("getQueueExecutor", new Class[0]).invoke(profile, new Object[0]);
        } catch (Exception e) {
            CareLog.e(TAG, e, "retrieveQueueExecutorIfSupported() fails", new Object[0]);
            return null;
        }
    }

    public synchronized ConfigurationAllInOneIntegratorStatus getStatusInternal() {
        return this.mState;
    }

    public CareError getLastErrorInternal() {
        return this.mLastError;
    }

    public void setForcedVehicleIDInternal(String str) {
        this.mForceVehicleID = str;
    }

    public void beginDeviceProgrammingInternal() throws IllegalStateException {
        setStatusInternal(new ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade(this, null));
    }

    private boolean isWaitingUserAck() {
        return this.mStatusInternal instanceof ConfigurationAllInOneIntegratorInternalStatusAskConfirmation;
    }

    public void checkDeviceConfigurationStatusInternal() throws OperationAlreadyRunningException {
        if (isRunning()) {
            throw new OperationAlreadyRunningException();
        }
        execute("checkDeviceConfigurationStatusInternal", new Runnable() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m758x53442f1();
            }
        }, UPGRADE_CONFIGURATION_TIMEOUT_INTERVAL);
    }

    /* JADX INFO: renamed from: lambda$checkDeviceConfigurationStatusInternal$1$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal, reason: not valid java name */
    public /* synthetic */ void m758x53442f1() {
        setStatusInternal(new ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus());
    }

    private boolean isRunning() {
        return !(this.mStatusInternal instanceof ConfigurationAllInOneIntegratorInternalStatusReady);
    }

    public boolean skipConfirmation() {
        return this.mSkipConfirmation;
    }

    public void setSkipConfirmation(boolean z) {
        this.mSkipConfirmation = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStatusInternal(ConfigurationAllInOneIntegratorInternalStatus configurationAllInOneIntegratorInternalStatus) {
        ConfigurationAllInOneIntegratorInternalStatus configurationAllInOneIntegratorInternalStatus2 = this.mStatusInternal;
        if (configurationAllInOneIntegratorInternalStatus2 != null) {
            configurationAllInOneIntegratorInternalStatus2.onExit();
        }
        this.mStatusInternal = configurationAllInOneIntegratorInternalStatus;
        if (configurationAllInOneIntegratorInternalStatus != null) {
            configurationAllInOneIntegratorInternalStatus.onEnter();
        }
    }

    private void execute(String str, Runnable runnable, int i) {
        if (this.mTaskSynchronizer != null) {
            this.mTaskSynchronizer.execute(new SynchronizedTask.Builder(str, runnable).setTimeout(i).build());
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getVehicleID() {
        if (StringUtils.isNullOrEmpty(this.mForceVehicleID)) {
            return this.mVehicleInfo.getVehicleID();
        }
        return this.mForceVehicleID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getSerialNumber() {
        return this.mAccessory.getSerialNumber();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BigInteger getInterpreterVersion() {
        return this.mAccessory.getInterpreterVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setStateProgress(final ConfigurationAllInOneIntegratorStatus configurationAllInOneIntegratorStatus, final float f) {
        CareLog.v(TAG, "setStateProgress(%1$s, %2$f)", configurationAllInOneIntegratorStatus, Float.valueOf(f));
        ConfigurationAllInOneIntegratorStatus configurationAllInOneIntegratorStatus2 = this.mState;
        boolean z = configurationAllInOneIntegratorStatus2 != configurationAllInOneIntegratorStatus;
        boolean z2 = this.mProgress != f;
        if (z) {
            this.mState = configurationAllInOneIntegratorStatus;
            firePropertyChange(new PropertyChangeEvent(this, PROPERTY_STATUS, configurationAllInOneIntegratorStatus2, configurationAllInOneIntegratorStatus));
        }
        if (z2 || z) {
            CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m760xcc15b1b(configurationAllInOneIntegratorStatus, f);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$setStateProgress$2$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal, reason: not valid java name */
    public /* synthetic */ void m760xcc15b1b(ConfigurationAllInOneIntegratorStatus configurationAllInOneIntegratorStatus, float f) {
        if (getConfigurationAllInOneIntegratorListener() != null) {
            getConfigurationAllInOneIntegratorListener().onProgressChanged(new ConfigurationAllInOneIntegratorProgressChangedEvent(configurationAllInOneIntegratorStatus, f));
        }
    }

    public float getProgress() {
        return this.mProgress;
    }

    public void terminate(final boolean z, final CareError careError) {
        if (isRunning()) {
            AnonymousClass1 anonymousClass1 = null;
            try {
                setStateProgress(ConfigurationAllInOneIntegratorStatus.Terminated, 100.0f);
                CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m761x4988cc6f(z, careError);
                    }
                });
            } finally {
                setStatusInternal(new ConfigurationAllInOneIntegratorInternalStatusReady(this, anonymousClass1));
                TaskSynchronizer taskSynchronizer = this.mTaskSynchronizer;
                if (taskSynchronizer != null) {
                    taskSynchronizer.executeNext();
                }
            }
        }
    }

    /* JADX INFO: renamed from: lambda$terminate$3$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal, reason: not valid java name */
    public /* synthetic */ void m761x4988cc6f(boolean z, CareError careError) {
        if (getConfigurationAllInOneIntegratorListener() != null) {
            getConfigurationAllInOneIntegratorListener().onConfigurationCompleted(new ConfigurationAllInOneIntegratorCompletedEvent(this, z, careError));
        }
    }

    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            setStatusInternal(new ConfigurationAllInOneIntegratorInternalStatusReady(this, null));
            setStateProgress(ConfigurationAllInOneIntegratorStatus.Undef, 0.0f);
        }
    }

    private class CheckDeviceConfigurationObserverResult {
        private final BigInteger mInterpreterVersion;
        private final String mSerialNumber;
        private final String mVehicleID;

        public CheckDeviceConfigurationObserverResult(String str, String str2, BigInteger bigInteger) {
            this.mInterpreterVersion = bigInteger;
            this.mSerialNumber = str;
            this.mVehicleID = str2;
        }

        public BigInteger getDiagnosticInterpreterVersion() {
            return this.mInterpreterVersion;
        }

        public String getSerialNumber() {
            return this.mSerialNumber;
        }

        public String getVehicleID() {
            return this.mVehicleID;
        }
    }

    private class CheckDeviceConfigurationObserver extends Observable implements PropertyChangeListener {
        private BigInteger mInterpreterVersion;
        private String mSerialNumber;
        private boolean mSubscribed = false;
        private final TimeoutCallback mTimeoutCallbackHandler = new TimeoutCallbackHandler(new Handler(Looper.getMainLooper()));
        private String mVehicleID;

        CheckDeviceConfigurationObserver() {
        }

        public CheckDeviceConfigurationObserver setInterpreterVersion(BigInteger bigInteger) {
            BigInteger bigInteger2 = this.mInterpreterVersion;
            if (bigInteger2 != bigInteger && (bigInteger2 == null || !bigInteger2.equals(bigInteger))) {
                this.mInterpreterVersion = bigInteger;
                if (this.mSubscribed) {
                    setChanged();
                }
            }
            evaluate();
            return this;
        }

        public CheckDeviceConfigurationObserver setSerialNumber(String str) {
            if (!StringUtils.equals(this.mSerialNumber, str)) {
                this.mSerialNumber = str;
                if (this.mSubscribed) {
                    setChanged();
                }
            }
            evaluate();
            return this;
        }

        public CheckDeviceConfigurationObserver setVehicleID(String str) {
            if (!StringUtils.equals(this.mVehicleID, str)) {
                this.mVehicleID = str;
                if (this.mSubscribed) {
                    setChanged();
                }
            }
            evaluate();
            return this;
        }

        private boolean evaluate() {
            if (StringUtils.isNullOrEmpty(this.mSerialNumber) || StringUtils.isNullOrEmpty(this.mVehicleID) || this.mInterpreterVersion == null) {
                return false;
            }
            this.mTimeoutCallbackHandler.cancel();
            notifyObservers(ConfigurationAllInOneIntegratorInternal.this.new CheckDeviceConfigurationObserverResult(this.mSerialNumber, this.mVehicleID, this.mInterpreterVersion));
            return true;
        }

        public void subscribe(long j, Runnable runnable) {
            this.mSubscribed = true;
            setChanged();
            if (evaluate() || runnable == null || j <= 0) {
                return;
            }
            this.mTimeoutCallbackHandler.set(runnable, j);
        }

        public void unsubscribe() {
            this.mSubscribed = false;
            this.mTimeoutCallbackHandler.cancel();
        }

        @Override // java.beans.PropertyChangeListener
        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            if (Accessory.PROPERTY_SERIAL_NUMBER.equals(propertyChangeEvent.getPropertyName())) {
                setSerialNumber(propertyChangeEvent.getNewValue().toString());
            } else if (Accessory.PROPERTY_INTERPRETER_VERSION.equals(propertyChangeEvent.getPropertyName())) {
                setInterpreterVersion((BigInteger) propertyChangeEvent.getNewValue());
            } else if (VehicleInfo.PROPERTY_VEHICLE_ID.equals(propertyChangeEvent.getPropertyName())) {
                setVehicleID(propertyChangeEvent.getNewValue().toString());
            }
        }
    }

    private class ConfigurationAllInOneIntegratorInternalStatusReady extends ConfigurationAllInOneIntegratorInternalStatus {
        private ConfigurationAllInOneIntegratorInternalStatusReady() {
        }

        /* synthetic */ ConfigurationAllInOneIntegratorInternalStatusReady(ConfigurationAllInOneIntegratorInternal configurationAllInOneIntegratorInternal, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus extends ConfigurationAllInOneIntegratorInternalStatus {
        private final PropertyChangeListener mAccessoryPropertyChangeListener;
        private final CheckDeviceConfigurationObserver mCheckDeviceConfigurationObserver;
        private final TimeoutCallback mTimeoutBusyStateHandler;
        private final TimeoutCallback mTimeoutCallbackHandler;

        /* JADX INFO: renamed from: lambda$new$0$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus, reason: not valid java name */
        public /* synthetic */ void m766xab07f1d5(PropertyChangeEvent propertyChangeEvent) {
            Accessory accessory = (Accessory) propertyChangeEvent.getSource();
            if (Accessory.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                onAccessoryStatusChanged(accessory.getStatus());
            }
        }

        public ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus() {
            PropertyChangeListener propertyChangeListener = new PropertyChangeListener() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda1
                @Override // java.beans.PropertyChangeListener
                public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                    this.f$0.m766xab07f1d5(propertyChangeEvent);
                }
            };
            this.mAccessoryPropertyChangeListener = propertyChangeListener;
            this.mCheckDeviceConfigurationObserver = ConfigurationAllInOneIntegratorInternal.this.new CheckDeviceConfigurationObserver();
            TimeoutCallbackHandler timeoutCallbackHandler = new TimeoutCallbackHandler(new Handler(Looper.getMainLooper()));
            this.mTimeoutCallbackHandler = timeoutCallbackHandler;
            timeoutCallbackHandler.set(new Runnable() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onTimeout();
                }
            }, 120000L);
            this.mTimeoutBusyStateHandler = new TimeoutCallbackHandler(new Handler(Looper.getMainLooper()));
            onAccessoryStatusChanged(ConfigurationAllInOneIntegratorInternal.this.mAccessory.getStatus());
            ConfigurationAllInOneIntegratorInternal.this.mAccessory.addPropertyChangeListener(propertyChangeListener);
        }

        @Override // com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternalStatus
        public void onEnter() {
            super.onEnter();
            ConfigurationAllInOneIntegratorInternal.this.setStateProgress(ConfigurationAllInOneIntegratorStatus.Checking, 1.0f);
            ConfigurationAllInOneIntegratorInternal.this.mAccessory.addPropertyChangeListener(this.mCheckDeviceConfigurationObserver);
            ConfigurationAllInOneIntegratorInternal.this.mVehicleInfo.addPropertyChangeListener(this.mCheckDeviceConfigurationObserver);
            this.mCheckDeviceConfigurationObserver.addObserver(new Observer() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda5
                @Override // java.util.Observer
                public final void update(Observable observable, Object obj) {
                    this.f$0.m768x1d7cbf9a(observable, obj);
                }
            });
            this.mCheckDeviceConfigurationObserver.setSerialNumber(ConfigurationAllInOneIntegratorInternal.this.getSerialNumber());
            this.mCheckDeviceConfigurationObserver.setVehicleID(ConfigurationAllInOneIntegratorInternal.this.getVehicleID());
            this.mCheckDeviceConfigurationObserver.setInterpreterVersion(ConfigurationAllInOneIntegratorInternal.this.getInterpreterVersion());
            this.mCheckDeviceConfigurationObserver.subscribe(TripObjectModel.DIFF_MILLIS, new Runnable() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m769x6100f79();
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onEnter$2$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus, reason: not valid java name */
        public /* synthetic */ void m768x1d7cbf9a(Observable observable, Object obj) {
            ConfigurationAllInOneIntegratorInternal configurationAllInOneIntegratorInternal = ConfigurationAllInOneIntegratorInternal.this;
            configurationAllInOneIntegratorInternal.setStateProgress(configurationAllInOneIntegratorInternal.mState, ConfigurationAllInOneIntegratorInternal.CHECK_PROGRESS_2);
            ((CheckDeviceConfigurationObserver) observable).unsubscribe();
            CheckDeviceConfigurationObserverResult checkDeviceConfigurationObserverResult = (CheckDeviceConfigurationObserverResult) obj;
            ConfigurationAllInOneIntegratorInternal.this.mAccessory.removePropertyChangeListener(this.mCheckDeviceConfigurationObserver);
            ConfigurationAllInOneIntegratorInternal.this.mVehicleInfo.removePropertyChangeListener(this.mCheckDeviceConfigurationObserver);
            this.mCheckDeviceConfigurationObserver.deleteObservers();
            try {
                ConfigurationAllInOneIntegratorInternal.this.mServiceVehicleConfigurationInfo.loadVehicleConfigurationInfo(checkDeviceConfigurationObserverResult.getSerialNumber(), checkDeviceConfigurationObserverResult.getVehicleID(), checkDeviceConfigurationObserverResult.getDiagnosticInterpreterVersion(), new Callback() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda0
                    @Override // com.texa.carelib.core.Callback
                    public final void onCompleted(Object obj2) {
                        this.f$0.m767xbeead0d3((VehicleConfigurationInfoLoadedEvent) obj2);
                    }
                });
            } catch (CareLibException e) {
                ConfigurationAllInOneIntegratorInternal.this.terminate(false, new CareError.Builder(2, -2).setException(e).build());
            }
        }

        /* JADX INFO: renamed from: lambda$null$1$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus, reason: not valid java name */
        public /* synthetic */ void m767xbeead0d3(VehicleConfigurationInfoLoadedEvent vehicleConfigurationInfoLoadedEvent) {
            int i;
            ConfigurationAllInOneIntegratorInternal configurationAllInOneIntegratorInternal = ConfigurationAllInOneIntegratorInternal.this;
            configurationAllInOneIntegratorInternal.setStateProgress(configurationAllInOneIntegratorInternal.mState, 100.0f);
            ConfigurationAllInOneIntegratorInternal.this.mLastError = vehicleConfigurationInfoLoadedEvent.getError();
            if (vehicleConfigurationInfoLoadedEvent.getError() == null) {
                int status = ConfigurationAllInOneIntegratorInternal.this.mAccessory.getStatus();
                boolean z = true;
                if (status != 3 && (status == 4 ? !((i = AnonymousClass1.$SwitchMap$com$texa$carelib$webservices$VehicleConfigurationStatus[vehicleConfigurationInfoLoadedEvent.getVehicleConfigurationStatus().ordinal()]) == 1 || i == 2) : status != 132)) {
                    z = false;
                }
                AnonymousClass1 anonymousClass1 = null;
                if (z) {
                    if (ConfigurationAllInOneIntegratorInternal.this.skipConfirmation()) {
                        ConfigurationAllInOneIntegratorInternal configurationAllInOneIntegratorInternal2 = ConfigurationAllInOneIntegratorInternal.this;
                        configurationAllInOneIntegratorInternal2.setStatusInternal(new ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade(configurationAllInOneIntegratorInternal2, anonymousClass1));
                        return;
                    } else {
                        ConfigurationAllInOneIntegratorInternal configurationAllInOneIntegratorInternal3 = ConfigurationAllInOneIntegratorInternal.this;
                        configurationAllInOneIntegratorInternal3.setStatusInternal(new ConfigurationAllInOneIntegratorInternalStatusAskConfirmation(configurationAllInOneIntegratorInternal3, anonymousClass1));
                        return;
                    }
                }
                ConfigurationAllInOneIntegratorInternal.this.terminate(false, null);
                return;
            }
            ConfigurationAllInOneIntegratorInternal.this.terminate(false, vehicleConfigurationInfoLoadedEvent.getError());
        }

        /* JADX INFO: renamed from: lambda$onEnter$3$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus, reason: not valid java name */
        public /* synthetic */ void m769x6100f79() {
            ConfigurationAllInOneIntegratorInternal.this.terminate(false, new CareError.Builder(1, 8).setMessage(ConfigurationAllInOneIntegratorInternal.this.mProfile.getProfileDelegate().getApplicationContext().getResources().getString(R.string.error_care_configuration_acquiring_device_info_timeout)).build());
        }

        @Override // com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternalStatus
        public void onExit() {
            super.onExit();
            ConfigurationAllInOneIntegratorInternal.this.mAccessory.removePropertyChangeListener(this.mAccessoryPropertyChangeListener);
            this.mTimeoutCallbackHandler.cancel();
            this.mTimeoutBusyStateHandler.cancel();
        }

        private void onAccessoryStatusChanged(int i) {
            if (i == 0) {
                this.mTimeoutBusyStateHandler.set(new Runnable() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.onBusyTimeout();
                    }
                }, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS);
            } else {
                this.mTimeoutBusyStateHandler.cancel();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onBusyTimeout() {
            ConfigurationAllInOneIntegratorInternal.this.terminate(false, new CareError.Builder(1, 25).setMessage(ConfigurationAllInOneIntegratorInternal.this.mProfile.getProfileDelegate().getApplicationContext().getResources().getString(R.string.error_care_configuration_check_for_updates_timeout)).build());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onTimeout() {
            ConfigurationAllInOneIntegratorInternal.this.terminate(false, new CareError.Builder(1, 8).setMessage(ConfigurationAllInOneIntegratorInternal.this.mProfile.getProfileDelegate().getApplicationContext().getResources().getString(R.string.error_care_configuration_check_for_updates_timeout)).build());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ConfigurationAllInOneIntegratorInternalStatusAskConfirmation extends ConfigurationAllInOneIntegratorInternalStatus {
        private TimeoutCallbackHandler mTimeoutCallbackHandler;

        private ConfigurationAllInOneIntegratorInternalStatusAskConfirmation() {
        }

        /* synthetic */ ConfigurationAllInOneIntegratorInternalStatusAskConfirmation(ConfigurationAllInOneIntegratorInternal configurationAllInOneIntegratorInternal, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternalStatus
        public void onEnter() {
            super.onEnter();
            ConfigurationAllInOneIntegratorInternal.this.setStateProgress(ConfigurationAllInOneIntegratorStatus.AskConfirmation, ConfigurationAllInOneIntegratorInternal.this.mProgress);
            TimeoutCallbackHandler timeoutCallbackHandler = new TimeoutCallbackHandler(new Handler(Looper.getMainLooper()));
            this.mTimeoutCallbackHandler = timeoutCallbackHandler;
            timeoutCallbackHandler.set(new Runnable() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m762x2931a1dc();
                }
            }, ConfigurationAllInOneIntegratorInternal.USER_ACK_TIMEOUT_INTERVAL);
            CarelibSchedulers.mainThread().schedule(new Runnable() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m763x61ba6fdd();
                }
            });
        }

        /* JADX INFO: renamed from: lambda$onEnter$0$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation, reason: not valid java name */
        public /* synthetic */ void m762x2931a1dc() {
            ConfigurationAllInOneIntegratorInternal.this.terminate(false, new CareError.Builder(1, 8).setMessage(ConfigurationAllInOneIntegratorInternal.this.mProfile.getProfileDelegate().getApplicationContext().getResources().getString(R.string.error_care_configuration_user_ack_timeout)).build());
        }

        /* JADX INFO: renamed from: lambda$onEnter$1$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusAskConfirmation, reason: not valid java name */
        public /* synthetic */ void m763x61ba6fdd() {
            if (ConfigurationAllInOneIntegratorInternal.this.getConfigurationAllInOneIntegratorListener() != null) {
                ConfigurationAllInOneIntegratorInternal.this.getConfigurationAllInOneIntegratorListener().onConfirmationNeeded(new ConfigurationAllInOneIntegratorConfirmationRequiredEvent(this));
            }
        }

        @Override // com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternalStatus
        public void onExit() {
            super.onExit();
            TimeoutCallbackHandler timeoutCallbackHandler = this.mTimeoutCallbackHandler;
            if (timeoutCallbackHandler != null) {
                timeoutCallbackHandler.cancel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade extends ConfigurationAllInOneIntegratorInternalStatus {
        private ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade() {
        }

        /* synthetic */ ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade(ConfigurationAllInOneIntegratorInternal configurationAllInOneIntegratorInternal, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternalStatus
        public void onEnter() {
            super.onEnter();
            ConfigurationAllInOneIntegratorInternal.this.setStateProgress(ConfigurationAllInOneIntegratorStatus.Downloading, 1.0f);
            try {
                ConfigurationAllInOneIntegratorInternal.this.mServiceVehicleConfigurationProcedure.downloadConfiguration(ConfigurationAllInOneIntegratorInternal.this.getSerialNumber(), ConfigurationAllInOneIntegratorInternal.this.getVehicleID(), ConfigurationAllInOneIntegratorInternal.this.getInterpreterVersion(), new Callback() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade$$ExternalSyntheticLambda0
                    @Override // com.texa.carelib.core.Callback
                    public final void onCompleted(Object obj) {
                        this.f$0.onConfigurationDownloadCompleted((ServiceVehicleConfigurationDownloadedEvent) obj);
                    }
                });
            } catch (CareLibException e) {
                ConfigurationAllInOneIntegratorInternal.this.terminate(false, new CareError.Builder(2, -2).setException(e).build());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onConfigurationDownloadCompleted(ServiceVehicleConfigurationDownloadedEvent serviceVehicleConfigurationDownloadedEvent) {
            ConfigurationAllInOneIntegratorInternal.this.mLastError = serviceVehicleConfigurationDownloadedEvent.getError();
            ConfigurationAllInOneIntegratorInternal configurationAllInOneIntegratorInternal = ConfigurationAllInOneIntegratorInternal.this;
            configurationAllInOneIntegratorInternal.setStateProgress(configurationAllInOneIntegratorInternal.mState, 5.0f);
            CareError error = serviceVehicleConfigurationDownloadedEvent.getError();
            if (error != null) {
                ConfigurationAllInOneIntegratorInternal.this.terminate(false, error);
            } else if (serviceVehicleConfigurationDownloadedEvent.getConfigurationFiles().size() > 0) {
                ConfigurationAllInOneIntegratorInternal configurationAllInOneIntegratorInternal2 = ConfigurationAllInOneIntegratorInternal.this;
                configurationAllInOneIntegratorInternal2.setStatusInternal(configurationAllInOneIntegratorInternal2.new ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade(serviceVehicleConfigurationDownloadedEvent.getConfigurationFiles()));
            } else {
                ConfigurationAllInOneIntegratorInternal.this.terminate(false, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade extends ConfigurationAllInOneIntegratorInternalStatus {
        private final List<File> mConfigurationFileList;
        private final ConfigurationIntegratorListener mConfigurationIntegratorListener = new AnonymousClass1();
        private final ConfigurationIntegrator mConfigurationIntegrator = new ConfigurationIntegrator();

        public ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade(List<File> list) {
            this.mConfigurationFileList = list;
        }

        @Override // com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternalStatus
        public void onEnter() {
            super.onEnter();
            ConfigurationAllInOneIntegratorInternal.this.setStateProgress(ConfigurationAllInOneIntegratorStatus.Programming, ConfigurationAllInOneIntegratorInternal.this.mProgress);
            String serialNumber = ConfigurationAllInOneIntegratorInternal.this.getSerialNumber();
            if (!StringUtils.isNullOrEmpty(serialNumber)) {
                if (ConfigurationAllInOneIntegratorInternal.this.mConfigurationProcedure instanceof SynchronizableModule) {
                    ((SynchronizableModule) ConfigurationAllInOneIntegratorInternal.this.mConfigurationProcedure).setSynchronizable(false);
                }
                this.mConfigurationIntegrator.setConfigurationProcedure(ConfigurationAllInOneIntegratorInternal.this.mConfigurationProcedure);
                this.mConfigurationIntegrator.setServiceVehicleConfigurationProcedure(ConfigurationAllInOneIntegratorInternal.this.mServiceVehicleConfigurationProcedure);
                this.mConfigurationIntegrator.setListener(this.mConfigurationIntegratorListener);
                if (this.mConfigurationIntegrator.updateConfigurationAndUploadReports(serialNumber, this.mConfigurationFileList)) {
                    return;
                }
                CareLog.e(ConfigurationAllInOneIntegratorInternal.TAG, "Could not upgrade configuration at this moment.", new Object[0]);
                ConfigurationAllInOneIntegratorInternal.this.terminate(false, new CareError.Builder(1, 8).setMessage(ConfigurationAllInOneIntegratorInternal.this.mProfile.getProfileDelegate().getApplicationContext().getResources().getString(R.string.error_care_configuration_already_in_progress)).build());
                return;
            }
            CareLog.e(ConfigurationAllInOneIntegratorInternal.TAG, "Could not subscribe the diagnostic configuration. CARe serial number is not yet loaded.", new Object[0]);
        }

        /* JADX INFO: renamed from: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1, reason: invalid class name */
        class AnonymousClass1 implements ConfigurationIntegratorListener {
            static /* synthetic */ void lambda$onConfigurationProcedureCompleted$0(VehicleConfigurationInfoLoadedEvent vehicleConfigurationInfoLoadedEvent) {
            }

            AnonymousClass1() {
            }

            @Override // com.texa.carelib.tools.integrator.ConfigurationIntegratorListener
            public void onConfigurationProcedureCompleted(DiagnosticConfigurationLoadedEvent diagnosticConfigurationLoadedEvent) {
                if (ConfigurationAllInOneIntegratorInternal.this.mConfigurationProcedure instanceof SynchronizableModule) {
                    ((SynchronizableModule) ConfigurationAllInOneIntegratorInternal.this.mConfigurationProcedure).setSynchronizable(true);
                }
                ConfigurationAllInOneIntegratorInternal.this.mLastError = diagnosticConfigurationLoadedEvent.getError();
                if (diagnosticConfigurationLoadedEvent.getError() == null) {
                    try {
                        ConfigurationAllInOneIntegratorInternal.this.mServiceVehicleConfigurationInfo.loadVehicleConfigurationInfo(ConfigurationAllInOneIntegratorInternal.this.getSerialNumber(), ConfigurationAllInOneIntegratorInternal.this.getVehicleID(), ConfigurationAllInOneIntegratorInternal.this.getInterpreterVersion(), new Callback() { // from class: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1$$ExternalSyntheticLambda0
                            @Override // com.texa.carelib.core.Callback
                            public final void onCompleted(Object obj) {
                                ConfigurationAllInOneIntegratorInternal.ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade.AnonymousClass1.lambda$onConfigurationProcedureCompleted$0((VehicleConfigurationInfoLoadedEvent) obj);
                            }
                        });
                    } catch (CareLibException unused) {
                    }
                }
                ConfigurationAllInOneIntegratorInternal.this.terminate(true, diagnosticConfigurationLoadedEvent.getError());
            }

            @Override // com.texa.carelib.tools.integrator.ConfigurationIntegratorListener
            public void onConfigurationProcedureProgressChanged(DiagnosticConfigurationProgressChangedEvent diagnosticConfigurationProgressChangedEvent) {
                ConfigurationAllInOneIntegratorInternal.this.mLastError = diagnosticConfigurationProgressChangedEvent.getError();
                ConfigurationAllInOneIntegratorInternal.this.setStateProgress(ConfigurationAllInOneIntegratorInternal.this.mState, (diagnosticConfigurationProgressChangedEvent.getProgress() * 0.95f) + 5.0f);
            }

            @Override // com.texa.carelib.tools.integrator.ConfigurationIntegratorListener
            public void onConfigurationProcedureStatusChanged(DiagnosticConfigurationStatusChangedEvent diagnosticConfigurationStatusChangedEvent) {
                int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus[diagnosticConfigurationStatusChangedEvent.getStatus().ordinal()];
                if (i == 1) {
                    ConfigurationAllInOneIntegratorInternal.this.setStateProgress(ConfigurationAllInOneIntegratorStatus.Programming, ConfigurationAllInOneIntegratorInternal.this.mProgress);
                } else {
                    if (i != 2) {
                        return;
                    }
                    ConfigurationAllInOneIntegratorInternal.this.setStateProgress(ConfigurationAllInOneIntegratorStatus.WaitForEngineOn, ConfigurationAllInOneIntegratorInternal.this.mProgress);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.tools.integrator.internal.ConfigurationAllInOneIntegratorInternal$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus;
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$webservices$VehicleConfigurationStatus;

        static {
            int[] iArr = new int[DiagnosticConfigurationStatus.values().length];
            $SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus = iArr;
            try {
                iArr[DiagnosticConfigurationStatus.Running.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus[DiagnosticConfigurationStatus.WaitingForEngineON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[VehicleConfigurationStatus.values().length];
            $SwitchMap$com$texa$carelib$webservices$VehicleConfigurationStatus = iArr2;
            try {
                iArr2[VehicleConfigurationStatus.FirstConfiguration.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$webservices$VehicleConfigurationStatus[VehicleConfigurationStatus.NeedsUpdated.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr3;
            try {
                iArr3[CommunicationStatus.CONNECTION_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }
}
