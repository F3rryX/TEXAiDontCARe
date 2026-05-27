.class final enum Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;
.super Ljava/lang/Enum;
.source "BluetoothSocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/BluetoothSocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

.field public static final enum ConnectFallback:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

.field public static final enum ConnectInsecure:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

.field public static final enum ConnectSecure:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

.field public static final enum End:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

.field public static final enum Init:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 26
    new-instance v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    const-string v1, "Init"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->Init:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    .line 27
    new-instance v1, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    const-string v3, "ConnectSecure"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->ConnectSecure:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    .line 28
    new-instance v3, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    const-string v5, "ConnectInsecure"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->ConnectInsecure:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    .line 29
    new-instance v5, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    const-string v7, "ConnectFallback"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->ConnectFallback:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    .line 30
    new-instance v7, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    const-string v9, "End"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->End:Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 25
    sput-object v9, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->$VALUES:[Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;
    .locals 1

    .line 25
    const-class v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;
    .locals 1

    .line 25
    sget-object v0, Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->$VALUES:[Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    invoke-virtual {v0}, [Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/communication/internal/BluetoothSocketConnector$ConnectionState;

    return-object v0
.end method
