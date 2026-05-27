.class final Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;
.super Ljava/lang/Thread;
.source "SerialProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataReaderTask"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field final _TAG:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mInterrupt:Z

.field final synthetic this$0:Lcom/texa/carelib/profile/internal/SerialProfile;


# direct methods
.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;Ljava/io/InputStream;)V
    .locals 1

    .line 940
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    const-string p1, "DataReaderTask"

    .line 941
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->_TAG:Ljava/lang/String;

    .line 942
    iput-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->mInputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    .line 947
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->mInterrupt:Z

    return-void
.end method

.method public synthetic lambda$run$0$com-texa-carelib-profile-internal-SerialProfile$DataReaderTask(II[BI[B)V
    .locals 1

    .line 959
    new-array p5, p4, [B

    const/4 v0, 0x0

    .line 960
    invoke-static {p3, v0, p5, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p3, 0xff

    if-ne p3, p2, :cond_0

    .line 973
    iget-object p3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance p4, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p4}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    invoke-virtual {p4, p1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setStatus(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$900(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 975
    :cond_0
    iget-object p3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$400(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p5}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->onMessageReceived(II[B)V

    const/16 p3, 0x81

    if-ne p3, p1, :cond_1

    if-nez p2, :cond_1

    .line 978
    new-instance p4, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p4}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    invoke-virtual {p4, p1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setStatus(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    .line 979
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance p4, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p4}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    invoke-virtual {p4, p3}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p2, p3, p1, p4}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$600(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 952
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DataReaderTask#doInBackground()"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 953
    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->setPriority(I)V

    .line 955
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->clear(Z)V

    .line 957
    new-instance v0, Lcom/texa/carelib/communication/internal/PacketComposer;

    invoke-direct {v0}, Lcom/texa/carelib/communication/internal/PacketComposer;-><init>()V

    .line 958
    new-instance v3, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;)V

    invoke-virtual {v0, v3}, Lcom/texa/carelib/communication/internal/PacketComposer;->setCallback(Lcom/texa/carelib/communication/internal/PacketComposer$Callback;)V

    .line 986
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->_TAG:Ljava/lang/String;

    const-string v4, "doInBackground: Socket created, streams assigned"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->_TAG:Ljava/lang/String;

    const-string v4, "doInBackground: Waiting for initial data..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x800

    new-array v3, v3, [B

    .line 992
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1001
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1010
    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 1017
    invoke-virtual {v0, v3, v4}, Lcom/texa/carelib/communication/internal/PacketComposer;->dataReady([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1026
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->_TAG:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Read throws exception."

    invoke-static {v3, v0, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->_TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "DataReaderTask#onPostExecute()"

    invoke-static {v0, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1032
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->clear(Z)V

    const/4 v0, 0x0

    .line 1033
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->mInputStream:Ljava/io/InputStream;

    return-void
.end method
