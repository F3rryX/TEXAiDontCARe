.class public Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;
.super Ljava/lang/Object;
.source "BluetoothAdapterStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$BluetoothAdapterStateListener;
    }
.end annotation


# static fields
.field private static final BT_STATE_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterStateMonitor"


# instance fields
.field private mBluetoothAdapterStateListener:Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$BluetoothAdapterStateListener;

.field private mBluetoothStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->BT_STATE_NAMES:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "STATE_CONNECTED"

    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x1

    const-string v4, "STATE_CONNECTING"

    .line 118
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x0

    const-string v4, "STATE_DISCONNECTED"

    .line 119
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v3, 0x3

    const-string v4, "STATE_DISCONNECTING"

    .line 120
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xc

    const-string v4, "STATE_ON"

    .line 121
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xa

    const-string v4, "STATE_OFF"

    .line 122
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xd

    const-string v4, "STATE_TURNING_OFF"

    .line 123
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xb

    const-string v4, "STATE_TURNING_ON"

    .line 124
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mState:I

    .line 29
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->registerBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mBluetoothStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$1;-><init>(Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;)V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mBluetoothStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mBluetoothStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not register broadcast receiver."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mBluetoothStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot unregister the broadcast receiver."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->unregisterBroadcastReceiver()V

    return-void
.end method

.method protected fireStateChanged(I)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mBluetoothAdapterStateListener:Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$BluetoothAdapterStateListener;

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v1, p1}, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$BluetoothAdapterStateListener;->onBluetoothAdapterStateChanged(I)V

    .line 63
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getState()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mState:I

    return v0
.end method

.method protected onBluetoothStateChanged(I)V
    .locals 4

    .line 52
    iput p1, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mState:I

    .line 53
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->BT_STATE_NAMES:Landroid/util/SparseArray;

    const-string v3, "N.A."

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Current bluetooth state has changed. New state is: %s"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget p1, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mState:I

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->fireStateChanged(I)V

    return-void
.end method

.method public setBluetoothAdapterStateListener(Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$BluetoothAdapterStateListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mContext:Landroid/content/Context;

    monitor-enter v0

    .line 46
    :try_start_0
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->mBluetoothAdapterStateListener:Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$BluetoothAdapterStateListener;

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
