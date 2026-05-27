package com.texa.carelib.profile.internal.filecarrier;

import android.content.Context;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.ReentrantLockWrapper;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.filecarrier.FileCarrier;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedProgressChangedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentProgressChangedEvent;
import com.texa.carelib.profile.internal.filecarrier.internal.SerialFileCarrierFactory;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class SerialFileCarrierFacade extends ProfileSubModule implements SerialProfileMessageReceiver {
    public static final String TAG = "SerialFileCarrierFacade";
    private static SerialFileCarrierFacade _Instance;
    private FileCarrier mFileCarrier;
    private final ReentrantLockWrapper mFileCarrierLock = new ReentrantLockWrapper(TAG, "mFileCarrierLock");
    private final SerialProfile mProfile;

    public SerialFileCarrierFacade(SerialProfile serialProfile) {
        this.mProfile = serialProfile;
    }

    public boolean isFileTransferPending() {
        this.mFileCarrierLock.lock("isFileTransferPending");
        try {
            return this.mFileCarrier != null;
        } finally {
            this.mFileCarrierLock.unlock("isFileTransferPending");
        }
    }

    public void sendFile(Context context, InputStream inputStream, int i, FileCarrier.SendActionType sendActionType, String str, FileCarrierListener fileCarrierListener) throws CareLibException {
        FileCarrier fileCarrierCreate;
        if (isFileTransferPending()) {
            throw new CareLibException("A file transfer operation is pending.");
        }
        if (255 == i) {
            throw new CareLibException("File type cannot be FILE_TYPE_UNDEFINED.");
        }
        SerialFileCarrierFactory serialFileCarrierFactory = new SerialFileCarrierFactory();
        this.mFileCarrierLock.lock("sendFile");
        AnonymousClass1 anonymousClass1 = null;
        try {
            try {
                fileCarrierCreate = serialFileCarrierFactory.create(this.mProfile, i);
                this.mFileCarrier = fileCarrierCreate;
            } catch (CareLibException unused) {
                this.mFileCarrier = null;
            }
            if (fileCarrierCreate == null) {
                throw new CareLibException("Unsupported file type.");
            }
            fileCarrierCreate.setFileCarrierListener(new FileCarrierListenerFacade(this, fileCarrierListener, anonymousClass1));
            this.mFileCarrier.sendFile(inputStream, i, sendActionType, str);
        } finally {
            this.mFileCarrierLock.unlock("sendFile");
        }
    }

    public boolean receiveFileWithType(Context context, int i, int i2, FileCarrierListener fileCarrierListener) {
        boolean z = false;
        if (isFileTransferPending()) {
            CareLog.e(TAG, "A file transfer operation is pending. ", new Object[0]);
            return false;
        }
        if (255 == i) {
            CareLog.e(TAG, "File type cannot be FILE_TYPE_UNDEFINED.", new Object[0]);
            return false;
        }
        SerialFileCarrierFactory serialFileCarrierFactory = new SerialFileCarrierFactory();
        this.mFileCarrierLock.lock("receiveFileWithType");
        try {
            FileCarrier fileCarrierCreate = serialFileCarrierFactory.create(this.mProfile, i);
            this.mFileCarrier = fileCarrierCreate;
            if (fileCarrierCreate != null) {
                fileCarrierCreate.setFileCarrierListener(new FileCarrierListenerFacade(this, fileCarrierListener, null));
                boolean zReceiveFileWithType = this.mFileCarrier.receiveFileWithType(i, i2);
                if (!zReceiveFileWithType) {
                    CareLog.e(TAG, "receiveFileWithType returns false.", new Object[0]);
                    this.mFileCarrier = null;
                }
                z = zReceiveFileWithType;
            } else {
                CareLog.e(TAG, "Could not create FileCarrier instance for file type: %d", Integer.valueOf(i));
            }
            return z;
        } finally {
            this.mFileCarrierLock.unlock("receiveFileWithType");
        }
    }

    public boolean receiveFileWithType(Context context, int i, String str, FileCarrierListener fileCarrierListener) {
        boolean z = false;
        if (isFileTransferPending()) {
            CareLog.e(TAG, "A file transfer operation is pending. ", new Object[0]);
            return false;
        }
        if (255 == i) {
            CareLog.e(TAG, "File type cannot be FILE_TYPE_UNDEFINED.", new Object[0]);
            return false;
        }
        SerialFileCarrierFactory serialFileCarrierFactory = new SerialFileCarrierFactory();
        this.mFileCarrierLock.lock("receiveFileWithType");
        try {
            FileCarrier fileCarrierCreate = serialFileCarrierFactory.create(this.mProfile, i);
            this.mFileCarrier = fileCarrierCreate;
            if (fileCarrierCreate != null) {
                fileCarrierCreate.setFileCarrierListener(new FileCarrierListenerFacade(this, fileCarrierListener, null));
                boolean zReceiveFileWithType = this.mFileCarrier.receiveFileWithType(i, str);
                if (!zReceiveFileWithType) {
                    CareLog.e(TAG, "receiveFileWithType returns false.", new Object[0]);
                    this.mFileCarrier = null;
                }
                z = zReceiveFileWithType;
            } else {
                CareLog.e(TAG, "Could not create FileCarrier instance for file type: %d", Integer.valueOf(i));
            }
            return z;
        } finally {
            this.mFileCarrierLock.unlock("receiveFileWithType");
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        FileCarrier fileCarrier = this.mFileCarrier;
        if (fileCarrier instanceof SerialProfileMessageReceiver) {
            ((SerialProfileMessageReceiver) fileCarrier).onMessageReceived(obj, message, careError);
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.internal.filecarrier.SerialFileCarrierFacade$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.CONNECTION_FAILED.ordinal()] = 1;
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
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4 || i == 5) {
            FileCarrier fileCarrier = this.mFileCarrier;
            if (fileCarrier != null) {
                fileCarrier.onCommunicationStatusChanged(communicationStatusChangedEvent);
            }
            this.mFileCarrier = null;
        }
    }

    private class FileCarrierListenerFacade implements FileCarrierListener {
        private final FileCarrierListener mOuterListener;

        /* synthetic */ FileCarrierListenerFacade(SerialFileCarrierFacade serialFileCarrierFacade, FileCarrierListener fileCarrierListener, AnonymousClass1 anonymousClass1) {
            this(fileCarrierListener);
        }

        private FileCarrierListenerFacade(FileCarrierListener fileCarrierListener) {
            this.mOuterListener = fileCarrierListener;
        }

        @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
        public void onFileSent(FileSentEvent fileSentEvent) {
            SerialFileCarrierFacade.this.mFileCarrier = null;
            FileCarrierListener fileCarrierListener = this.mOuterListener;
            if (fileCarrierListener != null) {
                fileCarrierListener.onFileSent(fileSentEvent);
            }
        }

        @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
        public void onFileReceived(FileReceivedEvent fileReceivedEvent) {
            SerialFileCarrierFacade.this.mFileCarrier = null;
            FileCarrierListener fileCarrierListener = this.mOuterListener;
            if (fileCarrierListener != null) {
                fileCarrierListener.onFileReceived(fileReceivedEvent);
            }
        }

        @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
        public void onFileReceivedProgressChanged(FileReceivedProgressChangedEvent fileReceivedProgressChangedEvent) {
            FileCarrierListener fileCarrierListener = this.mOuterListener;
            if (fileCarrierListener != null) {
                fileCarrierListener.onFileReceivedProgressChanged(fileReceivedProgressChangedEvent);
            }
        }

        @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrierListener
        public void onFileSentProgressChanged(FileSentProgressChangedEvent fileSentProgressChangedEvent) {
            FileCarrierListener fileCarrierListener = this.mOuterListener;
            if (fileCarrierListener != null) {
                fileCarrierListener.onFileSentProgressChanged(fileSentProgressChangedEvent);
            }
        }
    }
}
