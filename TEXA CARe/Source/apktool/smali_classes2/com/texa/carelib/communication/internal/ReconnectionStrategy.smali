.class final enum Lcom/texa/carelib/communication/internal/ReconnectionStrategy;
.super Ljava/lang/Enum;
.source "ReconnectionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/communication/internal/ReconnectionStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

.field public static final enum Auto:Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

.field public static final enum Master:Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

.field public static final enum Slave:Lcom/texa/carelib/communication/internal/ReconnectionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    const-string v1, "Auto"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;->Auto:Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    .line 8
    new-instance v1, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    const-string v3, "Slave"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;->Slave:Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    .line 9
    new-instance v3, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    const-string v5, "Master"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;->Master:Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;->$VALUES:[Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/ReconnectionStrategy;
    .locals 1

    .line 6
    const-class v0, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/communication/internal/ReconnectionStrategy;
    .locals 1

    .line 6
    sget-object v0, Lcom/texa/carelib/communication/internal/ReconnectionStrategy;->$VALUES:[Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    invoke-virtual {v0}, [Lcom/texa/carelib/communication/internal/ReconnectionStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/communication/internal/ReconnectionStrategy;

    return-object v0
.end method
