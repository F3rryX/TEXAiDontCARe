.class Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCrashManagerLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;


# direct methods
.method constructor <init>(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 232
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$400(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Bluetooth discovery finished"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$600(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)V

    goto/16 :goto_0

    .line 236
    :cond_0
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Bluetooth discovery finished (external)"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 239
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$400(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {p1, v2}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$702(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;Z)Z

    .line 241
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Bluetooth discovery started"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 243
    :cond_2
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Bluetooth discovery started (external)"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 247
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 262
    :pswitch_0
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Bluetooth state is ON"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$900(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$800(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v1

    const-string v0, "Bluetooth was turned off for %d milliseconds"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$900(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$800(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x258

    cmp-long v2, p1, v0

    if-gez v2, :cond_5

    .line 265
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$1000(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;)V

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$902(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;J)J

    .line 271
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Bluetooth state is TURNING_ON"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Bluetooth state is OFF"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy$1;->this$0:Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$802(Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;J)J

    goto :goto_0

    .line 250
    :cond_4
    invoke-static {}, Lcom/texa/carelib/communication/internal/BluetoothCrashManagerLegacy;->access$500()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Bluetooth state is ERROR"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
