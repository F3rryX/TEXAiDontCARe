.class public final enum Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;
.super Ljava/lang/Enum;
.source "TBUSEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/internal/TBUSEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TBUSEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

.field public static final enum Error:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

.field public static final enum Message:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

.field public static final enum Send:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

.field public static final enum Write:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 165
    new-instance v0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    const-string v1, "Message"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->Message:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    .line 169
    new-instance v1, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    const-string v3, "Send"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->Send:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    .line 173
    new-instance v3, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    const-string v5, "Error"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->Error:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    .line 177
    new-instance v5, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    const-string v7, "Write"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->Write:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 161
    sput-object v7, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->$VALUES:[Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;
    .locals 1

    .line 161
    const-class v0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;
    .locals 1

    .line 161
    sget-object v0, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->$VALUES:[Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    invoke-virtual {v0}, [Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    return-object v0
.end method
