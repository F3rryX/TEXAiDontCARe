.class public Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;
.super Ljava/lang/Object;
.source "BluetoothSocketBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothSocketBuilder"


# instance fields
.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothSocketType:Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;

.field private mChannel:I

.field private mUUID:Ljava/util/UUID;

.field private mUseSecureCommunication:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mUseSecureCommunication:Z

    .line 26
    iput v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mChannel:I

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/BluetoothSocket;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_7

    .line 68
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mBluetoothSocketType:Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;

    if-eqz v0, :cond_6

    .line 74
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$1;->$SwitchMap$com$texa$carelib$communication$internal$BluetoothSocketBuilder$BluetoothSocketType:[I

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mBluetoothSocketType:Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;

    invoke-virtual {v1}, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 89
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    .line 90
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 98
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :goto_0
    const-string v7, "createRfcommSocket"

    if-ge v6, v5, :cond_1

    :try_start_1
    aget-object v8, v3, v6

    .line 100
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    :cond_1
    :goto_1
    invoke-virtual {v0, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 109
    iget v2, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mChannel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 110
    iget-object v2, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 113
    sget-object v1, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Generic error"

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not create the fallback socket."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 118
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth socket wrapper type not known."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mUUID:Ljava/util/UUID;

    if-eqz v0, :cond_5

    .line 81
    iget-boolean v1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mUseSecureCommunication:Z

    if-eqz v1, :cond_4

    .line 82
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    goto :goto_2

    .line 84
    :cond_4
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    :goto_2
    return-object v0

    .line 79
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UUID not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bluetooth socket wrapper type not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bluetoothDevice not yet set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public setBluetoothSocketWrapperType(Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mBluetoothSocketType:Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder$BluetoothSocketType;

    return-object p0
.end method

.method public setChannel(I)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;
    .locals 0

    .line 35
    iput p1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mChannel:I

    return-object p0
.end method

.method public setUUID(Ljava/util/UUID;)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mUUID:Ljava/util/UUID;

    return-object p0
.end method

.method public useSecureCommunication(Z)Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/texa/carelib/communication/internal/BluetoothSocketBuilder;->mUseSecureCommunication:Z

    return-object p0
.end method
