.class Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothStateBroadcastReceiver"
.end annotation


# instance fields
.field private final mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;


# direct methods
.method constructor <init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V
    .locals 0

    .line 962
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 963
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 968
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 969
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p2, p1, :cond_0

    .line 971
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Current bluetooth state is changed. New state: ON"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->NO_MEDIUM_ACTIVE:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p2

    if-ne p1, p2, :cond_4

    .line 973
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    sget-object p2, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {p1, p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$1600(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V

    goto/16 :goto_0

    :cond_0
    const/16 p2, 0xa

    if-ne p2, p1, :cond_4

    .line 976
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Current bluetooth state is changed. New state: OFF"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p2

    if-eq p1, p2, :cond_4

    .line 978
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$700(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V

    goto/16 :goto_0

    .line 981
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    if-eqz p1, :cond_3

    .line 982
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 983
    sget-object p2, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "BluetoothDevice.ACTION_ACL_DISCONNECTED device: {%1$s}(%2$s)"

    invoke-static {p2, v0, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$400(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$400(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$400(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$400(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 985
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 986
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$1700(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Landroid/bluetooth/BluetoothAdapter;)V

    goto :goto_0

    .line 987
    :cond_2
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->DISCONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object p2, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p2

    if-ne p1, p2, :cond_4

    .line 988
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    sget-object p2, Lcom/texa/carelib/communication/CommunicationStatus;->DISCONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {p1, p2}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$1800(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 989
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$BluetoothStateBroadcastReceiver;->mCommunication:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$700(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V

    goto :goto_0

    .line 992
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 993
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 994
    sget-object p2, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "BluetoothDevice.ACTION_ACL_CONNECTED device: {%1$s}(%2$s)"

    invoke-static {p2, p1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method
