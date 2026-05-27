.class Lcom/texa/carelib/profile/internal/SerialProfile$1;
.super Ljava/lang/Object;
.source "SerialProfile.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/texa/carelib/profile/internal/SerialProfile;


# direct methods
.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDongleConnected$0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 510
    sget-object p0, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Uncaught Exception in DataReaderTask."

    invoke-static {p0, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onCommunicationStatusChanged(Ljava/beans/PropertyChangeEvent;)V
    .locals 6

    .line 480
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/CommunicationStatus;

    .line 481
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/communication/CommunicationStatus;

    .line 482
    sget-object v2, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-string v1, "Communication status has changed:[new:%s,old:%s]"

    invoke-static {v2, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$000(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/communication/Communication;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getRemote()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$000(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/communication/Communication;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getRemote()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    .line 487
    invoke-direct {p0, v0}, Lcom/texa/carelib/profile/internal/SerialProfile$1;->onDongleConnected(Landroid/bluetooth/BluetoothSocket;)V

    .line 488
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$101(Lcom/texa/carelib/profile/internal/SerialProfile;Ljava/beans/PropertyChangeEvent;)V

    .line 490
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->loadAllInfo()V

    goto :goto_0

    .line 492
    :cond_0
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Connected ignored. Bluetooth socket not available. Possible connection lost?"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialProfile$1;->onDongleNotConnected()V

    .line 496
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$201(Lcom/texa/carelib/profile/internal/SerialProfile;Ljava/beans/PropertyChangeEvent;)V

    :goto_0
    return-void
.end method

.method private onDongleConnected(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->setReady(Z)V

    .line 505
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->mInputStream:Ljava/io/InputStream;

    .line 506
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->mOutputStream:Ljava/io/OutputStream;

    .line 508
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->mInputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;Ljava/io/InputStream;)V

    invoke-static {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$302(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;)Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    .line 509
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$300(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    move-result-object p1

    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/carelib/profile/internal/SerialProfile$1$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 512
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$300(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const-wide/16 v0, 0xa

    .line 516
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 519
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$300(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$400(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setOutputStream(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method private onDongleNotConnected()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$1;->this$0:Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->access$400(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->setOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 474
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile$1;->onCommunicationStatusChanged(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method
