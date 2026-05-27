.class final Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;
.super Landroid/os/AsyncTask;
.source "BluetoothCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final SLEEP_CONNECTION_ERROR_TIME_INCREMENT:J = 0x3e8L


# instance fields
.field private final _TAG:Ljava/lang/String;

.field private final mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

.field private mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field private final mBluetoothSocketConnector:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

.field private mConnectionInterval:J

.field private final mDeviceAddress:Ljava/lang/String;

.field private final mIsConnectionEndLess:Z

.field private final mIsFallbackModeEnabled:Z

.field private final mIsSecureModeSupported:Z

.field private final mMaxConnectionInterval:J


# direct methods
.method private constructor <init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Ljava/lang/String;JZZZ)V
    .locals 2

    .line 735
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    .line 736
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    .line 737
    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mDeviceAddress:Ljava/lang/String;

    .line 738
    iput-wide p3, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mMaxConnectionInterval:J

    .line 739
    iput-boolean p5, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mIsConnectionEndLess:Z

    .line 740
    iput-boolean p6, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mIsSecureModeSupported:Z

    .line 741
    iput-boolean p7, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mIsFallbackModeEnabled:Z

    .line 742
    new-instance p1, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

    invoke-direct {p1}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothSocketConnector:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Ljava/lang/String;JZZZLcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;)V
    .locals 0

    .line 734
    invoke-direct/range {p0 .. p7}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;-><init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Ljava/lang/String;JZZZ)V

    return-void
.end method

.method private internalWaitConnection(J)V
    .locals 2

    .line 838
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 840
    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not wait."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    .line 747
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 767
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "ConnectAsyncTask doInBackground()"

    .line 747
    invoke-static {p1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$600(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    move-result-object p1

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getCommunicationDelegate()Lcom/texa/carelib/communication/CommunicationDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/communication/CommunicationDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->stopScan(Landroid/content/Context;)Z

    const-wide/16 v2, 0x1388

    .line 755
    iput-wide v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mConnectionInterval:J

    .line 757
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Begin Connect loop."

    invoke-static {p1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Interrupt device discovery if needed.."

    invoke-static {p1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    invoke-static {}, Lcom/texa/carelib/communication/internal/serial/BluetoothAdapterFactory;->create()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 766
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Bluetooth Adapter is null!!!"

    invoke-static {p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 770
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 771
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 774
    :cond_2
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/texa/carelib/communication/internal/BluetoothAdapterSupport;->getStateName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "Bluetooth Adapter state: %d(%s)"

    invoke-static {v2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_3

    .line 778
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Connect aborted due bluetooth device NULL!!!"

    invoke-static {p1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 782
    :cond_3
    sget-object v3, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->SPP_UUID:Ljava/util/UUID;

    if-nez v3, :cond_4

    .line 783
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Connect aborted due BT service UUID NULL!!!"

    invoke-static {p1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 787
    :cond_4
    iget-object v3, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothSocketConnector:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

    sget-object v4, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->SPP_UUID:Ljava/util/UUID;

    iget-boolean v6, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mIsSecureModeSupported:Z

    iget-boolean v7, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mIsFallbackModeEnabled:Z

    invoke-virtual {v3, v2, v4, v6, v7}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 788
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 792
    :cond_5
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 793
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Socket connected established."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 794
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 795
    :cond_6
    iget-boolean v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mIsConnectionEndLess:Z

    if-eqz v2, :cond_7

    .line 796
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mConnectionInterval:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "Waiting %d(ms) before trying to connect again."

    invoke-static {v2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    iget-wide v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mConnectionInterval:J

    invoke-direct {p0, v2, v3}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->internalWaitConnection(J)V

    .line 798
    iget-wide v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mConnectionInterval:J

    iget-wide v4, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mMaxConnectionInterval:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_7

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 799
    iput-wide v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mConnectionInterval:J

    .line 802
    :cond_7
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mIsConnectionEndLess:Z

    if-nez v2, :cond_0

    .line 804
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Connect loop Ended."

    invoke-static {p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 734
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 810
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 811
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    const-string v1, "ConnectAsyncTask#onCancelled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothSocketConnector:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->abortConnection()V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 1

    .line 818
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 819
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    const-string v0, "ConnectAsyncTask#onCancelled(Boolean connected)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothSocketConnector:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->abortConnection()V

    .line 821
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$700(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 734
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 826
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->_TAG:Ljava/lang/String;

    const-string v1, "ConnectAsyncTask#onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 830
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->onSocketConnected(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0

    .line 831
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 832
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$800(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 734
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
