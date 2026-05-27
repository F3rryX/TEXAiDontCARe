package com.texa.carelib.profile.internal;

import android.bluetooth.BluetoothSocket;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.texa.carelib.care.featureverifier.internal.CommandVerifier;
import com.texa.carelib.care.featureverifier.internal.SerialCommandVerifier;
import com.texa.carelib.care.profile.CareProxyProtectionSessionCompletedEvent;
import com.texa.carelib.communication.CommandStatus;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import com.texa.carelib.communication.Message;
import com.texa.carelib.communication.internal.PacketComposer;
import com.texa.carelib.core.Callback;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.logging.internal.LogUtils;
import com.texa.carelib.core.utils.internal.StringUtils;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.ProfileType;
import com.texa.carelib.profile.ProfileTypeProxy;
import com.texa.carelib.profile.R;
import com.texa.carelib.profile.events.AuthenticationCompletedEvent;
import com.texa.carelib.profile.internal.SerialProfileCommandSubscriptionController;
import com.texa.carelib.profile.internal.filecarrier.SerialFileCarrierFacade;
import com.texa.carelib.profile.internal.parser.GetSessionIDPacketParser;
import com.texa.carelib.profile.taskexecutor.TaskSynchronizer;
import com.texa.carelib.profile.taskexecutor.internal.ThreadExecutor;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class SerialProfile extends ProfileBase implements ProfileTypeProxy, SerialProfileProxy {
    private static final int MAX_ERROR_RETRIES = 2;
    private static final int MAX_TIMEOUT_RETRIES = 2;
    private static final int MAX_WRITE_RETRIES = 1;
    public static final String TAG = "SerialProfile";
    private static final int TIMEOUT_TIME = 5000;
    private final SerialAuthenticationProcedure mCareAuthenticationProcedure;
    private final SerialProtectionProcedure mCareProtectionProcedure;
    private final Communication mCommunication;
    private final PropertyChangeListener mCommunicationPropertyChangeListener;
    private DataReaderTask mDataReaderTask;
    private DataWriterTask mDataWriterTask;
    private final SerialCommandVerifier mSerialCommandVerifier;
    private final SerialFileCarrierFacade mSerialFileCarrierFacade;
    private final SerialProfileCommandSubscriptionController mSerialProfileCommandSubscriptionController;
    private final List<SerialProfileMessageReceiver> mSerialProfileMessageReceivers;
    private final Handler mUIHandler;
    private final SerialWorkingParameterConfiguration mWorkingParameterConfiguration;

    private enum DataWriterTaskState {
        Idle,
        SendMessage,
        WaitResponse,
        ResponseReceived,
        Timeout
    }

    private boolean isAuthenticationCommand(int i) {
        return i == 162 || i == 163;
    }

    public SerialProfile(Communication communication) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mCommunicationPropertyChangeListener = anonymousClass1;
        this.mSerialProfileMessageReceivers = new ArrayList();
        this.mUIHandler = new Handler(Looper.getMainLooper());
        this.mCommunication = communication;
        communication.addPropertyChangeListener(anonymousClass1);
        SerialCommandVerifier serialCommandVerifier = new SerialCommandVerifier(this);
        this.mSerialCommandVerifier = serialCommandVerifier;
        addProfileModule(serialCommandVerifier);
        SerialFileCarrierFacade serialFileCarrierFacade = new SerialFileCarrierFacade(this);
        this.mSerialFileCarrierFacade = serialFileCarrierFacade;
        addProfileModule(serialFileCarrierFacade);
        SerialAuthenticationProcedure serialAuthenticationProcedure = new SerialAuthenticationProcedure(this);
        this.mCareAuthenticationProcedure = serialAuthenticationProcedure;
        addProfileModule(serialAuthenticationProcedure);
        SerialProtectionProcedure serialProtectionProcedure = new SerialProtectionProcedure(this);
        this.mCareProtectionProcedure = serialProtectionProcedure;
        addProfileModule(serialProtectionProcedure);
        SerialWorkingParameterConfiguration serialWorkingParameterConfiguration = new SerialWorkingParameterConfiguration(this);
        this.mWorkingParameterConfiguration = serialWorkingParameterConfiguration;
        addProfileModule(serialWorkingParameterConfiguration);
        this.mSerialProfileCommandSubscriptionController = new SerialProfileCommandSubscriptionController(new SerialProfileCommandSubscriptionController.NotificationListener() { // from class: com.texa.carelib.profile.internal.SerialProfile$$ExternalSyntheticLambda3
            @Override // com.texa.carelib.profile.internal.SerialProfileCommandSubscriptionController.NotificationListener
            public final void onNotificationReceived(SerialProfileCommandSubscriptionController.MessageNotificationEvent messageNotificationEvent) {
                this.f$0.m738lambda$new$0$comtexacarelibprofileinternalSerialProfile(messageNotificationEvent);
            }
        });
        DataWriterTask dataWriterTask = new DataWriterTask();
        this.mDataWriterTask = dataWriterTask;
        dataWriterTask.start();
        TaskSynchronizer.createInstance(new ThreadExecutor(false));
    }

    /* JADX INFO: renamed from: lambda$new$0$com-texa-carelib-profile-internal-SerialProfile, reason: not valid java name */
    public /* synthetic */ void m738lambda$new$0$comtexacarelibprofileinternalSerialProfile(SerialProfileCommandSubscriptionController.MessageNotificationEvent messageNotificationEvent) {
        sendMessage(new Message.Builder().setCommandID(messageNotificationEvent.getCommandId()).build());
        messageNotificationEvent.setConsumed();
    }

    public Context getContext() {
        return getProfileDelegate().getApplicationContext();
    }

    @Override // com.texa.carelib.profile.internal.SerialProfileProxy
    public SerialFileCarrierFacade getSerialFileCarrier() {
        return this.mSerialFileCarrierFacade;
    }

    @Override // com.texa.carelib.profile.internal.SerialProfileProxy
    public CommandVerifier getCommandVerifier() {
        return this.mSerialCommandVerifier;
    }

    @Override // com.texa.carelib.profile.Profile
    public void shutdown() {
        this.mCommunication.removePropertyChangeListener(this.mCommunicationPropertyChangeListener);
    }

    public WorkingParameterConfiguration getWorkingParameterConfiguration() {
        return this.mWorkingParameterConfiguration;
    }

    public SerialAuthenticationProcedure getCareAuthenticationProcedure() {
        return this.mCareAuthenticationProcedure;
    }

    public SerialProtectionProcedure getCareProtectionProcedure() {
        return this.mCareProtectionProcedure;
    }

    @Override // com.texa.carelib.care.profile.CareProxy
    public boolean beginProtectionSession(Callback<CareProxyProtectionSessionCompletedEvent> callback) {
        CareLog.v(TAG, "beginProtectionSession", new Object[0]);
        return getCareProtectionProcedure().beginProtection(callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onErrorMessageReceived(final Message message, final Message message2, CareError careError) {
        if (careError != null) {
            if (11 == careError.getErrorCode()) {
                CareLog.e(TAG, "Received from Dongle(with status error): %s", message2);
            } else {
                CareLog.e(TAG, "Transmission error occurred: %s", careError.toString());
            }
        }
        int status = message2.getStatus();
        if (5 == status) {
            if (!isAuthenticationCommand(message2.getCommandID())) {
                final DeviceInfo currentDevice = this.mCommunication.getCurrentDevice();
                if (currentDevice != null) {
                    try {
                        String authenticationPin = getAuthenticationPin(currentDevice);
                        if (StringUtils.isNullOrEmpty(authenticationPin)) {
                            fireAuthenticationError(currentDevice, new CareError.Builder(1, 6).setMessage(getProfileDelegate().getApplicationContext().getString(R.string.error_authentication_no_pin)).build());
                        } else {
                            beginAuthentication(currentDevice, authenticationPin, new Callback() { // from class: com.texa.carelib.profile.internal.SerialProfile$$ExternalSyntheticLambda1
                                @Override // com.texa.carelib.core.Callback
                                public final void onCompleted(Object obj) {
                                    this.f$0.m740x277c202e(message, currentDevice, (AuthenticationCompletedEvent) obj);
                                }
                            });
                        }
                        return;
                    } catch (CareLibException e) {
                        CareLog.e(TAG, e, "Could not authenticate at this moment.", new Object[0]);
                        return;
                    }
                }
                return;
            }
            CareLog.w(TAG, String.format("CARe couldn't process the command %s. AUTHENTICATION IS REQUIRED", Integer.valueOf(message2.getCommandID())), new Object[0]);
            return;
        }
        if (3 == status && getServiceProxy() != null) {
            beginProtectionSession(new Callback() { // from class: com.texa.carelib.profile.internal.SerialProfile$$ExternalSyntheticLambda2
                @Override // com.texa.carelib.core.Callback
                public final void onCompleted(Object obj) {
                    this.f$0.m741x2705ba2f(message2, message, (CareProxyProtectionSessionCompletedEvent) obj);
                }
            });
        } else {
            forwardMessage(message2, careError);
        }
    }

    /* JADX INFO: renamed from: lambda$onErrorMessageReceived$1$com-texa-carelib-profile-internal-SerialProfile, reason: not valid java name */
    public /* synthetic */ void m740x277c202e(Message message, DeviceInfo deviceInfo, AuthenticationCompletedEvent authenticationCompletedEvent) {
        if (authenticationCompletedEvent.getError() == null) {
            CareLog.d(TAG, "Authentication completed!", new Object[0]);
            sendMessage(message, false);
        } else {
            fireAuthenticationError(deviceInfo, new CareError.Builder(1, 6).setMessage(getProfileDelegate().getApplicationContext().getString(R.string.error_authentication_no_pin)).build());
        }
    }

    /* JADX INFO: renamed from: lambda$onErrorMessageReceived$2$com-texa-carelib-profile-internal-SerialProfile, reason: not valid java name */
    public /* synthetic */ void m741x2705ba2f(Message message, Message message2, CareProxyProtectionSessionCompletedEvent careProxyProtectionSessionCompletedEvent) {
        if (careProxyProtectionSessionCompletedEvent.getError() != null) {
            CareLog.e(TAG, "Protection session fails!", new Object[0]);
            forwardMessage(message, careProxyProtectionSessionCompletedEvent.getError());
        } else {
            CareLog.d(TAG, "Protection session completed!", new Object[0]);
            sendMessage(message2, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNotificationReceived(Message message) {
        int commandID = message.getCommandID();
        if (113 == commandID) {
            forwardMessage(new Message.Builder(message).setStatus(0).build(), null);
        } else {
            this.mSerialProfileCommandSubscriptionController.onCommandNotify(commandID);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onResponseMessageReceived(Message message, Message message2, CareError careError) {
        int commandID = message2.getCommandID();
        forwardMessage(message2, careError);
        if (78 != commandID || getServiceProxy() == null) {
            return;
        }
        getServiceProxy().setSessionID(GetSessionIDPacketParser.parse(message2));
    }

    @Override // com.texa.carelib.profile.Profile
    public void forceAuthentication(Callback<AuthenticationCompletedEvent> callback) throws CareLibException {
        DeviceInfo currentDevice = this.mCommunication.getCurrentDevice();
        if (currentDevice == null) {
            throw new CareLibException("Could not authenticate at this moment. No dongle connected. Please, make sure you are connect to a dongle.");
        }
        String authenticationPin = getAuthenticationPin(currentDevice);
        if (StringUtils.isNullOrEmpty(authenticationPin)) {
            throw new CareLibException("Could not authenticate with empty authentication PIN.");
        }
        beginAuthentication(currentDevice, authenticationPin, callback);
    }

    private void beginAuthentication(final DeviceInfo deviceInfo, String str, final Callback<AuthenticationCompletedEvent> callback) throws CareLibException {
        getCareAuthenticationProcedure().beginAuthentication(str, new Callback() { // from class: com.texa.carelib.profile.internal.SerialProfile$$ExternalSyntheticLambda0
            @Override // com.texa.carelib.core.Callback
            public final void onCompleted(Object obj) {
                this.f$0.m737xc47b579(deviceInfo, callback, (AuthenticationCompletedEvent) obj);
            }
        });
        setReady(false);
    }

    /* JADX INFO: renamed from: lambda$beginAuthentication$4$com-texa-carelib-profile-internal-SerialProfile, reason: not valid java name */
    public /* synthetic */ void m737xc47b579(DeviceInfo deviceInfo, final Callback callback, final AuthenticationCompletedEvent authenticationCompletedEvent) {
        if (authenticationCompletedEvent.getError() == null) {
            CareLog.d(TAG, "Authentication procedure is completed successfully.", new Object[0]);
            setReady(true);
            loadAllInfo();
        } else {
            CareLog.e(TAG, "Authentication failed. Error=%s", authenticationCompletedEvent.getError());
            fireAuthenticationError(deviceInfo, authenticationCompletedEvent.getError());
        }
        this.mUIHandler.post(new Runnable() { // from class: com.texa.carelib.profile.internal.SerialProfile$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m739lambda$null$3$comtexacarelibprofileinternalSerialProfile(callback, authenticationCompletedEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$null$3$com-texa-carelib-profile-internal-SerialProfile, reason: not valid java name */
    public /* synthetic */ void m739lambda$null$3$comtexacarelibprofileinternalSerialProfile(Callback callback, AuthenticationCompletedEvent authenticationCompletedEvent) {
        if (callback != null) {
            callback.onCompleted(new AuthenticationCompletedEvent(this, authenticationCompletedEvent.getError()));
        }
    }

    private String getAuthenticationPin(DeviceInfo deviceInfo) throws CareLibException {
        return getProfileDelegate().getPassword(deviceInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forwardMessage(Message message, CareError careError) {
        fireMessageReceived(message, careError);
    }

    private void fireMessageReceived(Message message, CareError careError) {
        int size = this.mSerialProfileMessageReceivers.size();
        SerialProfileMessageReceiver[] serialProfileMessageReceiverArr = new SerialProfileMessageReceiver[size];
        this.mSerialProfileMessageReceivers.toArray(serialProfileMessageReceiverArr);
        for (int i = 0; i < size; i++) {
            SerialProfileMessageReceiver serialProfileMessageReceiver = serialProfileMessageReceiverArr[i];
            if (serialProfileMessageReceiver != null) {
                try {
                    serialProfileMessageReceiver.onMessageReceived(this, message, careError);
                } catch (Exception e) {
                    CareLog.e(TAG, e, "Forward message to class %s generate exception.", serialProfileMessageReceiver.getClass().getName());
                }
            }
        }
    }

    @Override // com.texa.carelib.profile.internal.SerialProfileProxy
    public void enableCommandSubscription(boolean z, int i) {
        if (z) {
            this.mSerialProfileCommandSubscriptionController.subscribe(i);
        } else {
            this.mSerialProfileCommandSubscriptionController.unsubscribe(i);
        }
    }

    @Override // com.texa.carelib.profile.internal.SerialProfileProxy
    public void sendMessage(Message message) {
        sendMessage(message, true);
    }

    public void sendMessage(Message message, boolean z) {
        this.mDataWriterTask.sendMessage(message, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CareError getError(Message message) {
        int commandID = message.getCommandID();
        int status = message.getStatus();
        if (status == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(Locale.US, " CommandID=0x%X(%s)", Integer.valueOf(commandID), Commands.getName(Integer.valueOf(commandID))));
        sb.append(String.format(Locale.US, " Status=0x%X(%s)", Integer.valueOf(status), CommandStatus.getStatusName(Integer.valueOf(status))));
        CareError.Builder builder = new CareError.Builder(1, 11);
        if (status == 10) {
            builder.setMessage(getContext().getResources().getString(R.string.error_command_status_no_disk_space, sb.toString()));
        } else if (status == 11) {
            builder.setMessage(getContext().getResources().getString(R.string.error_command_status_pairing_must_be_repeated, sb.toString()));
        } else if (status != 126) {
            switch (status) {
                case 1:
                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_generic_fail, sb.toString()));
                    break;
                case 2:
                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_not_available_in_current_diagnosis_mode, sb.toString()));
                    break;
                case 3:
                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_protection_error, sb.toString()));
                    break;
                case 4:
                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_vci_communication_error, sb.toString()));
                    break;
                case 5:
                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_authentication_error, sb.toString()));
                    break;
                case 6:
                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_system_resource_warning, sb.toString()));
                    break;
                case 7:
                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_diagnosis_module_busy, sb.toString()));
                    break;
                default:
                    switch (status) {
                        case 17:
                            builder.setMessage(getContext().getResources().getString(R.string.error_command_status_not_supported_diagnosis_mode, sb.toString()));
                            break;
                        case 18:
                            builder.setMessage(getContext().getResources().getString(R.string.error_command_status_not_admitted_diagnosis_mode, sb.toString()));
                            break;
                        case 19:
                            builder.setMessage(getContext().getResources().getString(R.string.error_command_status_too_much_subscriptions, sb.toString()));
                            break;
                        case 20:
                            builder.setMessage(getContext().getResources().getString(R.string.error_command_status_parameter_not_admitted, sb.toString()));
                            break;
                        case 21:
                            builder.setMessage(getContext().getResources().getString(R.string.error_command_status_index_out_of_range, sb.toString()));
                            break;
                        case 22:
                            builder.setMessage(getContext().getResources().getString(R.string.error_command_status_diagnosis_not_available, sb.toString()));
                            break;
                        default:
                            switch (status) {
                                case 32:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_invalid_file_id, sb.toString()));
                                    break;
                                case 33:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_file_not_available, sb.toString()));
                                    break;
                                case 34:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_file_check_failed, sb.toString()));
                                    break;
                                case 35:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_file_offset_error, sb.toString()));
                                    break;
                                case 36:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_invalid_file_type_error, sb.toString()));
                                    break;
                                case 37:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_invalid_block_size_error, sb.toString()));
                                    break;
                                case 38:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_file_update_manager_write_error, sb.toString()));
                                    break;
                                case 39:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_wrong_data_manager_parameter, sb.toString()));
                                    break;
                                case 40:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_external_flash, sb.toString()));
                                    break;
                                default:
                                    builder.setMessage(getContext().getResources().getString(R.string.error_command_status_unknown, sb.toString()));
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            builder.setMessage(getContext().getResources().getString(R.string.error_command_status_unknown_command, sb.toString()));
        }
        builder.putExtra(CareError.EXTRA_COMMAND_STATUS, status);
        return builder.build();
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.internal.SerialProfile$1, reason: invalid class name */
    class AnonymousClass1 implements PropertyChangeListener {
        private InputStream mInputStream;
        private OutputStream mOutputStream;

        AnonymousClass1() {
        }

        @Override // java.beans.PropertyChangeListener
        public void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName())) {
                onCommunicationStatusChanged(propertyChangeEvent);
            }
        }

        private void onCommunicationStatusChanged(PropertyChangeEvent propertyChangeEvent) {
            CommunicationStatus communicationStatus = (CommunicationStatus) propertyChangeEvent.getNewValue();
            CareLog.d(SerialProfile.TAG, "Communication status has changed:[new:%s,old:%s]", communicationStatus, (CommunicationStatus) propertyChangeEvent.getOldValue());
            if (CommunicationStatus.CONNECTED == communicationStatus) {
                if (SerialProfile.this.mCommunication.getRemote() instanceof BluetoothSocket) {
                    onDongleConnected((BluetoothSocket) SerialProfile.this.mCommunication.getRemote());
                    SerialProfile.super.onCommunicationStatusChanged(propertyChangeEvent);
                    SerialProfile.this.loadAllInfo();
                    return;
                }
                CareLog.wtf(SerialProfile.TAG, "Connected ignored. Bluetooth socket not available. Possible connection lost?", new Object[0]);
                return;
            }
            onDongleNotConnected();
            SerialProfile.super.onCommunicationStatusChanged(propertyChangeEvent);
        }

        private void onDongleConnected(BluetoothSocket bluetoothSocket) {
            SerialProfile.this.setReady(false);
            try {
                this.mInputStream = bluetoothSocket.getInputStream();
                this.mOutputStream = bluetoothSocket.getOutputStream();
                SerialProfile.this.mDataReaderTask = SerialProfile.this.new DataReaderTask(this.mInputStream);
                SerialProfile.this.mDataReaderTask.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.texa.carelib.profile.internal.SerialProfile$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Thread.UncaughtExceptionHandler
                    public final void uncaughtException(Thread thread, Throwable th) {
                        CareLog.e(SerialProfile.TAG, th, "Uncaught Exception in DataReaderTask.", new Object[0]);
                    }
                });
                SerialProfile.this.mDataReaderTask.start();
                do {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException unused) {
                    }
                } while (!SerialProfile.this.mDataReaderTask.isAlive());
                SerialProfile.this.mDataWriterTask.setOutputStream(this.mOutputStream);
            } catch (IOException unused2) {
            }
        }

        private void onDongleNotConnected() {
            SerialProfile.this.mDataWriterTask.setOutputStream(null);
        }
    }

    @Override // com.texa.carelib.profile.Profile
    public DeviceInfo getCurrentDevice() {
        return this.mCommunication.getCurrentDevice();
    }

    @Override // com.texa.carelib.profile.ProfileTypeProxy
    public ProfileType getType() {
        return ProfileType.SPP_BLUETOOTH;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.texa.carelib.profile.internal.ProfileBase, com.texa.carelib.profile.Profile
    public void addProfileModule(ProfileSubModule profileSubModule) {
        if (profileSubModule instanceof SerialProfileMessageReceiver) {
            addSerialProfileMessageListener((SerialProfileMessageReceiver) profileSubModule);
        }
        super.addProfileModule(profileSubModule);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.texa.carelib.profile.internal.ProfileBase, com.texa.carelib.profile.Profile
    public void removeProfileModule(ProfileSubModule profileSubModule) {
        super.removeProfileModule(profileSubModule);
        if (profileSubModule instanceof SerialProfileMessageReceiver) {
            removeSerialProfileMessageListener((SerialProfileMessageReceiver) profileSubModule);
        }
    }

    private void addSerialProfileMessageListener(SerialProfileMessageReceiver serialProfileMessageReceiver) {
        if (this.mSerialProfileMessageReceivers.contains(serialProfileMessageReceiver)) {
            return;
        }
        this.mSerialProfileMessageReceivers.add(serialProfileMessageReceiver);
    }

    private void removeSerialProfileMessageListener(SerialProfileMessageReceiver serialProfileMessageReceiver) {
        this.mSerialProfileMessageReceivers.remove(serialProfileMessageReceiver);
    }

    private static class WriteFailedException extends CareLibException {
        private final byte[] mData;

        WriteFailedException(byte[] bArr) {
            this.mData = bArr;
        }

        public byte[] getData() {
            return this.mData;
        }
    }

    private final class DataWriterTask extends Thread {
        final String _TAG;
        private final Object mBluetoothSocketLock;
        private volatile boolean mIsInterrupted;
        private UUID mLastMessageID;
        private final OutgoingMessageQueue mMessageQueue;
        private OutputStream mOutputStream;
        private Message mRequest;
        private Message mResponse;
        private final Object mResponseLock;
        private int mSendRetry;
        private DataWriterTaskState mState;
        private final Object mWaitMessage;
        private long mWriteTime;

        DataWriterTask() {
            super("DataWriterTask");
            this._TAG = SerialProfile.TAG + "#" + DataWriterTask.class.getSimpleName();
            this.mState = DataWriterTaskState.Idle;
            this.mMessageQueue = new OutgoingMessageQueue(true);
            this.mWaitMessage = new Object();
            this.mResponseLock = new Object();
            this.mBluetoothSocketLock = new Object();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.mIsInterrupted = false;
            setPriority(10);
            while (!this.mIsInterrupted) {
                int i = AnonymousClass2.$SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState[this.mState.ordinal()];
                if (i == 1) {
                    synchronized (this.mWaitMessage) {
                        try {
                            this.mSendRetry = 0;
                            this.mWaitMessage.wait();
                            setState(DataWriterTaskState.SendMessage);
                        } catch (InterruptedException unused) {
                        }
                    }
                } else if (i != 2) {
                    if (i == 3) {
                        synchronized (this.mResponseLock) {
                            if (this.mResponse != null) {
                                setState(DataWriterTaskState.ResponseReceived);
                            } else if (System.nanoTime() - this.mWriteTime > TimeUnit.NANOSECONDS.convert(5000L, TimeUnit.MILLISECONDS)) {
                                setState(DataWriterTaskState.Timeout);
                            } else {
                                try {
                                    Thread.sleep(20L);
                                } catch (InterruptedException unused2) {
                                }
                            }
                        }
                    } else if (i == 4) {
                        if (this.mResponse.getStatus() == 0) {
                            this.mSendRetry = 0;
                            SerialProfile.this.onResponseMessageReceived(this.mRequest, this.mResponse, null);
                        } else if (this.mSendRetry < 2) {
                            sendMessage(this.mRequest, false);
                        } else {
                            this.mSendRetry = 0;
                            SerialProfile serialProfile = SerialProfile.this;
                            Message message = this.mRequest;
                            Message message2 = this.mResponse;
                            serialProfile.onErrorMessageReceived(message, message2, serialProfile.getError(message2));
                        }
                        setState(DataWriterTaskState.SendMessage);
                    } else if (i == 5) {
                        if (this.mSendRetry >= 2) {
                            SerialProfile.this.forwardMessage(new Message.Builder().setID(this.mRequest.getID()).setCommandID(this.mRequest.getCommandID()).build(), new CareError.Builder(1, 18).setMessage(SerialProfile.this.getContext().getResources().getString(R.string.error_tbus_command_timeout, Commands.getName(Integer.valueOf(this.mRequest.getCommandID())))).build());
                            this.mSendRetry = 0;
                        } else {
                            sendMessage(this.mRequest, false);
                        }
                        setState(DataWriterTaskState.SendMessage);
                    }
                } else if (this.mMessageQueue.isEmpty()) {
                    setState(DataWriterTaskState.Idle);
                } else {
                    Message messagePoll = this.mMessageQueue.poll();
                    if (messagePoll != null) {
                        this.mRequest = messagePoll;
                        this.mResponse = null;
                        try {
                            synchronized (this.mBluetoothSocketLock) {
                                if (this.mOutputStream != null) {
                                    byte[] bArrGenerateMessage = generateMessage(this.mRequest.getCommandID(), this.mRequest.getData());
                                    if (bArrGenerateMessage != null) {
                                        if (!write(this.mOutputStream, bArrGenerateMessage)) {
                                            throw new WriteFailedException(bArrGenerateMessage);
                                        }
                                    } else {
                                        throw new NullPointerException("No data to send.");
                                    }
                                } else {
                                    throw new DongleNotConnectedException();
                                }
                            }
                            this.mWriteTime = System.nanoTime();
                            setState(DataWriterTaskState.WaitResponse);
                            this.mSendRetry++;
                        } catch (DongleNotConnectedException e) {
                            CareLog.e(this._TAG, e, "Could not send message. Dongle is not connected.", new Object[0]);
                            SerialProfile.this.forwardMessage(new Message.Builder().setCommandID(this.mRequest.getCommandID()).build(), new CareError.Builder(1, 21).setMessage(SerialProfile.this.getContext().getResources().getString(R.string.error_care_not_connected)).build());
                        } catch (WriteFailedException e2) {
                            CareLog.e(this._TAG, e2, "Write has failed. Could not send data:[%1$s]", LogUtils.dataToString(e2.getData()));
                            SerialProfile.this.forwardMessage(new Message.Builder().setCommandID(this.mRequest.getCommandID()).build(), new CareError.Builder(1, 26).setMessage(SerialProfile.this.getContext().getResources().getString(R.string.error_care_not_connected)).build());
                        } catch (NullPointerException e3) {
                            CareLog.e(this._TAG, e3, "No data to send.", new Object[0]);
                            SerialProfile.this.forwardMessage(new Message.Builder().setCommandID(this.mRequest.getCommandID()).build(), new CareError.Builder(1, 27).setMessage(SerialProfile.this.getContext().getResources().getString(R.string.error_care_not_connected)).build());
                        }
                    } else {
                        continue;
                    }
                }
            }
        }

        @Override // java.lang.Thread
        public void interrupt() {
            this.mIsInterrupted = true;
            super.interrupt();
        }

        private void setState(DataWriterTaskState dataWriterTaskState) {
            this.mState = dataWriterTaskState;
        }

        void setOutputStream(OutputStream outputStream) {
            synchronized (this.mBluetoothSocketLock) {
                this.mOutputStream = outputStream;
            }
        }

        public void onMessageReceived(int i, int i2, byte[] bArr) {
            Message.Builder payload = new Message.Builder().setCommandID(i).setStatus(i2).setPayload(bArr);
            Message message = this.mRequest;
            if (message != null) {
                payload.setID(message.getID());
            }
            Message messageBuild = payload.build();
            synchronized (this.mResponseLock) {
                if (this.mRequest != null && messageBuild.getCommandID() == this.mRequest.getCommandID() && this.mResponse == null) {
                    this.mResponse = messageBuild;
                }
            }
        }

        public void sendMessage(Message message, boolean z) {
            boolean zAddHead;
            if (z) {
                zAddHead = this.mMessageQueue.addTail(message);
            } else {
                zAddHead = this.mMessageQueue.addHead(message);
            }
            if (zAddHead) {
                synchronized (this.mWaitMessage) {
                    this.mWaitMessage.notifyAll();
                }
            }
        }

        private byte checksum(byte[] bArr, int i, int i2) {
            byte b = 0;
            while (i < i2 && i < bArr.length) {
                b = (char) (((char) (b + bArr[i])) & 255);
                i++;
            }
            return b;
        }

        byte[] generateMessage(int i, byte[] bArr) {
            int length = bArr != null ? bArr.length : 0;
            int i2 = length + 6;
            byte[] bArr2 = new byte[i2 + 2];
            bArr2[0] = 2;
            bArr2[1] = (byte) i;
            bArr2[2] = 0;
            bArr2[3] = 0;
            bArr2[4] = (byte) (length & 255);
            bArr2[5] = (byte) ((65280 & length) >> 8);
            if (bArr != null) {
                System.arraycopy(bArr, 0, bArr2, 6, length);
            }
            bArr2[i2] = checksum(bArr2, 1, i2);
            bArr2[i2 + 1] = 3;
            return bArr2;
        }

        private boolean write(OutputStream outputStream, byte[] bArr) {
            try {
                outputStream.write(bArr);
                outputStream.flush();
                return true;
            } catch (Exception e) {
                CareLog.e(SerialProfile.TAG, e, "BT socket write has failed. [Attempt=%1$d/%2$d, Data:%3$s(length=%4$d bytes)", 1, 1, LogUtils.dataToString(bArr, bArr.length), Integer.valueOf(bArr.length));
                try {
                    Thread.sleep(20L);
                    return false;
                } catch (InterruptedException unused) {
                    return false;
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.internal.SerialProfile$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState;

        static {
            int[] iArr = new int[DataWriterTaskState.values().length];
            $SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState = iArr;
            try {
                iArr[DataWriterTaskState.Idle.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState[DataWriterTaskState.SendMessage.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState[DataWriterTaskState.WaitResponse.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState[DataWriterTaskState.ResponseReceived.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState[DataWriterTaskState.Timeout.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class DataReaderTask extends Thread {
        private static final int BUFFER_SIZE = 2048;
        final String _TAG;
        private InputStream mInputStream;
        private boolean mInterrupt;

        DataReaderTask(InputStream inputStream) {
            super("DataReaderTask");
            this._TAG = SerialProfile.TAG + "#" + DataReaderTask.class.getSimpleName();
            this.mInputStream = inputStream;
        }

        @Override // java.lang.Thread
        public void interrupt() {
            this.mInterrupt = true;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            CareLog.d(this._TAG, "DataReaderTask#doInBackground()", new Object[0]);
            setPriority(10);
            TaskSynchronizer.getInstance().clear(true);
            PacketComposer packetComposer = new PacketComposer();
            packetComposer.setCallback(new PacketComposer.Callback() { // from class: com.texa.carelib.profile.internal.SerialProfile$DataReaderTask$$ExternalSyntheticLambda0
                @Override // com.texa.carelib.communication.internal.PacketComposer.Callback
                public final void onMessageReady(int i, int i2, byte[] bArr, int i3, byte[] bArr2) {
                    this.f$0.m742xe931bb97(i, i2, bArr, i3, bArr2);
                }
            });
            Log.i(this._TAG, "doInBackground: Socket created, streams assigned");
            Log.i(this._TAG, "doInBackground: Waiting for initial data...");
            byte[] bArr = new byte[2048];
            System.nanoTime();
            while (true) {
                try {
                    System.nanoTime();
                    int i = this.mInputStream.read(bArr);
                    if (i > 0) {
                        packetComposer.dataReady(bArr, i);
                    }
                } catch (Exception e) {
                    CareLog.e(this._TAG, e, "Read throws exception.", new Object[0]);
                    CareLog.d(this._TAG, "DataReaderTask#onPostExecute()", new Object[0]);
                    TaskSynchronizer.getInstance().clear(true);
                    this.mInputStream = null;
                    return;
                }
            }
        }

        /* JADX INFO: renamed from: lambda$run$0$com-texa-carelib-profile-internal-SerialProfile$DataReaderTask, reason: not valid java name */
        public /* synthetic */ void m742xe931bb97(int i, int i2, byte[] bArr, int i3, byte[] bArr2) {
            byte[] bArr3 = new byte[i3];
            System.arraycopy(bArr, 0, bArr3, 0, i3);
            if (255 == i2) {
                SerialProfile.this.onNotificationReceived(new Message.Builder().setCommandID(i).setStatus(i2).setPayload(bArr3).build());
                return;
            }
            SerialProfile.this.mDataWriterTask.onMessageReceived(i, i2, bArr3);
            if (129 == i && i2 == 0) {
                SerialProfile.this.onResponseMessageReceived(new Message.Builder().setCommandID(129).build(), new Message.Builder().setCommandID(i).setStatus(i2).setPayload(bArr3).build(), null);
            }
        }
    }

    private static class OutgoingMessageQueue {
        private final boolean mIgnoreDuplicatedMessages;
        private final LinkedList<Message> mMessages = new LinkedList<>();

        public OutgoingMessageQueue(boolean z) {
            this.mIgnoreDuplicatedMessages = z;
        }

        boolean addHead(Message message) {
            synchronized (this.mMessages) {
                if (this.mIgnoreDuplicatedMessages) {
                    this.mMessages.addFirst(message);
                    return true;
                }
                if (!this.mMessages.contains(message)) {
                    this.mMessages.addFirst(message);
                    return true;
                }
                CareLog.v(SerialProfile.TAG, "Skipping message %1$d(%2$s). It's already in outgoing message queue.", Integer.valueOf(message.getCommandID()), Commands.getName(Integer.valueOf(message.getCommandID())));
                return false;
            }
        }

        boolean addTail(Message message) {
            synchronized (this.mMessages) {
                if (this.mIgnoreDuplicatedMessages) {
                    this.mMessages.addLast(message);
                    return true;
                }
                if (!this.mMessages.contains(message)) {
                    this.mMessages.addLast(message);
                    return true;
                }
                CareLog.v(SerialProfile.TAG, "Skipping message %1$d(%2$s). It's already in outgoing message queue.", Integer.valueOf(message.getCommandID()), Commands.getName(Integer.valueOf(message.getCommandID())));
                return false;
            }
        }

        void clear() {
            synchronized (this.mMessages) {
                this.mMessages.clear();
            }
        }

        Message poll() {
            synchronized (this.mMessages) {
                if (this.mMessages.size() <= 0) {
                    return null;
                }
                return this.mMessages.poll();
            }
        }

        int size() {
            int size;
            synchronized (this.mMessages) {
                size = this.mMessages.size();
            }
            return size;
        }

        public boolean isEmpty() {
            return this.mMessages.isEmpty();
        }
    }
}
