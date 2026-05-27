package com.texa.carelib.profile.internal.filecarrier.internal;

import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.InternalFileCache;
import com.texa.carelib.profile.R;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.filecarrier.FileCarrier;
import com.texa.carelib.profile.internal.filecarrier.FileCarrierListener;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedProgressChangedEvent;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
class SerialTripLogBookFileCarrier implements FileCarrier, SerialProfileMessageReceiver {
    private final String TAG = "SerialTripLogBookFileCarrier";
    private SerialFileComposer mCareFileComposer;
    private float mDownloadProgress;
    private boolean mIsDownloading;
    private FileCarrierListener mListener;
    private final SerialProfile mProfile;

    SerialTripLogBookFileCarrier(SerialProfile serialProfile) {
        this.mProfile = serialProfile;
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrier
    public void setFileCarrierListener(FileCarrierListener fileCarrierListener) {
        this.mListener = fileCarrierListener;
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrier
    public void sendFile(InputStream inputStream, int i, FileCarrier.SendActionType sendActionType, String str) throws CareLibException {
        throw new IllegalStateException("Could not send file through " + this.TAG);
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrier
    public boolean receiveFileWithType(int i, int i2) {
        if (this.mIsDownloading) {
            return false;
        }
        CareLog.d(this.TAG, "receiveFileWithType[type=%d,size=%d]", Integer.valueOf(i), Integer.valueOf(i2));
        try {
            this.mCareFileComposer = new SerialFileComposer(new InternalFileCache(this.mProfile.getProfileDelegate().getApplicationContext()).create(UUID.randomUUID().toString(), i2), i2);
            this.mIsDownloading = true;
            setDownloadProgress(0.0f);
            setOffset(0);
            return true;
        } catch (IOException e) {
            CareLog.e(this.TAG, e, "Could not create the file.", new Object[0]);
            return false;
        }
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrier
    public boolean receiveFileWithType(int i, String str) {
        throw new IllegalStateException("Could not download trip log book by name.");
    }

    private void setOffset(int i) {
        CareLog.d(this.TAG, "set offset: %d", Integer.valueOf(i));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i);
        this.mProfile.sendMessage(new Message.Builder().setCommandID(50).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        if (this.mIsDownloading) {
            if (message.getCommandID() == 50) {
                handleMessageSetOffset(careError);
            } else if (message.getCommandID() == 54) {
                handleMessageGetFileTripData(message, careError);
            } else if (message.getCommandID() == 51) {
                handleMessageEndFileDownload(careError);
            }
        }
    }

    private void handleMessageEndFileDownload(CareError careError) {
        CareLog.v(this.TAG, "handleMessageEndFileDownload", new Object[0]);
        if (careError != null) {
            terminateReceive(null, careError);
        } else if (!this.mCareFileComposer.isCompleted()) {
            terminateReceive(null, new CareError.Builder(1, 10).setMessage(this.mProfile.getProfileDelegate().getApplicationContext().getString(R.string.error_file_carrier_download_expected_received_mismatch)).build());
        } else {
            terminateReceive(this.mCareFileComposer.getData(), null);
        }
    }

    private void handleMessageGetFileTripData(Message message, CareError careError) {
        CareLog.v(this.TAG, "handleMessageGetFileTripData", new Object[0]);
        if (careError != null) {
            terminateReceive(null, careError);
            return;
        }
        try {
            this.mCareFileComposer.processChunk(message.getData());
            setDownloadProgress(this.mCareFileComposer.getProgress());
            if (!this.mCareFileComposer.isCompleted()) {
                setOffset(this.mCareFileComposer.getOffset());
            } else {
                this.mProfile.sendMessage(new Message.Builder().setCommandID(51).build());
            }
        } catch (IOException e) {
            terminateReceive(null, new CareError.Builder(1, 10).setMessage(e.getMessage()).setException(e).build());
        }
    }

    private void handleMessageSetOffset(CareError careError) {
        CareLog.v(this.TAG, "handleMessageSetOffset", new Object[0]);
        if (careError != null) {
            terminateReceive(null, careError);
        }
        this.mProfile.sendMessage(new Message.Builder().setCommandID(54).build());
    }

    private void terminateReceive(File file, CareError careError) {
        CareLog.d(this.TAG, "terminateReceive", new Object[0]);
        this.mIsDownloading = false;
        if (careError != null) {
            CareLog.e(this.TAG, "Received trip file with error: %s", careError);
        } else if (file != null) {
            CareLog.d(this.TAG, "Received trip file with size: %d", Long.valueOf(file.length()));
        }
        this.mCareFileComposer = null;
        this.mListener.onFileReceived(new FileReceivedEvent(this, file, careError));
    }

    private void fireDownloadProgressChanged(float f) {
        FileCarrierListener fileCarrierListener = this.mListener;
        if (fileCarrierListener == null || this.mCareFileComposer == null) {
            return;
        }
        fileCarrierListener.onFileReceivedProgressChanged(new FileReceivedProgressChangedEvent(this, f));
    }

    protected void setDownloadProgress(float f) {
        if (this.mDownloadProgress != f) {
            this.mDownloadProgress = f;
            fireDownloadProgressChanged(f);
        }
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.internal.filecarrier.internal.SerialTripLogBookFileCarrier$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$communication$CommunicationStatus;

        static {
            int[] iArr = new int[CommunicationStatus.values().length];
            $SwitchMap$com$texa$carelib$communication$CommunicationStatus = iArr;
            try {
                iArr[CommunicationStatus.DISCONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.CONNECTION_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NOT_SUPPORTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$communication$CommunicationStatus[CommunicationStatus.NO_MEDIUM_ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrier
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            CareLog.v(this.TAG, "Not connected!!", new Object[0]);
            if (this.mIsDownloading) {
                terminateReceive(null, new CareError.Builder(1, 19).setMessage(this.mProfile.getProfileDelegate().getApplicationContext().getString(R.string.error_connection_lost)).build());
            }
        }
    }
}
