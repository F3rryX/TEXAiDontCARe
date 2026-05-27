.class Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;
.super Ljava/lang/Object;
.source "IncomingBluetoothConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$ConnectionAcceptedListener;,
        Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$BluetoothConnectionAcceptedEvent;,
        Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$AcceptConnectionRunnable;
    }
.end annotation


# static fields
.field private static final ACCEPT_CONNECTION_DELAY:I = 0x1388

.field public static final DEFAULT_CONNECTION_PRIORITY:I = -0x80000000

.field public static final TAG:Ljava/lang/String; = "IncomingBluetoothConnectionController"

.field private static final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private mAcceptConnectionRunnable:Ljava/lang/Runnable;

.field private mCurrentConnectionPriority:I

.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$ConnectionAcceptedListener;

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 57
    iput v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mCurrentConnectionPriority:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mDevices:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mDevices:Ljava/util/List;

    return-void
.end method

.method private acceptConnection(Landroid/bluetooth/BluetoothSocket;I)V
    .locals 5

    .line 132
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Setting current connection priority to: %d"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iput p2, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mCurrentConnectionPriority:I

    new-array p2, v4, [Ljava/lang/Object;

    const-string v2, "Removing older connection handler with lower priority."

    .line 135
    invoke-static {v0, v2, p2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p2, :cond_0

    .line 139
    invoke-interface {p2, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    new-array p2, v4, [Ljava/lang/Object;

    const-string v1, "Waiting for connection callback..."

    .line 142
    invoke-static {v0, v1, p2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance p2, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$AcceptConnectionRunnable;

    invoke-direct {p2, p0, p1}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$AcceptConnectionRunnable;-><init>(Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;Landroid/bluetooth/BluetoothSocket;)V

    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mAcceptConnectionRunnable:Ljava/lang/Runnable;

    .line 146
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->fireConnectionAccepted(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method private fireConnectionAccepted(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mListener:Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$ConnectionAcceptedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Firing connection accepted...."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mListener:Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$ConnectionAcceptedListener;

    new-instance v1, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$BluetoothConnectionAcceptedEvent;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$BluetoothConnectionAcceptedEvent;-><init>(Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;Landroid/bluetooth/BluetoothSocket;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$ConnectionAcceptedListener;->onConnectionAccepted(Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$BluetoothConnectionAcceptedEvent;)V

    goto :goto_0

    .line 212
    :cond_0
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Connection accepted but the listener is NULL!!!"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private getConnectionPriority(Lcom/texa/carelib/communication/DeviceInfo;)I
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->indexOf(Lcom/texa/carelib/communication/DeviceInfo;)I

    move-result p1

    return p1
.end method

.method private getRemoteDeviceInfo(Landroid/bluetooth/BluetoothSocket;)Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 83
    :cond_0
    new-instance v0, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method private indexOf(Lcom/texa/carelib/communication/DeviceInfo;)I
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 185
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/communication/DeviceInfo;

    .line 191
    invoke-virtual {v3}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_1
    return v1
.end method

.method private isFirstIncomingConnection()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mAcceptConnectionRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancelPendingConnection()V
    .locals 3

    .line 153
    sget-object v0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cancel pending connection..."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 158
    iput-object v1, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 161
    :cond_0
    iput-object v1, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mAcceptConnectionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public handleConnection(Landroid/bluetooth/BluetoothSocket;)V
    .locals 7

    .line 103
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->getRemoteDeviceInfo(Landroid/bluetooth/BluetoothSocket;)Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Remote device is null! Cannot evaluate device priority. Aborting connection request."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_0
    sget-object v2, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v5, "Received connection from device: %s"

    invoke-static {v2, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->getConnectionPriority(Lcom/texa/carelib/communication/DeviceInfo;)I

    move-result v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 115
    iget v6, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mCurrentConnectionPriority:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Current connection priority: %d, Device %s connection priority: %d"

    invoke-static {v2, v0, v5}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->isFirstIncomingConnection()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mCurrentConnectionPriority:I

    if-le v4, v0, :cond_2

    .line 121
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->acceptConnection(Landroid/bluetooth/BluetoothSocket;I)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->cancelPendingConnection()V

    const/high16 v0, -0x80000000

    .line 220
    iput v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mCurrentConnectionPriority:I

    return-void
.end method

.method public setConnectionAcceptedListener(Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$ConnectionAcceptedListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->mListener:Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$ConnectionAcceptedListener;

    return-void
.end method
