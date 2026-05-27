.class public final enum Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;
.super Ljava/lang/Enum;
.source "TBUSEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/TBUSEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TBUSEventError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

.field public static final enum BadCrc:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

.field public static final enum ErrorCommunicating:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

.field public static final enum ErrorStatus:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

.field public static final enum NoError:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

.field public static final enum Timeout:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

.field public static final enum WrongCommand:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 188
    new-instance v0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    const-string v1, "NoError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->NoError:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    .line 192
    new-instance v1, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    const-string v3, "WrongCommand"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->WrongCommand:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    .line 196
    new-instance v3, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    const-string v5, "BadCrc"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->BadCrc:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    .line 200
    new-instance v5, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    const-string v7, "ErrorCommunicating"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->ErrorCommunicating:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    .line 204
    new-instance v7, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    const-string v9, "Timeout"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->Timeout:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    .line 208
    new-instance v9, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    const-string v11, "ErrorStatus"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->ErrorStatus:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 184
    sput-object v11, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->$VALUES:[Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;
    .locals 1

    .line 184
    const-class v0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;
    .locals 1

    .line 184
    sget-object v0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->$VALUES:[Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    invoke-virtual {v0}, [Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    return-object v0
.end method
