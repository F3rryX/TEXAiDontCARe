.class Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;
.super Ljava/lang/Object;
.source "SerialTripLogBookFileCarrier.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

.field private mDownloadProgress:F

.field private mIsDownloading:Z

.field private mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

.field private final mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;


# direct methods
.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SerialTripLogBookFileCarrier"

    .line 35
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    return-void
.end method

.method private fireDownloadProgressChanged(F)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;-><init>(Ljava/lang/Object;F)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileReceivedProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method private handleMessageEndFileDownload(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleMessageEndFileDownload"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 116
    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 120
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

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

    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->getData()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method private handleMessageGetFileTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleMessageGetFileTripData"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 132
    invoke-direct {p0, v0, p2}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 137
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->processChunk([B)J

    .line 138
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->getProgress()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->setDownloadProgress(F)V

    .line 140
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 141
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;->getOffset()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->setOffset(I)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

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

    .line 146
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

    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method private handleMessageSetOffset(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "handleMessageSetOffset"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method private setOffset(I)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "set offset: %d"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 91
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 95
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

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

    .line 161
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "terminateReceive"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iput-boolean v1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mIsDownloading:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v1, "Received trip file with error: %s"

    invoke-static {v2, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Received trip file with size: %d"

    invoke-static {v2, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    .line 171
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    new-instance v1, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;-><init>(Ljava/lang/Object;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileReceived(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;)V

    return-void
.end method


# virtual methods
.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 3

    .line 189
    sget-object v0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

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

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Not connected!!"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-boolean p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mIsDownloading:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 199
    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v2, 0x13

    invoke-direct {v1, v0, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/texa/carelib/profile/R$string;->error_connection_lost:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->terminateReceive(Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 100
    iget-boolean p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mIsDownloading:Z

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 102
    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->handleMessageSetOffset(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x36

    if-ne p1, v0, :cond_1

    .line 104
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->handleMessageGetFileTripData(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 p2, 0x33

    if-ne p1, p2, :cond_2

    .line 106
    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->handleMessageEndFileDownload(Lcom/texa/carelib/core/CareError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public receiveFileWithType(II)Z
    .locals 4

    .line 64
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mIsDownloading:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

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

    .line 69
    :try_start_0
    new-instance p1, Lcom/texa/carelib/core/utils/InternalFileCache;

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mProfile:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/utils/InternalFileCache;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/texa/carelib/core/utils/FileCache;->create(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;

    invoke-direct {v0, p1, p2}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mCareFileComposer:Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialFileComposer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    iput-boolean v3, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mIsDownloading:Z

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->setDownloadProgress(F)V

    .line 79
    invoke-direct {p0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->setOffset(I)V

    return v3

    :catch_0
    move-exception p1

    .line 73
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Could not create the file."

    invoke-static {p2, p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public receiveFileWithType(ILjava/lang/String;)Z
    .locals 0

    .line 85
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not download trip log book by name."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendFile(Ljava/io/InputStream;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 59
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not send file through "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setDownloadProgress(F)V
    .locals 1

    .line 180
    iget v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mDownloadProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 182
    iput p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mDownloadProgress:F

    .line 183
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->fireDownloadProgressChanged(F)V

    :cond_0
    return-void
.end method

.method public setFileCarrierListener(Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/internal/SerialTripLogBookFileCarrier;->mListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    return-void
.end method
