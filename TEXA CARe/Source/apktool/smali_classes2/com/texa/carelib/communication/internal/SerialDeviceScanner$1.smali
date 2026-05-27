.class Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;
.super Landroid/content/BroadcastReceiver;
.source "SerialDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->registerBroadcastReceiver(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

.field final synthetic val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    iput-object p2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Received action: %s"

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object p2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-static {p2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->access$100(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;)Lcom/texa/carelib/communication/internal/DeviceScannerState;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->access$200(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;Lcom/texa/carelib/communication/internal/DeviceScannerState;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 207
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    iget-object p2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->val$bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1, p2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->access$300(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;Landroid/bluetooth/BluetoothAdapter;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-static {p2, p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->access$400(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;Landroid/content/Context;)V

    .line 210
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->access$500(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;)Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->onScanFinished(Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-static {v2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->access$500(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;)Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->onDeviceNameChanged(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothAdapter;Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/communication/internal/SerialDeviceScanner$1;->this$0:Lcom/texa/carelib/communication/internal/SerialDeviceScanner;

    invoke-static {v2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->access$500(Lcom/texa/carelib/communication/internal/SerialDeviceScanner;)Lcom/texa/carelib/communication/internal/DeviceScannerCallback;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/texa/carelib/communication/internal/SerialDeviceScanner;->onDeviceFound(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothAdapter;Lcom/texa/carelib/communication/internal/DeviceScannerCallback;)V

    :cond_3
    :goto_0
    return-void
.end method
