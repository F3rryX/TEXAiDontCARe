.class Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAdapterStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->registerBroadcastReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;


# direct methods
.method constructor <init>(Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Received action: %s"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 79
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 80
    iget-object p2, p0, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;

    invoke-virtual {p2, p1}, Lcom/texa/carelib/communication/internal/BluetoothAdapterStateMonitor;->onBluetoothStateChanged(I)V

    :cond_0
    return-void
.end method
