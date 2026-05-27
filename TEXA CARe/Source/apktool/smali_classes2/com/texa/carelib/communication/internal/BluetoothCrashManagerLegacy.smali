.class Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;
.super Ljava/lang/Object;
.source "BluetoothCrashManagerLegacy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;,
        Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;
    }
.end annotation


# static fields
.field private static final CRASH_RISK_DEVICE_COUNT:I = 0x636

.field private static final MIN_TIME_BETWEEN_STATE_SAVES_MILLIS:J = 0xea60L

.field private static final PREEMPTIVE_ACTION_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothCrashManagerLegacy"


# instance fields
.field private final CFG_FILE_NAME:Ljava/lang/String;

.field private final mBluetoothCrashManagerProxy:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDiscoveryStartConfirmed:Z

.field private mIsRecoveryInProgress:Z

.field private mLastBluetoothOffTime:J

.field private mLastBluetoothTurningOnTime:J

.field private mLastStateSaveTime:J

.field private mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;-><init>(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mIsRecoveryInProgress:Z

    .line 366
    iput-boolean v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mDiscoveryStartConfirmed:Z

    const-wide/16 v0, 0x0

    .line 367
    iput-wide v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mLastBluetoothOffTime:J

    .line 368
    iput-wide v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mLastBluetoothTurningOnTime:J

    .line 369
    iput-wide v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mLastStateSaveTime:J

    const-string v0, "bt_crash_manager.cfg"

    .line 372
    iput-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->CFG_FILE_NAME:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mBluetoothCrashManagerProxy:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;

    .line 43
    invoke-interface {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->loadState(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->onCrashDetected()V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mIsRecoveryInProgress:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->finishRecovery()V

    return-void
.end method

.method static synthetic access$702(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mDiscoveryStartConfirmed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mLastBluetoothOffTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;J)J
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mLastBluetoothOffTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mLastBluetoothTurningOnTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;J)J
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mLastBluetoothTurningOnTime:J

    return-wide p1
.end method

.method private cancelDiscovery()V
    .locals 5

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    .line 98
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 99
    iget-boolean v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mDiscoveryStartConfirmed:Z

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const-string v1, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    sget-object v1, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const-string v3, "Cancelling discovery."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const-string v1, "Discovery not running.  Won\'t cancel it"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "DiscoveryCanceller sleep interrupted."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private finishRecovery()V
    .locals 4

    .line 117
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const-string v1, "Recovery attempt finished."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iput-boolean v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mIsRecoveryInProgress:Z

    return-void

    :catchall_0
    move-exception v1

    .line 120
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private loadState(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "bt_crash_manager.cfg"

    .line 133
    invoke-virtual {p1, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/FileUtils;->readAll(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 137
    :try_start_2
    sget-object v1, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const-string v2, "Could not restore state from persisted data."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance p1, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-direct {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_1
    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    .line 142
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 144
    :catch_2
    :cond_1
    throw p1
.end method

.method private onCrashDetected()V
    .locals 7

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 151
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring crashes before API 18, because BLE is unsupported."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BluetoothService crash detected"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v2}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v3}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Distinct Bluetooth devices seen at crash: %d"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$102(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;J)J

    .line 162
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v2}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$200(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$202(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;J)J

    .line 164
    iget-boolean v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mIsRecoveryInProgress:Z

    if-eqz v2, :cond_2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring Bluetooth crash because recovery is already in progress."

    .line 165
    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->startRecovery()V

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mBluetoothCrashManagerProxy:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;

    invoke-interface {v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->persistStateIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method private persistState(Landroid/content/Context;Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)V
    .locals 3

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mLastStateSaveTime:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "bt_crash_manager.cfg"

    .line 184
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 185
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-static {p2}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->toJson(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 189
    :goto_0
    :try_start_3
    sget-object p2, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const-string v2, "Persist state has failed."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 193
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 195
    :catch_3
    :cond_1
    throw p1
.end method

.method private persistStateIfNeeded(Landroid/content/Context;)V
    .locals 5

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mLastStateSaveTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 202
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->persistState(Landroid/content/Context;Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)V

    :cond_0
    return-void
.end method

.method private startRecovery()V
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$300(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$302(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;I)I

    .line 209
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "about to check if discovery is active"

    invoke-static {v1, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v4

    if-nez v4, :cond_1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Recovery attempt started"

    .line 212
    invoke-static {v1, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iput-boolean v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mIsRecoveryInProgress:Z

    .line 214
    iput-boolean v3, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mDiscoveryStartConfirmed:Z

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "about to command discovery"

    .line 215
    invoke-static {v1, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v4

    if-nez v4, :cond_0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Can\'t start discovery.  Is Bluetooth turned on?"

    .line 217
    invoke-static {v1, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-array v4, v2, [Ljava/lang/Object;

    .line 219
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "startDiscovery commanded.  isDiscovering()=%s"

    invoke-static {v1, v0, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v2, [Ljava/lang/Object;

    const/16 v2, 0x1388

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "We will be cancelling this discovery in %d milliseconds."

    invoke-static {v1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->cancelDiscovery()V

    goto :goto_0

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "Already discovering.  Recovery attempt abandoned."

    .line 224
    invoke-static {v1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method deviceFound(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v2}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    .line 59
    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const-string v0, "Distinct Bluetooth devices seen: %d"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v4}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/16 v0, 0x636

    if-le p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mIsRecoveryInProgress:Z

    if-nez p1, :cond_1

    .line 64
    sget-object p1, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const-string v0, "Large number of Bluetooth devices detected: %d Proactively attempting to clear out address list to prevent a crash."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-static {v3}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;->access$000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Stopping LE Scan"

    new-array v1, v2, [Ljava/lang/Object;

    .line 65
    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 68
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->startRecovery()V

    .line 69
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mBluetoothCrashManagerProxy:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;

    invoke-interface {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->persistStateIfNeeded(Landroid/content/Context;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 56
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 3

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mBluetoothCrashManagerProxy:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;

    invoke-interface {v1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start listening on Bluetooth events..."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mBluetoothCrashManagerProxy:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;

    invoke-interface {v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Stop listening on Bluetooth events."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mBluetoothCrashManagerProxy:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;

    invoke-interface {v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->mState:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;

    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->persistState(Landroid/content/Context;Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$BluetoothCrashManagerState;)V

    return-void
.end method
