package com.texa.carelib.care.firmwareupgrade.internal;

import android.content.Context;
import com.texa.carelib.care.featureverifier.FeatureVerifier;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure;
import com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedureListener;
import com.texa.carelib.care.firmwareupgrade.events.FirmwareUpgradeCompletedEvent;
import com.texa.carelib.care.firmwareupgrade.events.FirmwareUpgradeProgressChangedEvent;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.AppType;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.DongleNotConnectedException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.R;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.SerialProfileProxy;
import com.texa.carelib.profile.internal.filecarrier.FileCarrier;
import com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentProgressChangedEvent;
import com.texa.carelib.profile.internal.parser.GetFirmwareStatusPacketParser;
import com.texa.carelib.profile.taskexecutor.SynchronizedTask;
import com.texa.carelib.profile.taskexecutor.TaskSynchronizer;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class SerialFirmwareUpgradeProcedureSmart extends ProfileSubModule implements FirmwareUpgradeProcedure, SerialProfileMessageReceiver {
    private static final char MAIN_APP = 1;
    private static final int PROTOCOL_MODE_BINARY = 0;
    private static final int PROTOCOL_MODE_EXLAP = 1;
    private static final char SERVICE_APP = 2;
    public static final String TAG = "SerialFirmwareUpgradeProcedureSmart";
    private final FeatureVerifier mFeatureVerifier;
    private FirmwareUpgradeStatus mFirmwareUpgradeStatus;
    private final Object mFirmwareUpgradeStatusLock = new Object();
    private boolean mIsUpdatingMainApp;
    private boolean mIsUpdatingServiceApp;
    private FirmwareUpgradeProcedureListener mMainAppFirmwareUpgradeListener;
    private final Profile mProfile;
    private AppType mRunningApp;
    private final SerialProfileProxy mSerialProfileProxy;
    private FirmwareUpgradeProcedureListener mServiceAppFirmwareUpgradeListener;

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void loadInfo() {
    }

    public SerialFirmwareUpgradeProcedureSmart(Profile profile, FeatureVerifier featureVerifier) {
        this.mProfile = profile;
        this.mFeatureVerifier = featureVerifier;
        if (profile instanceof SerialProfileProxy) {
            this.mSerialProfileProxy = (SerialProfileProxy) profile;
            return;
        }
        throw new IllegalStateException("Profile must implement SerialProfileProxy.");
    }

    public void setStatus(FirmwareUpgradeStatus firmwareUpgradeStatus) {
        FirmwareUpgradeStatus firmwareUpgradeStatus2;
        synchronized (this.mFirmwareUpgradeStatusLock) {
            firmwareUpgradeStatus2 = this.mFirmwareUpgradeStatus;
        }
        if (firmwareUpgradeStatus2 != null) {
            firmwareUpgradeStatus2.onExit();
        }
        synchronized (this.mFirmwareUpgradeStatusLock) {
            this.mFirmwareUpgradeStatus = firmwareUpgradeStatus;
        }
        if (firmwareUpgradeStatus != null) {
            firmwareUpgradeStatus.onEnter();
        }
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public boolean isUpdatingMainApp() {
        return this.mIsUpdatingMainApp;
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public boolean isUpdatingServiceApp() {
        return this.mIsUpdatingServiceApp;
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void rebootToMainApp() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        rebootToMainApp(0);
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void rebootToMainApp(int i) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        CareLog.i(TAG, "Rebooting VCI in APPLICATION mode...", new Object[0]);
        if (isFirmwareUpdateInProgress()) {
            throw new CareLibException("Could not reboot while firmware is upgrading");
        }
        setFWMode(1, (char) i);
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void rebootToServiceApp() throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        rebootToServiceApp(0);
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void rebootToServiceApp(int i) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        CareLog.i(TAG, "Rebooting VCI in SERVICE mode...", new Object[0]);
        if (isFirmwareUpdateInProgress()) {
            throw new CareLibException("Could not reboot while firmware is upgrading.");
        }
        setFWMode(2, i);
    }

    public boolean rebootVCI(int i, int i2) throws CareLibException {
        CareLog.i(TAG, "Rebooting VCI[appType=%d,reserved=%d]", Integer.valueOf(i), Integer.valueOf(i2));
        if (isFirmwareUpdateInProgress()) {
            throw new CareLibException("Could not reboot while firmware is upgrading.");
        }
        setFWMode((char) i, (char) i2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFWInfo() {
        sendMessage(new Message.Builder().setCommandID(65).build());
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void updateMainApp(final File file, FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (isUpdatingMainApp()) {
            throw new CareLibException("MAIN app firmare upgrade is already running.");
        }
        if (!file.exists()) {
            throw new CareLibException("Resource file doesn't exists.");
        }
        this.mIsUpdatingMainApp = true;
        this.mMainAppFirmwareUpgradeListener = firmwareUpgradeProcedureListener;
        SynchronizedTask.Builder builder = new SynchronizedTask.Builder(TAG + "#updateMainApp()", new Runnable() { // from class: com.texa.carelib.care.firmwareupgrade.internal.SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m704x2e8dbcb1(file);
            }
        });
        builder.setPriority(1);
        TaskSynchronizer.getInstance().execute(builder.build());
    }

    /* JADX INFO: renamed from: lambda$updateMainApp$0$com-texa-carelib-care-firmwareupgrade-internal-SerialFirmwareUpgradeProcedureSmart, reason: not valid java name */
    public /* synthetic */ void m704x2e8dbcb1(File file) {
        setStatus(new FileTransferStatus(this, AppType.MAIN, file, 3, FileCarrier.SendActionType.Undefined));
    }

    @Override // com.texa.carelib.care.firmwareupgrade.FirmwareUpgradeProcedure
    public void updateServiceApp(final File file, FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener) throws CareLibException {
        if (!getFeatureVerifier().isConnected()) {
            throw new DongleNotConnectedException();
        }
        if (isUpdatingServiceApp()) {
            throw new CareLibException("SERVICE app firmare upgrade is already running.");
        }
        if (!file.exists()) {
            throw new CareLibException("Resource file doesn't exists.");
        }
        this.mIsUpdatingServiceApp = true;
        this.mServiceAppFirmwareUpgradeListener = firmwareUpgradeProcedureListener;
        SynchronizedTask.Builder builder = new SynchronizedTask.Builder(TAG + "#updateServiceApp()", new Runnable() { // from class: com.texa.carelib.care.firmwareupgrade.internal.SerialFirmwareUpgradeProcedureSmart$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m705x87e60f80(file);
            }
        });
        builder.setPriority(1);
        TaskSynchronizer.getInstance().execute(builder.build());
    }

    /* JADX INFO: renamed from: lambda$updateServiceApp$1$com-texa-carelib-care-firmwareupgrade-internal-SerialFirmwareUpgradeProcedureSmart, reason: not valid java name */
    public /* synthetic */ void m705x87e60f80(File file) {
        setStatus(new FileTransferStatus(this, AppType.SERVICE, file, 5, FileCarrier.SendActionType.Undefined));
    }

    protected void fireMainFirmwareUpgradeProgressChanged(float f) {
        CareLog.d(TAG, "Main APP: Firmware upgrade progress changed: %.02f", Float.valueOf(f));
        FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener = this.mMainAppFirmwareUpgradeListener;
        if (firmwareUpgradeProcedureListener != null) {
            firmwareUpgradeProcedureListener.onFirmwareUpgradeProgressChanged(new FirmwareUpgradeProgressChangedEvent(this, AppType.MAIN, f));
        }
    }

    protected void fireMainFirmwareUpgradeCompleted(File file, CareError careError) {
        CareLog.d(TAG, "Main APP: Firmware upgrade completed", new Object[0]);
        FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener = this.mMainAppFirmwareUpgradeListener;
        if (firmwareUpgradeProcedureListener != null) {
            firmwareUpgradeProcedureListener.onFirmwareUpgradeCompleted(new FirmwareUpgradeCompletedEvent(this, AppType.MAIN, file, careError));
        }
    }

    protected void fireServiceFirmwareUpgradeProgressChanged(float f) {
        CareLog.d(TAG, "Service APP: Firmware upgrade progress changed: %.02f", Float.valueOf(f));
        FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener = this.mServiceAppFirmwareUpgradeListener;
        if (firmwareUpgradeProcedureListener != null) {
            firmwareUpgradeProcedureListener.onFirmwareUpgradeProgressChanged(new FirmwareUpgradeProgressChangedEvent(this, AppType.SERVICE, f));
        }
    }

    protected void fireServiceFirmwareUpgradeCompleted(File file, CareError careError) {
        CareLog.d(TAG, "Service APP: Firmware upgrade completed", new Object[0]);
        FirmwareUpgradeProcedureListener firmwareUpgradeProcedureListener = this.mServiceAppFirmwareUpgradeListener;
        if (firmwareUpgradeProcedureListener != null) {
            firmwareUpgradeProcedureListener.onFirmwareUpgradeCompleted(new FirmwareUpgradeCompletedEvent(this, AppType.SERVICE, file, careError));
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        GetFirmwareStatusPacketParser.GetFirmwareStatusResponse getFirmwareStatusResponse;
        if (message.getCommandID() == 65 && (getFirmwareStatusResponse = GetFirmwareStatusPacketParser.parse(message)) != null) {
            if (getFirmwareStatusResponse.isBootloaderRunning()) {
                this.mRunningApp = AppType.SERVICE;
            } else {
                this.mRunningApp = AppType.MAIN;
            }
        }
        FirmwareUpgradeStatus firmwareUpgradeStatus = this.mFirmwareUpgradeStatus;
        if (firmwareUpgradeStatus != null) {
            firmwareUpgradeStatus.onMessageReceived(obj, message, careError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        if (this.mProfile.getProfileDelegate() == null) {
            throw new IllegalStateException("Profile delegate not set.");
        }
        return this.mProfile.getProfileDelegate().getApplicationContext();
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            reset();
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.firmwareupgrade.internal.SerialFirmwareUpgradeProcedureSmart$1, reason: invalid class name */
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
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private boolean isFirmwareUpdateInProgress() {
        return isUpdatingMainApp() || isUpdatingServiceApp();
    }

    private void reset() {
        this.mIsUpdatingMainApp = false;
        this.mIsUpdatingServiceApp = false;
        this.mMainAppFirmwareUpgradeListener = null;
        this.mServiceAppFirmwareUpgradeListener = null;
    }

    private void setFWMode(int i, int i2) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        ByteBufferUtils.putUnsignedByte(byteBufferAllocate, Integer.valueOf(i));
        ByteBufferUtils.putUnsignedByte(byteBufferAllocate, Integer.valueOf(i2));
        sendMessage(new Message.Builder().setCommandID(66).setPayload(byteBufferAllocate.array()).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void terminateUpdate(AppType appType, File file, CareError careError) {
        setStatus(null);
        try {
            if (AppType.MAIN == appType) {
                this.mIsUpdatingMainApp = false;
                fireMainFirmwareUpgradeCompleted(file, careError);
                this.mMainAppFirmwareUpgradeListener = null;
            } else if (AppType.SERVICE == appType) {
                this.mIsUpdatingServiceApp = false;
                fireServiceFirmwareUpgradeCompleted(file, careError);
                this.mServiceAppFirmwareUpgradeListener = null;
            }
        } finally {
            TaskSynchronizer.getInstance().executeNext();
        }
    }

    private abstract class FirmwareUpgradeStatus implements SerialProfileMessageReceiver {
        public void onEnter() {
        }

        public void onExit() {
        }

        @Override // com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
        }

        private FirmwareUpgradeStatus() {
        }

        /* synthetic */ FirmwareUpgradeStatus(SerialFirmwareUpgradeProcedureSmart serialFirmwareUpgradeProcedureSmart, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    private class FileTransferStatus extends FirmwareUpgradeStatus {
        private final AppType mAppType;
        private final SerialFirmwareUpgradeProcedureSmart mFWUpgradeProcedure;
        private final File mFile;
        private final int mFileType;
        private FileCarrier.SendActionType mSendActionType;

        public FileTransferStatus(SerialFirmwareUpgradeProcedureSmart serialFirmwareUpgradeProcedureSmart, AppType appType, File file, int i, FileCarrier.SendActionType sendActionType) {
            super(SerialFirmwareUpgradeProcedureSmart.this, null);
            this.mFWUpgradeProcedure = serialFirmwareUpgradeProcedureSmart;
            this.mFile = file;
            this.mFileType = i;
            this.mSendActionType = sendActionType;
            this.mAppType = appType;
        }

        @Override // com.texa.carelib.care.firmwareupgrade.internal.SerialFirmwareUpgradeProcedureSmart.FirmwareUpgradeStatus
        public void onEnter() {
            super.onEnter();
            try {
                SerialFirmwareUpgradeProcedureSmart.this.mSerialProfileProxy.getSerialFileCarrier().sendFile(SerialFirmwareUpgradeProcedureSmart.this.getContext(), new FileInputStream(this.mFile), this.mFileType, this.mSendActionType, null, new SimpleFileCarrierListener() { // from class: com.texa.carelib.care.firmwareupgrade.internal.SerialFirmwareUpgradeProcedureSmart.FileTransferStatus.1
                    @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                    public void onFileSent(FileSentEvent fileSentEvent) {
                        if (fileSentEvent.getError() != null) {
                            SerialFirmwareUpgradeProcedureSmart.this.terminateUpdate(FileTransferStatus.this.mAppType, FileTransferStatus.this.mFile, new CareError.Builder(1, 16).setMessage(SerialFirmwareUpgradeProcedureSmart.this.getContext().getString(R.string.error_firmware_upgrade)).setInnerError(fileSentEvent.getError()).build());
                        } else {
                            FileTransferStatus.this.mFWUpgradeProcedure.setStatus(SerialFirmwareUpgradeProcedureSmart.this.new FirmwareUpgradeFinalizeStatus(FileTransferStatus.this.mFWUpgradeProcedure, FileTransferStatus.this.mAppType, FileTransferStatus.this.mFile));
                        }
                    }

                    @Override // com.texa.carelib.profile.internal.filecarrier.SimpleFileCarrierListener, com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
                    public void onFileSentProgressChanged(FileSentProgressChangedEvent fileSentProgressChangedEvent) {
                        super.onFileSentProgressChanged(fileSentProgressChangedEvent);
                        if (AppType.MAIN != FileTransferStatus.this.mAppType) {
                            if (AppType.SERVICE == FileTransferStatus.this.mAppType) {
                                SerialFirmwareUpgradeProcedureSmart.this.fireServiceFirmwareUpgradeProgressChanged(fileSentProgressChangedEvent.getProgress());
                                return;
                            }
                            return;
                        }
                        SerialFirmwareUpgradeProcedureSmart.this.fireMainFirmwareUpgradeProgressChanged(fileSentProgressChangedEvent.getProgress());
                    }
                });
            } catch (CareLibException | FileNotFoundException e) {
                CareLog.e(SerialFirmwareUpgradeProcedureSmart.TAG, e, "Could not send data to the dongle.", new Object[0]);
                this.mFWUpgradeProcedure.terminateUpdate(this.mAppType, this.mFile, new CareError.Builder(1, 16).setMessage(SerialFirmwareUpgradeProcedureSmart.this.getContext().getString(R.string.error_could_not_send_file)).build());
            }
        }
    }

    private class FirmwareUpgradeFinalizeStatus extends FirmwareUpgradeStatus implements SerialProfileMessageReceiver {
        private final AppType mAppType;
        private final SerialFirmwareUpgradeProcedureSmart mFWUpgradeProcedure;
        private final File mFile;

        public FirmwareUpgradeFinalizeStatus(SerialFirmwareUpgradeProcedureSmart serialFirmwareUpgradeProcedureSmart, AppType appType, File file) {
            super(SerialFirmwareUpgradeProcedureSmart.this, null);
            this.mFWUpgradeProcedure = serialFirmwareUpgradeProcedureSmart;
            this.mAppType = appType;
            this.mFile = file;
        }

        @Override // com.texa.carelib.care.firmwareupgrade.internal.SerialFirmwareUpgradeProcedureSmart.FirmwareUpgradeStatus
        public void onEnter() {
            super.onEnter();
            this.mFWUpgradeProcedure.updateFWInfo();
        }

        @Override // com.texa.carelib.care.firmwareupgrade.internal.SerialFirmwareUpgradeProcedureSmart.FirmwareUpgradeStatus, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
        public void onMessageReceived(Object obj, Message message, CareError careError) {
            if (65 == message.getCommandID()) {
                this.mFWUpgradeProcedure.terminateUpdate(this.mAppType, this.mFile, null);
            }
        }
    }

    private void sendMessage(Message message) {
        SerialProfileProxy serialProfileProxy = this.mSerialProfileProxy;
        if (serialProfileProxy != null) {
            serialProfileProxy.sendMessage(message);
        }
    }

    private FeatureVerifier getFeatureVerifier() {
        return this.mFeatureVerifier;
    }
}
