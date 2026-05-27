.class Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;
.super Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;
.source "BluetoothCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;-><init>(Landroid/content/Context;Lcom/texa/carelib/communication/KnownDeviceHistory;)V
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

    .line 76
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/DeviceReconnectionServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReconnectionFails(Ljava/lang/Throwable;)V
    .locals 1

    .line 98
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 99
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {p1, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$200(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V

    :cond_0
    return-void
.end method

.method public onReconnectionStart()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$000(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V

    :cond_0
    return-void
.end method

.method public onReconnectionStop()V
    .locals 2

    .line 86
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$100(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V

    :cond_0
    return-void
.end method

.method public onSocketReady(Landroid/bluetooth/BluetoothSocket;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$1;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->onSocketConnected(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method
