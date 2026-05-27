.class final Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;
.super Ljava/lang/Thread;
.source "SerialProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataWriterTask"
.end annotation


# instance fields
.field final _TAG:Ljava/lang/String;

.field private final mBluetoothSocketLock:Ljava/lang/Object;

.field private volatile mIsInterrupted:Z

.field private mLastMessageID:Ljava/util/UUID;

.field private final mMessageQueue:Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mRequest:Lcom/texa/carelib/communication/Message;

.field private mResponse:Lcom/texa/carelib/communication/Message;

.field private final mResponseLock:Ljava/lang/Object;

.field private mSendRetry:I

.field private mState:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

.field private final mWaitMessage:Ljava/lang/Object;

.field private mWriteTime:J

.field final synthetic this$0:Lcom/texa/carelib/profile/internal/SerialProfile;


# direct methods
.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V
    .locals 1

    .line 617
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    const-string p1, "DataWriterTask"

    .line 618
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 615
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->_TAG:Ljava/lang/String;

    .line 620
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->Idle:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mState:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    .line 621
    new-instance p1, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;-><init>(Z)V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mMessageQueue:Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;

    .line 622
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mWaitMessage:Ljava/lang/Object;

    .line 623
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponseLock:Ljava/lang/Object;

    .line 624
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mBluetoothSocketLock:Ljava/lang/Object;

    return-void
.end method

.method private checksum([BII)B
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 838
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 839
    aget-byte v1, p1, p2

    add-int/2addr v0, v1

    int-to-char v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    int-to-byte p1, v0

    return p1
.end method

.method private setState(Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mState:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    return-void
.end method

.method private write(Ljava/io/OutputStream;[B)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 889
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 893
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 906
    sget-object v2, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    array-length v4, p2

    invoke-static {p2, v4}, Lcom/texa/carelib/core/logging/internal/LogUtils;->dataToString([BI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    const-string p2, "BT socket write has failed. [Attempt=%1$d/%2$d, Data:%3$s(length=%4$d bytes)"

    invoke-static {v2, p1, p2, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x14

    .line 908
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return v0
.end method


# virtual methods
.method generateMessage(I[B)[B
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 855
    array-length v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x6

    add-int/lit8 v3, v2, 0x2

    .line 857
    new-array v3, v3, [B

    const/4 v4, 0x2

    .line 860
    aput-byte v4, v3, v0

    int-to-byte p1, p1

    const/4 v5, 0x1

    .line 862
    aput-byte p1, v3, v5

    .line 864
    aput-byte v0, v3, v4

    const/4 p1, 0x3

    .line 866
    aput-byte v0, v3, p1

    const/4 v4, 0x4

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    .line 868
    aput-byte v6, v3, v4

    const/4 v4, 0x5

    const v6, 0xff00

    and-int/2addr v6, v1

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    .line 869
    aput-byte v6, v3, v4

    if-eqz p2, :cond_1

    const/4 v4, 0x6

    .line 872
    invoke-static {p2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 876
    :cond_1
    invoke-direct {p0, v3, v5, v2}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->checksum([BII)B

    move-result p2

    .line 877
    aput-byte p2, v3, v2

    add-int/2addr v2, v5

    .line 879
    aput-byte p1, v3, v2

    return-object v3
.end method

.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    .line 774
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mIsInterrupted:Z

    .line 776
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public onMessageReceived(II[B)V
    .locals 1

    .line 793
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setStatus(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    .line 795
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    if-eqz p2, :cond_0

    .line 796
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setID(Ljava/util/UUID;)Lcom/texa/carelib/communication/Message$Builder;

    .line 799
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    .line 802
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponseLock:Ljava/lang/Object;

    monitor-enter p2

    .line 803
    :try_start_0
    iget-object p3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p3

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponse:Lcom/texa/carelib/communication/Message;

    if-nez p3, :cond_1

    .line 805
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponse:Lcom/texa/carelib/communication/Message;

    .line 807
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 8

    const/4 v0, 0x0

    .line 629
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mIsInterrupted:Z

    const/16 v1, 0xa

    .line 631
    invoke-virtual {p0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setPriority(I)V

    .line 632
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mIsInterrupted:Z

    if-nez v1, :cond_f

    .line 633
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$2;->$SwitchMap$com$texa$carelib$profile$internal$SerialProfile$DataWriterTaskState:[I

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mState:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_9

    const/4 v5, 0x3

    if-eq v1, v5, :cond_6

    const/4 v5, 0x4

    if-eq v1, v5, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 750
    :cond_1
    iget v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mSendRetry:I

    if-ge v1, v4, :cond_2

    .line 752
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    invoke-virtual {p0, v1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V

    goto :goto_1

    .line 755
    :cond_2
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v3, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v3}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    .line 757
    invoke-virtual {v4}, Lcom/texa/carelib/communication/Message;->getID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/communication/Message$Builder;->setID(Ljava/util/UUID;)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    .line 758
    invoke-virtual {v4}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v3

    new-instance v4, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v5, 0x12

    invoke-direct {v4, v2, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v5, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    .line 760
    invoke-virtual {v5}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/texa/carelib/profile/R$string;->error_tbus_command_timeout:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v7}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    .line 755
    invoke-static {v1, v3, v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$500(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    .line 762
    iput v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mSendRetry:I

    .line 765
    :goto_1
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->SendMessage:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-direct {p0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setState(Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;)V

    goto/16 :goto_0

    .line 735
    :cond_3
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponse:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v1

    if-nez v1, :cond_4

    .line 736
    iput v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mSendRetry:I

    .line 737
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponse:Lcom/texa/carelib/communication/Message;

    invoke-static {v1, v2, v4, v3}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$600(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_2

    .line 738
    :cond_4
    iget v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mSendRetry:I

    if-ge v1, v4, :cond_5

    .line 740
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    invoke-virtual {p0, v1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V

    goto :goto_2

    .line 742
    :cond_5
    iput v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mSendRetry:I

    .line 743
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponse:Lcom/texa/carelib/communication/Message;

    invoke-static {v1, v3}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$700(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/core/CareError;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$800(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    .line 746
    :goto_2
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->SendMessage:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-direct {p0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setState(Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;)V

    goto/16 :goto_0

    .line 710
    :cond_6
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_0
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponse:Lcom/texa/carelib/communication/Message;

    if-eqz v2, :cond_7

    .line 712
    sget-object v2, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->ResponseReceived:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-direct {p0, v2}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setState(Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;)V

    .line 713
    monitor-exit v1

    goto/16 :goto_0

    .line 715
    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mWriteTime:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_8

    .line 725
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->Timeout:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-direct {p0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setState(Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;)V

    goto/16 :goto_0

    :cond_8
    const-wide/16 v1, 0x14

    .line 728
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 715
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 646
    :cond_9
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mMessageQueue:Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 647
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->Idle:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-direct {p0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setState(Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;)V

    goto/16 :goto_0

    .line 649
    :cond_a
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mMessageQueue:Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->poll()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 655
    iput-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    .line 656
    iput-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mResponse:Lcom/texa/carelib/communication/Message;

    .line 663
    :try_start_3
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mBluetoothSocketLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/texa/carelib/core/DongleNotConnectedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 664
    :try_start_4
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_d

    .line 668
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v3}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v3

    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v4}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->generateMessage(I[B)[B

    move-result-object v3

    if-eqz v3, :cond_c

    .line 673
    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mOutputStream:Ljava/io/OutputStream;

    invoke-direct {p0, v4, v3}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->write(Ljava/io/OutputStream;[B)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 682
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 684
    :try_start_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mWriteTime:J

    .line 685
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->WaitResponse:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-direct {p0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setState(Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;)V

    .line 686
    iget v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mSendRetry:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mSendRetry:I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/texa/carelib/core/DongleNotConnectedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 674
    :cond_b
    :try_start_6
    new-instance v4, Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException;

    invoke-direct {v4, v3}, Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException;-><init>([B)V

    throw v4

    .line 677
    :cond_c
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "No data to send."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 680
    :cond_d
    new-instance v3, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v3}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v3

    :catchall_1
    move-exception v3

    .line 682
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/texa/carelib/core/DongleNotConnectedException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v1

    .line 702
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->_TAG:Ljava/lang/String;

    const-string v4, "Could not send message. Dongle is not connected."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v3, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v3}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v4}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v3

    new-instance v4, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v5, 0x15

    invoke-direct {v4, v2, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/texa/carelib/profile/R$string;->error_care_not_connected:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$500(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    .line 699
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->_TAG:Ljava/lang/String;

    const-string v4, "Write has failed. Could not send data:[%1$s]"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException;->getData()[B

    move-result-object v6

    invoke-static {v6}, Lcom/texa/carelib/core/logging/internal/LogUtils;->dataToString([B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v1, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v3, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v3}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v4}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v3

    new-instance v4, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v5, 0x1a

    invoke-direct {v4, v2, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/texa/carelib/profile/R$string;->error_care_not_connected:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$500(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    .line 696
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->_TAG:Ljava/lang/String;

    const-string v4, "No data to send."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v3, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v3}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mRequest:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v4}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v3

    new-instance v4, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v5, 0x1b

    invoke-direct {v4, v2, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/texa/carelib/profile/R$string;->error_care_not_connected:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$500(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_0

    .line 635
    :cond_e
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mWaitMessage:Ljava/lang/Object;

    monitor-enter v1

    .line 637
    :try_start_8
    iput v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mSendRetry:I

    .line 638
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mWaitMessage:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 639
    sget-object v2, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->SendMessage:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-direct {p0, v2}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setState(Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 642
    :catch_4
    :goto_3
    :try_start_9
    monitor-exit v1

    goto/16 :goto_0

    :goto_4
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :cond_f
    return-void
.end method

.method public sendMessage(Lcom/texa/carelib/communication/Message;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 813
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mMessageQueue:Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->addTail(Lcom/texa/carelib/communication/Message;)Z

    move-result p1

    goto :goto_0

    .line 815
    :cond_0
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mMessageQueue:Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;->addHead(Lcom/texa/carelib/communication/Message;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 823
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mWaitMessage:Ljava/lang/Object;

    monitor-enter p1

    .line 824
    :try_start_0
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mWaitMessage:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 825
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method setOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mBluetoothSocketLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->mOutputStream:Ljava/io/OutputStream;

    .line 789
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
