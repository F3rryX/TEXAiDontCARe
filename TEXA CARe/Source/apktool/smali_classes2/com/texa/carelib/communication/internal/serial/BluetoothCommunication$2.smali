.class Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;
.super Lcom/texa/carelib/communication/internal/DeviceScannerCallback;
.source "BluetoothCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;


# direct methods
.method constructor <init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/DeviceScannerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceFound(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .locals 5

    .line 898
    invoke-super {p0, p1, p2}, Lcom/texa/carelib/communication/internal/DeviceScannerCallback;->onDeviceFound(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    .line 900
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 905
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$900(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/communication/DeviceInfo;

    .line 906
    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothDeviceCompat;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 910
    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->builder()Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 912
    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getRSSI()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 914
    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const/4 v0, 0x1

    .line 917
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 919
    invoke-virtual {p1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0

    .line 924
    :cond_3
    new-instance v0, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    invoke-direct {v0, p1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, p2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object p1

    :goto_0
    if-eqz v3, :cond_4

    .line 928
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    .line 929
    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$900(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p2, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$1200(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/DeviceInfo;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .line 860
    invoke-super {p0, p1}, Lcom/texa/carelib/communication/internal/DeviceScannerCallback;->onDeviceNameChanged(Landroid/bluetooth/BluetoothDevice;)V

    .line 862
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$900(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/DeviceInfo;

    .line 867
    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothDeviceCompat;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v0, :cond_3

    .line 870
    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->builder()Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 874
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/texa/carelib/core/utils/internal/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    .line 877
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    .line 880
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/texa/carelib/communication/DeviceInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 881
    invoke-virtual {v2, v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    :cond_2
    if-eqz v3, :cond_4

    .line 886
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$1000(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/DeviceInfo;)V

    goto :goto_0

    .line 890
    :cond_3
    new-instance v0, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 891
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$900(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p1, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$1100(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/DeviceInfo;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onScanFinished()V
    .locals 2

    .line 945
    invoke-super {p0}, Lcom/texa/carelib/communication/internal/DeviceScannerCallback;->onScanFinished()V

    .line 947
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING_FINISHED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$1400(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 949
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$1500(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V

    :cond_0
    return-void
.end method

.method public onScanStarted()V
    .locals 2

    .line 936
    invoke-super {p0}, Lcom/texa/carelib/communication/internal/DeviceScannerCallback;->onScanStarted()V

    .line 938
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$2;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$1300(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V

    :cond_0
    return-void
.end method
