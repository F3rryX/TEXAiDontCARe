.class public Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;
.super Lcom/texa/carelib/communication/internal/CommunicationBase;
.source "BluetoothCommunication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;,
        Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;,
        Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectionStateMonitorAsyncTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONNECTION_INTERVAL:J = 0x7530L

.field static final DEFAULT_USE_FALLBACK_SOCKET:Z = true

.field static final DEFAULT_USE_SECURE_SOCKET:Z = true

.field private static final SLEEP_CONNECTION_ERROR_TIME:I = 0x1388

.field public static final SPP_UUID:Ljava/util/UUID;

.field static final TAG:Ljava/lang/String;

.field private static final mConnectExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final mBluetoothDeviceFactory:Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;

.field private mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field private mBluetoothStateBroadcastReceiver:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;

.field private mConnectAsyncTask:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;

.field private final mContext:Landroid/content/Context;

.field private mDeviceFilter:Lcom/texa/carelib/communication/DeviceFilter;

.field private mDeviceReconnectionService:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;

.field private mDeviceScanner:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

.field private final mDeviceScannerCallback:Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

.field private final mDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;

.field private volatile mIsConnectionLost:Z

.field private final mKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;

.field private final mSlaveReconnectionController:Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 1023
    invoke-static {v0}, Lcom/texa/carelib/core/utils/UUIDHelper;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->SPP_UUID:Ljava/util/UUID;

    .line 1027
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mConnectExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, "BluetoothCommunication"

    .line 1030
    sput-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/texa/carelib/communication/KnownDeviceHistory;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/CommunicationBase;-><init>()V

    .line 857
    new-instance v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;

    invoke-direct {v0, p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;-><init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceScannerCallback:Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

    .line 71
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;

    .line 74
    new-instance p2, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-direct {p2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;-><init>()V

    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceScanner:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    .line 75
    new-instance p2, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;

    invoke-direct {p2, p0}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;-><init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V

    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceReconnectionService:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;

    .line 76
    new-instance v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;-><init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V

    invoke-virtual {p2, v0}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->setCallback(Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;)V

    .line 104
    new-instance p2, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;

    invoke-direct {p2, p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;-><init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V

    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothDeviceFactory:Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;

    .line 105
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDevices:Ljava/util/Map;

    .line 107
    new-instance p2, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;

    invoke-direct {p2}, Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;-><init>()V

    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mSlaveReconnectionController:Lcom/texa/carelib/communication/internal/serial/SlaveReconnectionController;

    const/4 p2, 0x0

    .line 108
    iput-boolean p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mIsConnectionLost:Z

    .line 110
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->initSocketConnectionMode(I)V

    .line 111
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)Z

    .line 112
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->start()V

    return-void
.end method

.method private _disconnect()Z
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->closeSocket(Landroid/bluetooth/BluetoothSocket;)V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic access$000(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method static synthetic access$100(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->fireDeviceNameChanged(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->fireDeviceFound(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->fireDeviceFound(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->connectionLost(Landroid/bluetooth/BluetoothAdapter;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method static synthetic access$200(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method static synthetic access$600(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Lcom/texa/carelib/communication/internal/SerialDeviceScanner;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceScanner:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    return-object p0
.end method

.method static synthetic access$700(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->start()V

    return-void
.end method

.method static synthetic access$800(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->connectionFailed()V

    return-void
.end method

.method static synthetic access$900(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Ljava/util/Map;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDevices:Ljava/util/Map;

    return-object p0
.end method

.method public static closeSocket(Landroid/bluetooth/BluetoothSocket;)V
    .locals 4

    .line 503
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Closing socket."

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 504
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothSocket;->close()V

    const-string p0, "Socket closed."

    new-array v2, v1, [Ljava/lang/Object;

    .line 507
    invoke-static {v0, p0, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 509
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Close socket IOException."

    invoke-static {v0, p0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private connectionFailed()V
    .locals 1

    .line 370
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTION_FAILED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;

    .line 373
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->start()V

    return-void
.end method

.method private connectionLost(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 7

    .line 568
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "connectionLost detected!"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 570
    iput-boolean v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mIsConnectionLost:Z

    const/4 v3, 0x0

    .line 571
    iput-object v3, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 574
    sget-object v4, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTION_LOST:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v4}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 576
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->resetConnectThread()V

    .line 578
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isBluetoothSupported(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 579
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void

    .line 583
    :cond_0
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 584
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->NO_MEDIUM_ACTIVE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isAutoReconnectOnCommunicationLostEnabled()Z

    move-result v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 590
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "Is auto-reconnect on connection lost enabled? %b"

    invoke-static {v0, v1, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 594
    invoke-virtual {p0, v3}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;

    .line 596
    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->internalConnect(Landroid/bluetooth/BluetoothAdapter;Lcom/texa/carelib/communication/DeviceInfo;Z)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    :catch_0
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    goto :goto_0

    .line 601
    :cond_2
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    :goto_0
    return-void
.end method

.method private getKnownDeviceHistory()Lcom/texa/carelib/communication/KnownDeviceHistory;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mExtKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;

    :cond_0
    return-object v0
.end method

.method private getMaxConnectionInterval()J
    .locals 5

    .line 556
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Communication#EXTRA_MAX_CONNECTION_INTERVAL"

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method private isEndLessConnection()Z
    .locals 2

    .line 611
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Communication#EXTRA_ENDLESS_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isScanning()Z
    .locals 2

    .line 213
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)Z
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothStateBroadcastReceiver:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 624
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 627
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 628
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 629
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 631
    new-instance v2, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;-><init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V

    iput-object v2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothStateBroadcastReceiver:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;

    .line 632
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return v1
.end method

.method private resetConnectThread()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mConnectAsyncTask:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;

    if-eqz v0, :cond_0

    .line 649
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mConnectAsyncTask:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mConnectAsyncTask:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private resetThreads()V
    .locals 0

    .line 640
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->resetConnectThread()V

    return-void
.end method

.method private start()V
    .locals 5

    .line 659
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start()"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->closeSocket(Landroid/bluetooth/BluetoothSocket;)V

    const/4 v0, 0x0

    .line 662
    iput-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 664
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isScanning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->stopScan()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 668
    sget-object v3, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Could not stop scan..."

    invoke-static {v3, v2, v4, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :cond_0
    :goto_0
    invoke-static {}, Lcom/texa/carelib/communication/internal/serial/BluetoothAdapterFactory;->create()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 673
    invoke-virtual {p0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isBluetoothSupported(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 674
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void

    .line 678
    :cond_1
    invoke-virtual {p0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 679
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->NO_MEDIUM_ACTIVE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void

    .line 683
    :cond_2
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 684
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;

    .line 686
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->resetConnectThread()V

    return-void
.end method

.method private unregisterBluetoothStateBroadcastReceiver(Landroid/content/Context;)Z
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothStateBroadcastReceiver:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 696
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 697
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothStateBroadcastReceiver:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 701
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Generic error."

    invoke-static {v0, p1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 699
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Argument is not valid."

    invoke-static {v0, p1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1
.end method


# virtual methods
.method public connect(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 278
    invoke-static {}, Lcom/texa/carelib/communication/internal/serial/BluetoothAdapterFactory;->create()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isEndLessConnection()Z

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->internalConnect(Landroid/bluetooth/BluetoothAdapter;Lcom/texa/carelib/communication/DeviceInfo;Z)V

    return-void
.end method

.method public disconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "disconnect bt comm"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->stopReconnect()V

    goto :goto_0

    .line 408
    :cond_0
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 409
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->DISCONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 410
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->_disconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->resetThreads()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 458
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 459
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->shutdown()V

    return-void
.end method

.method public forgetKnownDevices()V
    .locals 1

    .line 471
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getKnownDeviceHistory()Lcom/texa/carelib/communication/KnownDeviceHistory;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/communication/KnownDeviceHistory;->clear()V

    return-void
.end method

.method public getDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getDevices()"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getKnownDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getKnownDeviceHistory()Lcom/texa/carelib/communication/KnownDeviceHistory;

    move-result-object v1

    invoke-interface {v1}, Lcom/texa/carelib/communication/KnownDeviceHistory;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRemote()Ljava/lang/Object;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method initSocketConnectionMode(I)V
    .locals 2

    const/16 v0, 0xf

    const-string v1, "Communication#EXTRA_USE_SECURE_SOCKET"

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method internalConnect(Landroid/bluetooth/BluetoothAdapter;Lcom/texa/carelib/communication/DeviceInfo;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isBluetoothSupported(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 288
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 293
    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isConnected()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 301
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    const-string v1, "Operation is already in progress!"

    if-eq p1, v0, :cond_2

    .line 305
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mConnectAsyncTask:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;

    if-eqz p1, :cond_1

    sget-object p1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mConnectAsyncTask:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    invoke-direct {p1, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :cond_1
    :goto_0
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Trying to connect to: %s(%s)"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p0, p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;

    .line 311
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 312
    new-instance p1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getMaxConnectionInterval()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isSecureSocketEnabled()Z

    move-result v9

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isFallBackSocketEnabled()Z

    move-result v10

    const/4 v11, 0x0

    move-object v3, p1

    move-object v4, p0

    move v8, p3

    invoke-direct/range {v3 .. v11}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;-><init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Ljava/lang/String;JZZZLcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;)V

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mConnectAsyncTask:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;

    .line 313
    sget-object p2, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mConnectExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-array p3, v2, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 302
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    invoke-direct {p1, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 298
    :cond_3
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not connect. Another dongle is already connected!"

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 294
    :cond_4
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not connect. Device address cannot be null or empty."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_5
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->NO_MEDIUM_ACTIVE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 290
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not connect. Bluetooth is turned off."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_6
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 285
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string p2, "Could not connect. Smartphone does not support bluetooth technology."

    invoke-direct {p1, p2}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isBluetoothSupported(Landroid/bluetooth/BluetoothAdapter;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isConnected()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isConnected(Landroid/bluetooth/BluetoothSocket;)Z

    move-result v0

    return v0
.end method

.method protected isConnected(Landroid/bluetooth/BluetoothSocket;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFallBackSocketEnabled()Z
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Communication#EXTRA_USE_FALLBACK_SOCKET"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSecureSocketEnabled()Z
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Communication#EXTRA_USE_SECURE_SOCKET"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method onSocketConnected(Landroid/bluetooth/BluetoothSocket;)V
    .locals 4

    .line 335
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onSocketConnected"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 340
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CARE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    new-instance v2, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {}, Lcom/texa/carelib/communication/internal/serial/BluetoothAdapterFactory;->create()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 347
    new-instance v2, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-direct {v2, p1}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 353
    invoke-virtual {p0, v2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;

    .line 354
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getKnownDeviceHistory()Lcom/texa/carelib/communication/KnownDeviceHistory;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/texa/carelib/communication/KnownDeviceHistory;->add(Lcom/texa/carelib/communication/DeviceInfo;)V

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "Device added to device history collection."

    .line 357
    invoke-static {v0, v2, p1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "Connected!"

    .line 361
    invoke-static {v0, v1, p1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getKnownDeviceHistory()Lcom/texa/carelib/communication/KnownDeviceHistory;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/communication/KnownDeviceHistory;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->reconnectToDevices(Ljava/util/List;)V

    return-void
.end method

.method public reconnectToDevices(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Could not reconnect at this moment. Wrong state: %1$s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 232
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 236
    invoke-static {}, Lcom/texa/carelib/communication/internal/serial/BluetoothAdapterFactory;->create()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 237
    invoke-virtual {p0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isBluetoothSupported(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 243
    invoke-virtual {p0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isBluetoothEnabled(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceScanner:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getCommunicationDelegate()Lcom/texa/carelib/communication/CommunicationDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->stopScan(Landroid/content/Context;)Z

    .line 253
    :cond_2
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "reconnect procedure to provided devices begins..."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceReconnectionService:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->reconnectToDevices(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 255
    :cond_3
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Could not reconnect at this moment."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_4
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Could not reconnect at this moment. Bluetooth is not active."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->NO_MEDIUM_ACTIVE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 246
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Bluetooth radio state is off."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_5
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Could not reconnect at this moment. Bluetooth is not supported."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 240
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Bluetooth technology is not supported by the device."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_6
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Cannot start reconnection procedure with an empty device list."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_7
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Could not reconnect at this moment. Connection is already established."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeBond(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/texa/carelib/communication/internal/serial/BluetoothAdapterFactory;->create()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    sget-object v1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Trying to remove the bond for the device: %1$s..."

    invoke-static {v1, p1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "removeBond"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 149
    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance p1, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-direct {p1, v0}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->fireDeviceBondStateChanged(Lcom/texa/carelib/communication/DeviceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Cannot remove device bond."

    invoke-direct {v0, v1, p1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "BluetoothAdapter is null."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDeviceFilter(Lcom/texa/carelib/communication/DeviceFilter;)V
    .locals 1

    .line 159
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceFilter:Lcom/texa/carelib/communication/DeviceFilter;

    .line 160
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceScanner:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->setFilter(Lcom/texa/carelib/communication/DeviceFilter;)V

    return-void
.end method

.method public setKnownDeviceHistory(Lcom/texa/carelib/communication/KnownDeviceHistory;)V
    .locals 2

    .line 496
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 499
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mExtKnownDeviceHistory:Lcom/texa/carelib/communication/KnownDeviceHistory;

    return-void

    .line 497
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change the known device history."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->unregisterBluetoothStateBroadcastReceiver(Landroid/content/Context;)Z

    .line 465
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->stopReconnect()V

    .line 466
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->disconnect()V

    return-void
.end method

.method public startScan()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startScan()"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getCommunicationDelegate()Lcom/texa/carelib/communication/CommunicationDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/CommunicationDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcom/texa/carelib/android/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 427
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceScanner:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceScannerCallback:Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->setCallback(Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V

    .line 428
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceScanner:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getCommunicationDelegate()Lcom/texa/carelib/communication/CommunicationDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->startScan(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 429
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Could not start scan at this moment."

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied (missing android.permission.ACCESS_COARSE_LOCATION permission?)"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 479
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->stopScan()V

    goto :goto_0

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->_disconnect()Z

    :goto_0
    return-void
.end method

.method public stopReconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "stopReconnect()"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceReconnectionService:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService;->stopReconnection(Landroid/content/Context;)Z

    return-void
.end method

.method public stopScan()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 435
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "stopScan()"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->mDeviceScanner:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getCommunicationDelegate()Lcom/texa/carelib/communication/CommunicationDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/CommunicationDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->stopScan(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Could not stop scan at this moment."

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
