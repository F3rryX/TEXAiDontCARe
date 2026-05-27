.class public Lcom/texa/carelib/communication/internal/SerialDeviceScanner;
.super Ljava/lang/Object;
.source "SerialDeviceScanner.java"

# interfaces
.implements Lcom/texa/carelib/communication/internal/DeviceScanner;


# static fields
.field private static final FILTERS:[Lcom/texa/carelib/communication/internal/BluetoothDeviceFilter;

.field private static final TAG:Ljava/lang/String; = "SerialDeviceScanner"


# instance fields
.field private mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

.field private mDeviceFilter:Lcom/texa/carelib/communication/DeviceFilter;

.field private mDeviceScannerState:Lcom/texa/carelib/communication/internal/DeviceScannerState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/texa/carelib/communication/internal/BluetoothDeviceFilter;

    .line 277
    new-instance v1, Lcom/texa/carelib/communication/internal/DeviceTypeFilter;

    invoke-direct {v1}, Lcom/texa/carelib/communication/internal/DeviceTypeFilter;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->FILTERS:[Lcom/texa/carelib/communication/internal/BluetoothDeviceFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;)Lcom/texa/carelib/communication/internal/DeviceScannerState;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mDeviceScannerState:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;Lcom/texa/carelib/communication/internal/DeviceScannerState;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->isScanning(Lcom/texa/carelib/communication/internal/DeviceScannerState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->startScanInternal(Landroid/bluetooth/BluetoothAdapter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->unregisterBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;)Lcom/texa/carelib/communication/internal/DeviceScannerCallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mCallback:Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

    return-object p0
.end method

.method private isScanning(Lcom/texa/carelib/communication/internal/DeviceScannerState;)Z
    .locals 1

    .line 264
    sget-object v0, Lcom/texa/carelib/communication/internal/DeviceScannerState;->Scanning:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;

    invoke-direct {v0, p0, p2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;-><init>(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    :cond_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 224
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 227
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 230
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    .line 233
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    const-string v0, "android.bluetooth.device.action.UUID"

    .line 237
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    sget-object p2, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not register broadcast receiver."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private startScanInternal(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    sget-object p1, Lcom/texa/carelib/communication/internal/DeviceScannerState;->Scanning:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mDeviceScannerState:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver(Landroid/content/Context;)V
    .locals 2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mBluetoothBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    sget-object p1, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot unregister the broadcast receiver."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getScanState()Lcom/texa/carelib/communication/internal/DeviceScannerState;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mDeviceScannerState:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    return-object v0
.end method

.method protected isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 114
    :cond_0
    sget-object v1, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->FILTERS:[Lcom/texa/carelib/communication/internal/BluetoothDeviceFilter;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 115
    invoke-interface {v4, p1}, Lcom/texa/carelib/communication/internal/BluetoothDeviceFilter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mDeviceFilter:Lcom/texa/carelib/communication/DeviceFilter;

    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-direct {v1, p1}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, v0, v1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->isValidDevice(Lcom/texa/carelib/communication/DeviceFilter;Lcom/texa/carelib/communication/DeviceInfo;)Z

    move-result p1

    return p1
.end method

.method protected isValidDevice(Lcom/texa/carelib/communication/DeviceFilter;Lcom/texa/carelib/communication/DeviceInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-interface {p1, p2}, Lcom/texa/carelib/communication/DeviceFilter;->isValidDevice(Lcom/texa/carelib/communication/DeviceInfo;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    :catch_0
    move-exception p1

    .line 131
    sget-object p2, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "An exception is occurred in external device filter."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDeviceFound(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothAdapter;Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V
    .locals 2

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 173
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 174
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 176
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    const-string v0, "android.bluetooth.device.extra.RSSI"

    .line 181
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p3, -0x8000

    .line 182
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_1
    if-eqz p4, :cond_2

    .line 186
    invoke-virtual {p4, p1, p3}, Lcom/texa/carelib/communication/internal/DeviceScannerCallback;->onDeviceFound(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method protected onDeviceNameChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothAdapter;Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V
    .locals 0

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 164
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 165
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 166
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 167
    invoke-virtual {p4, p1}, Lcom/texa/carelib/communication/internal/DeviceScannerCallback;->onDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method protected onScanFinished(Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/DeviceScannerCallback;->onScanFinished()V

    :cond_0
    return-void
.end method

.method protected onScanStarted(Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/DeviceScannerCallback;->onScanStarted()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mCallback:Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

    return-void
.end method

.method public setFilter(Lcom/texa/carelib/communication/DeviceFilter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mDeviceFilter:Lcom/texa/carelib/communication/DeviceFilter;

    return-void
.end method

.method public startScan(Landroid/content/Context;)Z
    .locals 4

    .line 47
    sget-object v0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "startScan()"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mDeviceScannerState:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    invoke-direct {p0, v2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->isScanning(Lcom/texa/carelib/communication/internal/DeviceScannerState;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "Scan is already in progress."

    .line 49
    invoke-static {v0, v2, p1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 54
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 59
    :cond_1
    sget-object v1, Lcom/texa/carelib/communication/internal/DeviceScannerState;->Starting:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    iput-object v1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mDeviceScannerState:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->registerBroadcastReceiver(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    .line 61
    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->startScanInternal(Landroid/bluetooth/BluetoothAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->stopScan(Landroid/content/Context;)Z

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mDeviceScannerState:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    invoke-direct {p0, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->isScanning(Lcom/texa/carelib/communication/internal/DeviceScannerState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mCallback:Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->onScanStarted(Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V

    :cond_2
    return p1
.end method

.method public stopScan(Landroid/content/Context;)Z
    .locals 3

    .line 82
    sget-object p1, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "stopScan()"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    :cond_0
    sget-object p1, Lcom/texa/carelib/communication/internal/DeviceScannerState;->Stopping:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->mDeviceScannerState:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
