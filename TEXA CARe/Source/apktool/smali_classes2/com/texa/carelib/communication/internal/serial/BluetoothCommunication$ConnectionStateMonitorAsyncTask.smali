.class Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectionStateMonitorAsyncTask;
.super Landroid/os/AsyncTask;
.source "BluetoothCommunication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionStateMonitorAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;


# direct methods
.method private constructor <init>(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectionStateMonitorAsyncTask;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 707
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectionStateMonitorAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 710
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConnectionStateMonitorAsyncTask started."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectionStateMonitorAsyncTask;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$400(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectionStateMonitorAsyncTask;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-static {p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$400(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x3e8

    .line 713
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 707
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectionStateMonitorAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 722
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 723
    sget-object p1, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConnectionStateMonitorAsyncTask has terminated."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectionStateMonitorAsyncTask;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 725
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication$ConnectionStateMonitorAsyncTask;->this$0:Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;

    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTION_LOST:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {p1, v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->access$500(Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;Lcom/texa/carelib/communication/CommunicationStatus;)V

    :cond_0
    return-void
.end method
