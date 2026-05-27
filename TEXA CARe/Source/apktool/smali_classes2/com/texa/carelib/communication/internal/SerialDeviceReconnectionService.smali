.class public Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;
.super Ljava/lang/Object;
.source "SerialDeviceReconnectionService.java"

# interfaces
.implements Lcom/texa/carelib/communication/internal/DeviceReconnectionService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;
    }
.end annotation


# static fields
.field private static final MAX_INTERVAL_SECONDS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "SerialDeviceReconnectionService"


# instance fields
.field private mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

.field private mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

.field private mReconnectThread:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public isReconnecting()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mReconnectThread:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reconnectToDevices(Landroid/content/Context;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->isReconnecting()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "reconnection service is already running"

    invoke-static {p1, v1, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 49
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 50
    new-instance p1, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    new-instance v1, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;

    invoke-direct {v1, p2}, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;-><init>(Ljava/util/List;)V

    iget-object p2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

    invoke-direct {p1, v0, v1, p2}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;-><init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;)V

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mReconnectThread:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;

    .line 51
    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->start()V

    .line 53
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;->onReconnectionStart()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public setCallback(Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mCallback:Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;

    return-void
.end method

.method public stopReconnection(Landroid/content/Context;)Z
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->isReconnecting()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 193
    sget-object p1, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->TAG:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Reconnection service is not alive!!"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mReconnectThread:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 198
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mReconnectThread:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->mReconnectThread:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;->interrupt()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
