.class public Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;
.super Ljava/lang/Object;
.source "BluetoothSocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;
    }
.end annotation


# static fields
.field static final EXCEPTION_MESSAGE_CONNECTION_REFUSED:Ljava/lang/String; = "Connection refused"

.field static final EXCEPTION_MESSAGE_PERMISSION_DENIED:Ljava/lang/String; = "Permission denied"

.field private static final INTERVAL_TIME:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "BluetoothSocketConnector"


# instance fields
.field private mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile mIsInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDefaultSocket(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Z)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p3}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->useSecureCommunication(Z)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->setUUID(Ljava/util/UUID;)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;

    move-result-object p1

    sget-object p2, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;->Normal:Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;

    .line 144
    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->setBluetoothSocketWrapperType(Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->build()Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    return-object p1
.end method

.method private createFallbackSocket(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->setChannel(I)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;

    move-result-object p1

    sget-object p2, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;->Fallback:Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;

    .line 152
    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->setBluetoothSocketWrapperType(Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->build()Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abortConnection()V
    .locals 1

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mIsInterrupted:Z

    .line 135
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-static {v0}, Lcom/texa/carelib/communication/internal/serial/BluetoothCommunication;->closeSocket(Landroid/bluetooth/BluetoothSocket;)V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothSocket;
    .locals 9

    const/4 p4, 0x0

    .line 34
    iput-boolean p4, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mIsInterrupted:Z

    .line 35
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, p4

    const-string v3, "Connecting to: %1$s"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->Init:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    .line 38
    :cond_0
    :goto_0
    sget-object v2, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->End:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    const/4 v3, 0x0

    if-eq v2, v0, :cond_a

    iget-boolean v2, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mIsInterrupted:Z

    if-nez v2, :cond_a

    .line 39
    sget-object v2, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, p4, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    sget-object v4, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$1;->$SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketConnector$ConnectionState:[I

    invoke-virtual {v0}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v1, :cond_8

    const/4 v5, 0x2

    const-wide/16 v6, 0xfa

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "Fallback channel %d"

    new-array v4, v1, [Ljava/lang/Object;

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p4

    invoke-static {v2, v0, v4}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0, p1, v1}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->createFallbackSocket(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 107
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 109
    iget-boolean v2, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mIsInterrupted:Z

    if-nez v2, :cond_2

    .line 110
    sget-object v2, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->TAG:Ljava/lang/String;

    new-array v4, p4, [Ljava/lang/Object;

    const-string v5, "connect with fallback method throws an exception."

    invoke-static {v2, v0, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    .line 113
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :catch_1
    iput-object v3, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 120
    :cond_2
    :goto_1
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->End:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    goto :goto_0

    .line 81
    :cond_3
    :try_start_2
    invoke-direct {p0, p1, p2, p4}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->createDefaultSocket(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Z)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 82
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 83
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->End:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 85
    iget-boolean v4, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mIsInterrupted:Z

    if-nez v4, :cond_0

    .line 86
    sget-object v4, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->TAG:Ljava/lang/String;

    new-array v5, p4, [Ljava/lang/Object;

    const-string v8, "connect in INSECURE mode throws an exception."

    invoke-static {v4, v2, v8, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_4

    .line 89
    :try_start_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 92
    :catch_3
    iput-object v3, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 96
    :cond_4
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    nop

    goto/16 :goto_0

    .line 51
    :cond_5
    :try_start_5
    invoke-direct {p0, p1, p2, v1}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->createDefaultSocket(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Z)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 52
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 53
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->End:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v2

    .line 55
    iget-boolean v4, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mIsInterrupted:Z

    if-nez v4, :cond_0

    .line 56
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_6

    .line 58
    :try_start_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 61
    :catch_6
    iput-object v3, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 64
    :cond_6
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->TAG:Ljava/lang/String;

    new-array v3, p4, [Ljava/lang/Object;

    const-string v4, "connect in SECURE mode throws an exception."

    invoke-static {v0, v2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->isSecureSocketException(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->ConnectInsecure:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    goto :goto_2

    .line 68
    :cond_7
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->ConnectFallback:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    .line 72
    :goto_2
    :try_start_7
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :cond_8
    if-eqz p3, :cond_9

    .line 43
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->ConnectSecure:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    goto/16 :goto_0

    .line 45
    :cond_9
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->ConnectInsecure:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    goto/16 :goto_0

    .line 126
    :cond_a
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 127
    iget-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;->mBluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1

    :cond_b
    return-object v3
.end method

.method isSecureSocketException(Ljava/io/IOException;)Z
    .locals 2

    .line 166
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Permission denied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connection refused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
