.class public final enum Lcom/texa/carelib/communication/CommunicationStatus;
.super Ljava/lang/Enum;
.source "CommunicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/communication/CommunicationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum CONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum CONNECTION_FAILED:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum CONNECTION_LOST:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum DISCONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum DISCONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum NO_MEDIUM_ACTIVE:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

.field public static final enum SCANNING_FINISHED:Lcom/texa/carelib/communication/CommunicationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 20
    new-instance v1, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 24
    new-instance v3, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 28
    new-instance v5, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v7, "DISCONNECTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/communication/CommunicationStatus;->DISCONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 32
    new-instance v7, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/communication/CommunicationStatus;->DISCONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 36
    new-instance v9, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v11, "CONNECTION_LOST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTION_LOST:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 40
    new-instance v11, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v13, "NO_MEDIUM_ACTIVE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/texa/carelib/communication/CommunicationStatus;->NO_MEDIUM_ACTIVE:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 44
    new-instance v13, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v15, "NOT_SUPPORTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/texa/carelib/communication/CommunicationStatus;->NOT_SUPPORTED:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 48
    new-instance v15, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v14, "SCANNING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 52
    new-instance v14, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v12, "RECONNECTING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/texa/carelib/communication/CommunicationStatus;->RECONNECTING:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 56
    new-instance v12, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v10, "SCANNING_FINISHED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/texa/carelib/communication/CommunicationStatus;->SCANNING_FINISHED:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 60
    new-instance v10, Lcom/texa/carelib/communication/CommunicationStatus;

    const-string v8, "CONNECTION_FAILED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/texa/carelib/communication/CommunicationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTION_FAILED:Lcom/texa/carelib/communication/CommunicationStatus;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/texa/carelib/communication/CommunicationStatus;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 11
    sput-object v8, Lcom/texa/carelib/communication/CommunicationStatus;->$VALUES:[Lcom/texa/carelib/communication/CommunicationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/communication/CommunicationStatus;
    .locals 1

    .line 11
    const-class v0, Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/communication/CommunicationStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/communication/CommunicationStatus;
    .locals 1

    .line 11
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->$VALUES:[Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/communication/CommunicationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/communication/CommunicationStatus;

    return-object v0
.end method
