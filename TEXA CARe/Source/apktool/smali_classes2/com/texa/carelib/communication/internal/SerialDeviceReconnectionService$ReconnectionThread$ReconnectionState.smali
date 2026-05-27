.class final enum Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;
.super Ljava/lang/Enum;
.source "SerialDeviceReconnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReconnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

.field public static final enum Connect:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

.field public static final enum ConnectionFailed:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

.field public static final enum ConnectionSuccess:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

.field public static final enum PickDevice:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

.field public static final enum VerifyBluetoothState:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 92
    new-instance v0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    const-string v1, "PickDevice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->PickDevice:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    .line 93
    new-instance v1, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    const-string v3, "VerifyBluetoothState"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->VerifyBluetoothState:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    .line 94
    new-instance v3, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    const-string v5, "Connect"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->Connect:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    .line 95
    new-instance v5, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    const-string v7, "ConnectionSuccess"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->ConnectionSuccess:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    .line 96
    new-instance v7, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    const-string v9, "ConnectionFailed"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->ConnectionFailed:Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 91
    sput-object v9, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->$VALUES:[Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;
    .locals 1

    .line 91
    const-class v0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;
    .locals 1

    .line 91
    sget-object v0, Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->$VALUES:[Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    invoke-virtual {v0}, [Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/communication/internal/SerialDeviceReconnectionService$ReconnectionThread$ReconnectionState;

    return-object v0
.end method
