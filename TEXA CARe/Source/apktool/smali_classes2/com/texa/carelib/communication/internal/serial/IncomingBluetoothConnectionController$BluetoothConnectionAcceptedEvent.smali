.class Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$BluetoothConnectionAcceptedEvent;
.super Ljava/lang/Object;
.source "IncomingBluetoothConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothConnectionAcceptedEvent"
.end annotation


# instance fields
.field private final mSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;


# direct methods
.method constructor <init>(Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$BluetoothConnectionAcceptedEvent;->this$0:Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$BluetoothConnectionAcceptedEvent;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public getSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$BluetoothConnectionAcceptedEvent;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method
