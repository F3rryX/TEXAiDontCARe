.class Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;
.super Ljava/lang/Thread;
.source "SerialDeviceReconnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReconnectionThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;
    }
.end annotation


# instance fields
.field private mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

.field private final mBluetoothSocketConnector:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

.field private final mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

.field private mInterval:I

.field private mIsInterrupted:Z

.field private mSlaveReconnectionController:Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;


# direct methods
.method constructor <init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "ReconnectionThread"

    .line 64
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->setName(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    .line 67
    iput-object p2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mSlaveReconnectionController:Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;

    .line 69
    new-instance p1, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

    invoke-direct {p1}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mBluetoothSocketConnector:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

    .line 70
    iput-object p3, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mIsInterrupted:Z

    .line 73
    iput p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mInterval:I

    .line 75
    new-instance p1, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mIsInterrupted:Z

    .line 87
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mBluetoothSocketConnector:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->abortConnection()V

    .line 88
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public synthetic lambda$new$0$com-texa-carelib-communication-internal-SerialDeviceReconnectionService$ReconnectionThread(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 76
    instance-of p1, p2, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;->onReconnectionStop()V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;->onReconnectionFails(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 12

    .line 104
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isSecureSocketEnabled()Z

    move-result v0

    .line 106
    invoke-static {}, Lcom/texa/carelib/communication/internal/serial/BluetoothAdapterFactory;->create()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 117
    sget-object v2, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->PickDevice:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    .line 120
    :cond_1
    invoke-static {}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->access$000()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const-string v10, "ReconnectionState: %1$s"

    invoke-static {v6, v10, v8}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    sget-object v6, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$1;->$SwitchMap$com$texa$carelib$communication$internal$SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState:[I

    invoke-virtual {v2}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->ordinal()I

    move-result v8

    aget v6, v6, v8

    if-eq v6, v7, :cond_8

    const/4 v8, 0x2

    if-eq v6, v8, :cond_6

    const/4 v10, 0x3

    if-eq v6, v10, :cond_4

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    goto/16 :goto_1

    .line 157
    :cond_2
    iget v2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mInterval:I

    const/16 v6, 0x1e

    if-ge v2, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 158
    iput v2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mInterval:I

    .line 161
    :cond_3
    invoke-static {}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mInterval:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "Next connection attempt will start in %d seconds..."

    invoke-static {v2, v7, v6}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :try_start_0
    iget v2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :catch_0
    sget-object v2, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->PickDevice:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    goto/16 :goto_1

    .line 147
    :cond_4
    invoke-static {}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "Reconnecting to %s(%s)."

    invoke-static {v2, v6, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mBluetoothSocketConnector:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;

    sget-object v5, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->SPP_UUID:Ljava/util/UUID;

    iget-object v6, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v6}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isFallBackSocketEnabled()Z

    move-result v6

    invoke-virtual {v2, v4, v5, v0, v6}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 149
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 150
    sget-object v5, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->ConnectionSuccess:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    goto :goto_0

    .line 152
    :cond_5
    sget-object v5, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->ConnectionFailed:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    :goto_0
    move-object v11, v5

    move-object v5, v2

    move-object v2, v11

    goto :goto_1

    .line 138
    :cond_6
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v6, 0xa

    if-eq v6, v2, :cond_7

    const/16 v6, 0xd

    if-eq v6, v2, :cond_7

    .line 142
    sget-object v2, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->Connect:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    goto :goto_1

    .line 140
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2}, Lcom/texa/carelib/communication/internal/BluetoothAdapterSupport;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v7

    const-string v2, "Could not connect if bluetooth adapter state is %d(%s)."

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_8
    iget-object v3, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mSlaveReconnectionController:Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;

    invoke-virtual {v3}, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;->getNextDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_1

    .line 130
    :cond_9
    invoke-virtual {v3}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_1

    .line 134
    :cond_a
    sget-object v2, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->VerifyBluetoothState:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    .line 171
    :goto_1
    sget-object v6, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->ConnectionSuccess:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    if-eq v6, v2, :cond_b

    iget-boolean v6, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mIsInterrupted:Z

    if-eqz v6, :cond_1

    .line 173
    :cond_b
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

    if-eqz v0, :cond_d

    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    .line 174
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

    invoke-virtual {v0, v5}, Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;->onSocketReady(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_2

    .line 177
    :cond_c
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;->onReconnectionStop()V

    :cond_d
    :goto_2
    return-void
.end method
