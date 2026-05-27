.class Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$AcceptConnectionRunnable;
.super Ljava/lang/Object;
.source "IncomingBluetoothConnectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptConnectionRunnable"
.end annotation


# instance fields
.field private final mSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$AcceptConnectionRunnable;->this$0:Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$AcceptConnectionRunnable;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$AcceptConnectionRunnable;->this$0:Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController$AcceptConnectionRunnable;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;->access$000(Lcom/texa/carelib/communication/internal/serial/IncomingBluetoothConnectionController;Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method
