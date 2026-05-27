.class final enum Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;
.super Ljava/lang/Enum;
.source "PacketComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/PacketComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PacketComposerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

.field public static final enum WaitChecksum:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

.field public static final enum WaitCommandId:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

.field public static final enum WaitCurrentIndex:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

.field public static final enum WaitData:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

.field public static final enum WaitLengthLsb:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

.field public static final enum WaitLengthMsb:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

.field public static final enum WaitMaxIndex:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

.field public static final enum WaitStop:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

.field public static final enum WaitStx:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 268
    new-instance v0, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const-string v1, "WaitStx"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitStx:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 269
    new-instance v1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const-string v3, "WaitCommandId"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitCommandId:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 270
    new-instance v3, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const-string v5, "WaitMaxIndex"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitMaxIndex:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 271
    new-instance v5, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const-string v7, "WaitCurrentIndex"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitCurrentIndex:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 272
    new-instance v7, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const-string v9, "WaitLengthLsb"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitLengthLsb:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 273
    new-instance v9, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const-string v11, "WaitLengthMsb"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitLengthMsb:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 274
    new-instance v11, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const-string v13, "WaitData"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitData:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 275
    new-instance v13, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const-string v15, "WaitChecksum"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitChecksum:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    .line 276
    new-instance v15, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const-string v14, "WaitStop"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->WaitStop:Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 267
    sput-object v14, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->$VALUES:[Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;
    .locals 1

    .line 267
    const-class v0, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;
    .locals 1

    .line 267
    sget-object v0, Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->$VALUES:[Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    invoke-virtual {v0}, [Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/communication/internal/PacketComposer$PacketComposerState;

    return-object v0
.end method
