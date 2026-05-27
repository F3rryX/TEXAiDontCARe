.class public Lcom/texa/carelib/communication/internal/MockCommunication;
.super Lcom/texa/carelib/communication/internal/CommunicationBase;
.source "MockCommunication.java"


# static fields
.field private static final CONNECT_DELAY:I = 0x7d0

.field private static final DISCONNECT_DELAY:I = 0x7d0

.field private static final REBOOT_DELAY:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "MockCommunication"


# instance fields
.field private final mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z

.field private final mKnownDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScanDevicesTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Lcom/texa/carelib/communication/internal/CommunicationBase;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mDevices:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mKnownDevices:Ljava/util/List;

    .line 50
    new-instance v1, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    const-string v2, "00-08-74-4C-7F-01"

    invoke-direct {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Ljava/lang/String;)V

    const-string v2, "VCI 11111111"

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setBondState(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/communication/internal/MockCommunication;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mDevices:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public connect(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-eq v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/communication/internal/MockCommunication;Lcom/texa/carelib/communication/DeviceInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/carelib/communication/internal/MockCommunication;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_thread_connect"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 105
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Dongle is already connected!"

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disconnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/communication/internal/MockCommunication$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/communication/internal/MockCommunication;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/texa/carelib/communication/internal/MockCommunication;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_thread_connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "No dongle connected!"

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forgetKnownDevices()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mKnownDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method public getKnownDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mKnownDevices:Ljava/util/List;

    return-object v0
.end method

.method public getRemote()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mIsConnected:Z

    return v0
.end method

.method public synthetic lambda$connect$0$com-texa-carelib-communication-internal-MockCommunication(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 4

    .line 109
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->stopScan()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mScanDevicesTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mScanDevicesTask:Landroid/os/AsyncTask;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/AsyncTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 123
    sget-object v1, Lcom/texa/carelib/communication/internal/MockCommunication;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Generic error."

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    nop

    .line 128
    :cond_0
    :goto_1
    sget-object v0, Lcom/texa/carelib/communication/internal/MockCommunication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/MockCommunication;->setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;

    .line 131
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    const/16 v0, 0x7d0

    .line 135
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTION_LOST:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v2, :cond_1

    const/16 v0, 0x1b58

    :cond_1
    int-to-long v0, v0

    .line 140
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    nop

    .line 144
    :goto_2
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mKnownDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mKnownDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_2
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mIsConnected:Z

    return-void
.end method

.method public synthetic lambda$disconnect$1$com-texa-carelib-communication-internal-MockCommunication()V
    .locals 2

    .line 163
    sget-object v0, Lcom/texa/carelib/communication/internal/MockCommunication;->TAG:Ljava/lang/String;

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->DISCONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    const-wide/16 v0, 0x7d0

    .line 168
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;

    .line 173
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->DISCONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mIsConnected:Z

    .line 175
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->start()V

    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mKnownDevices:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 79
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mKnownDevices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->connect(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Device list is empty."

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reconnectToDevices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/communication/internal/MockCommunication;->connect(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void

    .line 91
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Device list is empty."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeBond(Ljava/lang/String;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/communication/DeviceInfo;

    .line 335
    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {v1}, Lcom/texa/carelib/communication/DeviceInfo;->builder()Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setBondState(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    :cond_1
    return-void
.end method

.method public setDeviceFilter(Lcom/texa/carelib/communication/DeviceFilter;)V
    .locals 0

    return-void
.end method

.method public setKnownDeviceHistory(Lcom/texa/carelib/communication/KnownDeviceHistory;)V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;

    return-void
.end method

.method public simulateConnectionLost()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTION_LOST:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 324
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->connect(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void

    .line 327
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Dongle is null!"

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setCurrentDevice(Lcom/texa/carelib/communication/DeviceInfo;)Lcom/texa/carelib/communication/internal/CommunicationBase;

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mIsConnected:Z

    .line 288
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    return-void
.end method

.method public startScan()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/texa/carelib/communication/internal/MockCommunication;->TAG:Ljava/lang/String;

    const-string v1, "startScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mScanDevicesTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Scan task is already pending..."

    .line 187
    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    const-string v1, "Discovery scan is already in progress."

    invoke-direct {v0, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    :goto_0
    new-instance v0, Lcom/texa/carelib/communication/internal/MockCommunication$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/communication/internal/MockCommunication$1;-><init>(Lcom/texa/carelib/communication/internal/MockCommunication;)V

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mScanDevicesTask:Landroid/os/AsyncTask;

    new-array v1, v2, [Ljava/lang/Object;

    .line 270
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->stopScan()V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->disconnect()V

    :goto_0
    return-void
.end method

.method public stopReconnect()V
    .locals 2

    .line 97
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 275
    sget-object v0, Lcom/texa/carelib/communication/internal/MockCommunication;->TAG:Ljava/lang/String;

    const-string v1, "stopScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/MockCommunication;->mScanDevicesTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 277
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 278
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING_FINISHED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/communication/internal/MockCommunication;->setStatus(Lcom/texa/carelib/communication/CommunicationStatus;)V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/communication/internal/MockCommunication;->start()V

    return-void
.end method
