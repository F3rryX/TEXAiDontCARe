package com.texa.carelib.profile.internal.filecarrier.internal;

import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.CareLibException;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.InternalFileCache;
import com.texa.carelib.core.utils.internal.ByteBufferUtils;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.R;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfile;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.filecarrier.FileCarrier;
import com.texa.carelib.profile.internal.filecarrier.FileCarrierListener;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileReceivedProgressChangedEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentEvent;
import com.texa.carelib.profile.internal.filecarrier.events.FileSentProgressChangedEvent;
import com.texa.carelib.profile.internal.parser.BeginFileDownloadPacketParser;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
class SerialFileCarrier extends ProfileSubModule implements FileCarrier, SerialProfileMessageReceiver {
    final String TAG = "SerialFileCarrier";
    private SerialFileComposer mCareFileComposer;
    private FileSplitter mCareFileSplitter;
    private InputStream mDataToSend;
    private float mDownloadProgress;
    private boolean mIsDownloading;
    private boolean mIsUploading;
    private FileCarrierListener mListener;
    private final SerialProfile mProfile;
    private FileCarrier.SendActionType mSendActionType;
    private int mTransferBlockCount;
    private float mUploadProgress;

    public SerialFileCarrier(SerialProfile serialProfile, int i) {
        this.mProfile = serialProfile;
        this.mTransferBlockCount = i;
        if (i > 1) {
            CareLog.d("SerialFileCarrier", "SerialFileCarrier will transfer " + i + " blocks at time.", new Object[0]);
        } else {
            CareLog.d("SerialFileCarrier", "SerialFileCarrier will transfer " + i + " block at time.", new Object[0]);
        }
        this.mSendActionType = FileCarrier.SendActionType.Undefined;
        this.mIsDownloading = false;
        this.mIsUploading = false;
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrier
    public void setFileCarrierListener(FileCarrierListener fileCarrierListener) {
        this.mListener = fileCarrierListener;
    }

    @Override // com.texa.carelib.profile.internal.filecarrier.FileCarrier
    public void sendFile(InputStream inputStream, int i, FileCarrier.SendActionType sendActionType, String str) throws CareLibException {
        int iAvailable;
        if (this.mIsUploading) {
            throw new CareLibException("Could not send file to the dongle.", new IllegalStateException("Another data transfer is already in progress"));
        }
        if (255 == i) {
            throw new CareLibException("Could not send file to the dongle.", new IllegalArgumentException("Undefined inputStream type!"));
        }
        this.mDataToSend = inputStream;
        this.mIsUploading = true;
        setUploadProgress(0.0f);
        this.mSendActionType = sendActionType;
        try {
            iAvailable = inputStream.available();
        } catch (IOException e) {
            CareLog.e(this.TAG, e, "Could not retrieve the number of bytes to transfer.", new Object[0]);
            iAvailable = 0;
        }
        CareLog.d(this.TAG, "Begin inputStream subscribe[type=%d length=%d]", Integer.valueOf(i), Integer.valueOf(iAvailable));
        this.mCareFileSplitter = new SerialInputStreamSplitter(inputStream, this.mTransferBlockCount);
        this.mProfile.sendMessage(new Message.Builder().setCommandID(70).setPayload(getBeginFileUpdatePayload(i, iAvailable, str)).build());
    }

    public static byte[] getBeginFileUpdatePayload(int i, int i2, String str) {
        if (i > 255) {
            throw new IllegalArgumentException("Illegal file type.");
        }
        int length = 5;
        byte[] bytes = null;
        if (str != null) {
            if (str.length() > 79) {
                throw new IllegalArgumentException("File name is too long.");
            }
            bytes = str.getBytes();
            length = 5 + bytes.length + 1;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.put((byte) (i & 255));
        byteBufferAllocate.putInt(i2);
        if (bytes != null) {
            byteBufferAllocate.put(bytes);
            byteBufferAllocate.put((byte) 0);
        }
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
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
        if (this.mIsDownloading) {
            return false;
        }
        CareLog.d(this.TAG, "receiveFileWithType[type=%d,fileName=%s]", Integer.valueOf(i), str);
        this.mIsDownloading = true;
        setDownloadProgress(0.0f);
        setFileType(i, str);
        return true;
    }

    private void setFileType(int i, String str) {
        CareLog.d(this.TAG, "Set file type: %d name: %s", Integer.valueOf(i), str);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(str != null ? 1 + str.length() : 1);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        ByteBufferUtils.putUnsignedByte(byteBufferAllocate, Integer.valueOf(i));
        if (str != null) {
            byteBufferAllocate.put(str.getBytes());
        }
        this.mProfile.sendMessage(new Message.Builder().setCommandID(58).setPayload(byteBufferAllocate.array()).build());
    }

    private void setOffset(int i) {
        CareLog.d(this.TAG, "set offset: %d", Integer.valueOf(i));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i);
        this.mProfile.sendMessage(new Message.Builder().setCommandID(50).setPayload(byteBufferAllocate.array()).build());
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        if (this.mIsUploading || this.mIsDownloading) {
            if (58 == message.getCommandID()) {
                handleMessageSetFileType(careError);
            }
            if (48 == message.getCommandID()) {
                handleMessageBeginFileDownload(message, careError);
                return;
            }
            if (70 == message.getCommandID()) {
                handleMessageBeginFileUpdate(careError);
                return;
            }
            if (71 == message.getCommandID()) {
                handleMessageSendFileData(careError);
                return;
            }
            if (75 == message.getCommandID()) {
                handleMessageEndFileUpdate(careError);
                return;
            }
            if (50 == message.getCommandID()) {
                handleMessageSetOffset(careError);
            } else if (49 == message.getCommandID()) {
                handleMessageGetFileData(message, careError);
            } else if (51 == message.getCommandID()) {
                handleMessageEndFileDownload(careError);
            }
        }
    }

    private void handleMessageBeginFileDownload(Message message, CareError careError) {
        if (careError != null) {
            terminateReceive(null, careError);
            return;
        }
        int fileSize = (int) BeginFileDownloadPacketParser.parse(message).getFileSize();
        try {
            this.mCareFileComposer = new SerialFileComposer(new InternalFileCache(this.mProfile.getProfileDelegate().getApplicationContext()).create(UUID.randomUUID().toString(), fileSize), fileSize);
            setOffset(0);
        } catch (IOException e) {
            CareLog.e(this.TAG, e, "Could not create the file.", new Object[0]);
            terminateReceive(null, new CareError.Builder(1, 10).setException(e).build());
        }
    }

    private void handleMessageSetFileType(CareError careError) {
        if (careError != null) {
            terminateReceive(null, careError);
        } else {
            beginDownload();
        }
    }

    private void beginDownload() {
        this.mProfile.sendMessage(new Message.Builder().setCommandID(48).build());
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

    private void handleMessageGetFileData(Message message, CareError careError) {
        CareLog.v(this.TAG, "handleMessageGetFileData", new Object[0]);
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
        this.mProfile.sendMessage(new Message.Builder().setCommandID(49).build());
    }

    private void terminateReceive(File file, CareError careError) {
        CareLog.d(this.TAG, "terminateReceive", new Object[0]);
        this.mIsDownloading = false;
        this.mCareFileComposer = null;
        if (careError != null) {
            CareLog.e(this.TAG, "Received file with error: %s", careError);
        } else if (file != null) {
            CareLog.d(this.TAG, "Received file with size: %d", Long.valueOf(file.length()));
        }
        this.mListener.onFileReceived(new FileReceivedEvent(this, file, careError));
    }

    private void handleMessageEndFileUpdate(CareError careError) {
        CareLog.v(this.TAG, "handleMessageEndFileUpdate", new Object[0]);
        terminateSend(careError);
    }

    private void handleMessageSendFileData(CareError careError) {
        CareLog.v(this.TAG, "handleMessageSendFileData", new Object[0]);
        if (careError != null) {
            terminateSend(careError);
            return;
        }
        byte[] chunkOfData = this.mCareFileSplitter.getChunkOfData();
        setUploadProgress(this.mCareFileSplitter.getProgress());
        if (chunkOfData != null) {
            this.mProfile.sendMessage(new Message.Builder().setCommandID(71).setPayload(chunkOfData).build());
        } else {
            this.mProfile.sendMessage(new Message.Builder().setCommandID(75).setPayload(new byte[]{(byte) this.mSendActionType.value()}).build());
        }
    }

    private void handleMessageBeginFileUpdate(CareError careError) {
        CareLog.v(this.TAG, "handleMessageBeginFileUpdate", new Object[0]);
        if (careError != null) {
            terminateSend(careError);
            return;
        }
        byte[] chunkOfData = this.mCareFileSplitter.getChunkOfData();
        if (chunkOfData != null) {
            this.mProfile.sendMessage(new Message.Builder().setCommandID(71).setPayload(chunkOfData).build());
        } else {
            terminateSend(new CareError.Builder(1, 9).setMessage(this.mProfile.getProfileDelegate().getApplicationContext().getResources().getString(R.string.error_file_carrier_upload_empty_file)).build());
        }
    }

    private void terminateSend(CareError careError) {
        this.mIsUploading = false;
        this.mCareFileSplitter = null;
        this.mSendActionType = FileCarrier.SendActionType.Undefined;
        if (careError == null) {
            CareLog.d(this.TAG, "File sent successfully.", new Object[0]);
        } else {
            CareLog.e(this.TAG, "An error occurred: %s", careError);
        }
        FileCarrierListener fileCarrierListener = this.mListener;
        if (fileCarrierListener != null) {
            fileCarrierListener.onFileSent(new FileSentEvent(this, careError));
        } else {
            CareLog.w(this.TAG, "Listener is null!!!!", new Object[0]);
        }
        this.mDataToSend = null;
    }

    private void fireDownloadProgressChanged(float f) {
        FileCarrierListener fileCarrierListener = this.mListener;
        if (fileCarrierListener == null || this.mCareFileComposer == null) {
            return;
        }
        fileCarrierListener.onFileReceivedProgressChanged(new FileReceivedProgressChangedEvent(this, f));
    }

    private void fireUploadProgressChanged(float f) {
        FileCarrierListener fileCarrierListener = this.mListener;
        if (fileCarrierListener == null || this.mCareFileSplitter == null) {
            return;
        }
        fileCarrierListener.onFileSentProgressChanged(new FileSentProgressChangedEvent(this, f));
    }

    protected void setDownloadProgress(float f) {
        if (this.mDownloadProgress != f) {
            this.mDownloadProgress = f;
            fireDownloadProgressChanged(f);
        }
    }

    protected void setUploadProgress(float f) {
        if (this.mUploadProgress != f) {
            this.mUploadProgress = f;
            fireUploadProgressChanged(f);
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    /* JADX INFO: renamed from: com.texa.carelib.profile.internal.filecarrier.internal.SerialFileCarrier$1, reason: invalid class name */
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

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$communication$CommunicationStatus[communicationStatusChangedEvent.getCommunicationStatus().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            CareLog.v(this.TAG, "Not connected!!", new Object[0]);
            if (this.mIsUploading) {
                terminateSend(new CareError.Builder(1, 19).setMessage(this.mProfile.getProfileDelegate().getApplicationContext().getString(R.string.error_connection_lost)).build());
            } else if (this.mIsDownloading) {
                terminateReceive(null, new CareError.Builder(1, 19).setMessage(this.mProfile.getProfileDelegate().getApplicationContext().getString(R.string.error_connection_lost)).build());
            }
        }
    }
}
