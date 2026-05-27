.class Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;
.super Ljava/lang/Object;
.source "BluetoothDeviceFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothDeviceFactory"


# instance fields
.field private final mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    return-void
.end method

.method private getRemoteDeviceByAddress(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 71
    invoke-static {p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 77
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRemoteDeviceByName(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .line 87
    invoke-static {p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/communication/DeviceInfo;

    .line 93
    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->getRemoteDeviceByAddress(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private getRemoteDeviceFromBondDevices(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .line 102
    invoke-static {p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/communication/DeviceInfo;

    .line 108
    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->getRemoteDeviceByAddress(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private getRemoteDeviceFromKnownDevices(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .line 117
    invoke-static {p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getKnownDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/communication/DeviceInfo;

    .line 122
    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->getRemoteDeviceByAddress(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method


# virtual methods
.method getRemoteDevice(Landroid/bluetooth/BluetoothAdapter;Lcom/texa/carelib/communication/DeviceInfo;)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    if-nez p1, :cond_0

    .line 34
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Bluetooth is not supported on this hardware platform."

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->getRemoteDeviceByAddress(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->mBluetoothCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 43
    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->getRemoteDeviceByName(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 48
    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->getRemoteDeviceFromBondDevices(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 53
    invoke-virtual {p2}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothDeviceFactory;->getRemoteDeviceFromKnownDevices(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :cond_3
    return-object v0
.end method
