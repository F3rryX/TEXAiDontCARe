.class Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "SerialFileCarrier.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# instance fields
.field final TAG:Ljava/lang/String;

.field private mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

.field private mCareFileSplitter:Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;

.field private mDataToSend:Ljava/io/InputStream;

.field private mDownloadProgress:F

.field private mIsDownloading:Z

.field private mIsUploading:Z

.field private mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

.field private final mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

.field private mSendActionType:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

.field private mTransferBlockCount:I

.field private mUploadProgress:F


# direct methods
.method public constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;I)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    const-string v0, "SerialFileCarrier"

    .line 43
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    .line 65
    iput p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mTransferBlockCount:I

    const-string p1, "SerialFileCarrier will transfer "

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " blocks at time."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " block at time."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :goto_0
    sget-object p1, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->Undefined:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mSendActionType:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    .line 76
    iput-boolean v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsDownloading:Z

    .line 77
    iput-boolean v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsUploading:Z

    return-void
.end method

.method private beginDownload()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method private fireDownloadProgressChanged(F)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    if-eqz v1, :cond_0

    .line 421
    new-instance v1, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;-><init>(Ljava/lang/Object;F)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileReceivedProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method private fireUploadProgressChanged(F)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileSplitter:Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;

    if-eqz v1, :cond_0

    .line 426
    new-instance v1, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;-><init>(Ljava/lang/Object;F)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileSentProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method public static getBeginFileUpdatePayload(IILjava/lang/String;)[B
    .locals 4

    const/16 v0, 0xff

    if-gt p0, v0, :cond_3

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x4f

    if-gt v2, v3, :cond_0

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 142
    array-length p2, v2

    add-int/lit8 p2, p2, 0x1

    add-int/2addr v1, p2

    goto :goto_0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File name is too long."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 146
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    and-int/2addr p0, v0

    int-to-byte p0, p0

    .line 147
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 155
    :cond_2
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 130
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal file type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleMessageBeginFileDownload(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 257
    invoke-direct {p0, v0, p2}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/BeginFileDownloadPacketParser$Response;->getFileSize()J

    move-result-wide p1

    long-to-int p2, p1

    const/4 p1, 0x0

    .line 262
    :try_start_0
    new-instance v1, Lcom/texa/carelib/core/utils/InternalFileCache;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/texa/carelib/core/utils/InternalFileCache;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/texa/carelib/core/utils/FileCache;->create(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 264
    new-instance v2, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-direct {v2, v1, p2}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;-><init>(Ljava/io/File;I)V

    iput-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    .line 265
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->setOffset(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 267
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "Could not create the file."

    invoke-static {v1, p2, v2, p1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method private handleMessageBeginFileUpdate(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleMessageBeginFileUpdate"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 383
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateSend(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileSplitter:Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;

    invoke-interface {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;->getChunkOfData()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 395
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v0, 0x1

    const/16 v1, 0x9

    invoke-direct {p1, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/texa/carelib/profile/R$string;->error_file_carrier_upload_empty_file:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateSend(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method private handleMessageEndFileDownload(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleMessageEndFileDownload"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 292
    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 297
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/texa/carelib/profile/R$string;->error_file_carrier_download_expected_received_mismatch:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->getData()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method private handleMessageEndFileUpdate(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleMessageEndFileUpdate"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateSend(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private handleMessageGetFileData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleMessageGetFileData"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 310
    invoke-direct {p0, v0, p2}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 315
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->processChunk([B)J

    .line 317
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->setDownloadProgress(F)V

    .line 319
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->getOffset()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->setOffset(I)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance p2, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p2}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x33

    invoke-virtual {p2, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 325
    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p2, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method private handleMessageSendFileData(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "handleMessageSendFileData"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 363
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateSend(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileSplitter:Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;

    invoke-interface {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;->getChunkOfData()[B

    move-result-object p1

    .line 368
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileSplitter:Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;

    invoke-interface {v0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;->getProgress()F

    move-result v0

    .line 369
    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->setUploadProgress(F)V

    if-eqz p1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x4b

    invoke-virtual {v0, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mSendActionType:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    invoke-virtual {v3}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->value()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :goto_0
    return-void
.end method

.method private handleMessageSetFileType(Lcom/texa/carelib/core/CareError;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->beginDownload()V

    :goto_0
    return-void
.end method

.method private handleMessageSetOffset(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleMessageSetOffset"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method private setFileType(ILjava/lang/String;)V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v3, "Set file type: %d name: %s"

    invoke-static {v0, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 209
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 210
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedByte(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    if-eqz p2, :cond_1

    .line 213
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance p2, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p2}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {p2, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method private setOffset(I)V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "set offset: %d"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 223
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 227
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method private terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "terminateReceive"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iput-boolean v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsDownloading:Z

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v1, "Received file with error: %s"

    invoke-static {v2, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 348
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Received file with size: %d"

    invoke-static {v2, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    new-instance v1, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;-><init>(Ljava/lang/Object;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileReceived(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;)V

    return-void
.end method

.method private terminateSend(Lcom/texa/carelib/core/CareError;)V
    .locals 5

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsUploading:Z

    const/4 v1, 0x0

    .line 401
    iput-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileSplitter:Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;

    .line 402
    sget-object v2, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->Undefined:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    iput-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mSendActionType:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    if-nez p1, :cond_0

    .line 405
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "File sent successfully."

    invoke-static {v2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string v4, "An error occurred: %s"

    invoke-static {v2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :goto_0
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    if-eqz v2, :cond_1

    .line 411
    new-instance v0, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v2, v0}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileSent(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;)V

    goto :goto_1

    .line 413
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Listener is null!!!!"

    invoke-static {p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    :goto_1
    iput-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mDataToSend:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-object v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 3

    .line 451
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not connected!!"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-boolean p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsUploading:Z

    const/16 v1, 0x13

    if-eqz p1, :cond_1

    .line 461
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p1, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/texa/carelib/profile/R$string;->error_connection_lost:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateSend(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-boolean p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsDownloading:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 463
    new-instance v2, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v2, v0, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/texa/carelib/profile/R$string;->error_connection_lost:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 232
    iget-boolean p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsUploading:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsDownloading:Z

    if-eqz p1, :cond_8

    :cond_0
    const/16 p1, 0x3a

    .line 234
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 235
    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->handleMessageSetFileType(Lcom/texa/carelib/core/CareError;)V

    :cond_1
    const/16 p1, 0x30

    .line 236
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 237
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->handleMessageBeginFileDownload(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x46

    .line 238
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 239
    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->handleMessageBeginFileUpdate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x47

    .line 240
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 241
    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->handleMessageSendFileData(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x4b

    .line 242
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 243
    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->handleMessageEndFileUpdate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x32

    .line 244
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 245
    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->handleMessageSetOffset(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_6
    const/16 p1, 0x31

    .line 246
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 247
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->handleMessageGetFileData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_7
    const/16 p1, 0x33

    .line 248
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p2

    if-ne p1, p2, :cond_8

    .line 249
    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->handleMessageEndFileDownload(Lcom/texa/carelib/core/CareError;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public receiveFileWithType(II)Z
    .locals 4

    .line 161
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsDownloading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "receiveFileWithType[type=%d,size=%d]"

    invoke-static {v0, p1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :try_start_0
    new-instance p1, Lcom/texa/carelib/core/utils/InternalFileCache;

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/utils/InternalFileCache;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/texa/carelib/core/utils/FileCache;->create(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 168
    new-instance v0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-direct {v0, p1, p2}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    iput-boolean v3, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsDownloading:Z

    const/4 p1, 0x0

    .line 175
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->setDownloadProgress(F)V

    .line 176
    invoke-direct {p0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->setOffset(I)V

    return v3

    :catch_0
    move-exception p1

    .line 170
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Could not create the file."

    invoke-static {p2, p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public receiveFileWithType(ILjava/lang/String;)Z
    .locals 4

    .line 182
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsDownloading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const-string v3, "receiveFileWithType[type=%d,fileName=%s]"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iput-boolean v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsDownloading:Z

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->setDownloadProgress(F)V

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->setFileType(ILjava/lang/String;)V

    return v1
.end method

.method public sendFile(Ljava/io/InputStream;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsUploading:Z

    const-string v1, "Could not send file to the dongle."

    if-nez v0, :cond_1

    const/16 v0, 0xff

    if-eq v0, p2, :cond_0

    .line 95
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mDataToSend:Ljava/io/InputStream;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mIsUploading:Z

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->setUploadProgress(F)V

    .line 99
    iput-object p3, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mSendActionType:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    const/4 p3, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 104
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    new-array v3, p3, [Ljava/lang/Object;

    const-string v4, "Could not retrieve the number of bytes to transfer."

    invoke-static {v2, v1, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v0

    const-string p3, "Begin inputStream subscribe[type=%d length=%d]"

    invoke-static {v2, p3, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance p3, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;

    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mTransferBlockCount:I

    invoke-direct {p3, p1, v0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialInputStreamSplitter;-><init>(Ljava/io/InputStream;I)V

    iput-object p3, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mCareFileSplitter:Lcom/texa/carelib/profile/internal/filecarrier/internal/FileSplitter;

    .line 117
    invoke-static {p2, v1, p4}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->getBeginFileUpdatePayload(IILjava/lang/String;)[B

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance p3, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p3}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 p4, 0x46

    invoke-virtual {p3, p4}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 92
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Undefined inputStream type!"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 88
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Another data transfer is already in progress"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected setDownloadProgress(F)V
    .locals 1

    .line 430
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mDownloadProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 431
    iput p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mDownloadProgress:F

    .line 432
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->fireDownloadProgressChanged(F)V

    :cond_0
    return-void
.end method

.method public setFileCarrierListener(Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    return-void
.end method

.method protected setUploadProgress(F)V
    .locals 1

    .line 437
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mUploadProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 438
    iput p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->mUploadProgress:F

    .line 439
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileCarrier;->fireUploadProgressChanged(F)V

    :cond_0
    return-void
.end method
