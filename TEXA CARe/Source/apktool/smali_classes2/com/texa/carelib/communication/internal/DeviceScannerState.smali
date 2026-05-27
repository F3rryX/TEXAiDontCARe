.class public final enum Lcom/texa/carelib/communication/internal/DeviceScannerState;
.super Ljava/lang/Enum;
.source "DeviceScannerState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/communication/internal/DeviceScannerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/communication/internal/DeviceScannerState;

.field public static final enum Idle:Lcom/texa/carelib/communication/internal/DeviceScannerState;

.field public static final enum Scanning:Lcom/texa/carelib/communication/internal/DeviceScannerState;

.field public static final enum Starting:Lcom/texa/carelib/communication/internal/DeviceScannerState;

.field public static final enum Stopping:Lcom/texa/carelib/communication/internal/DeviceScannerState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/texa/carelib/communication/internal/DeviceScannerState;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/internal/DeviceScannerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/communication/internal/DeviceScannerState;->Idle:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    .line 8
    new-instance v1, Lcom/texa/carelib/communication/internal/DeviceScannerState;

    const-string v3, "Starting"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/communication/internal/DeviceScannerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/communication/internal/DeviceScannerState;->Starting:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    .line 9
    new-instance v3, Lcom/texa/carelib/communication/internal/DeviceScannerState;

    const-string v5, "Scanning"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/communication/internal/DeviceScannerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/communication/internal/DeviceScannerState;->Scanning:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    .line 10
    new-instance v5, Lcom/texa/carelib/communication/internal/DeviceScannerState;

    const-string v7, "Stopping"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/communication/internal/DeviceScannerState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/communication/internal/DeviceScannerState;->Stopping:Lcom/texa/carelib/communication/internal/DeviceScannerState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/communication/internal/DeviceScannerState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 6
    sput-object v7, Lcom/texa/carelib/communication/internal/DeviceScannerState;->$VALUES:[Lcom/texa/carelib/communication/internal/DeviceScannerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/DeviceScannerState;
    .locals 1

    .line 6
    const-class v0, Lcom/texa/carelib/communication/internal/DeviceScannerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/communication/internal/DeviceScannerState;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/communication/internal/DeviceScannerState;
    .locals 1

    .line 6
    sget-object v0, Lcom/texa/carelib/communication/internal/DeviceScannerState;->$VALUES:[Lcom/texa/carelib/communication/internal/DeviceScannerState;

    invoke-virtual {v0}, [Lcom/texa/carelib/communication/internal/DeviceScannerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/communication/internal/DeviceScannerState;

    return-object v0
.end method
