.class final enum Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;
.super Ljava/lang/Enum;
.source "SerialProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DataWriterTaskState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

.field public static final enum Idle:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

.field public static final enum ResponseReceived:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

.field public static final enum SendMessage:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

.field public static final enum Timeout:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

.field public static final enum WaitResponse:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 590
    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->Idle:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    .line 591
    new-instance v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    const-string v3, "SendMessage"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->SendMessage:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    .line 592
    new-instance v3, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    const-string v5, "WaitResponse"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->WaitResponse:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    .line 593
    new-instance v5, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    const-string v7, "ResponseReceived"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->ResponseReceived:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    .line 594
    new-instance v7, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    const-string v9, "Timeout"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->Timeout:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 589
    sput-object v9, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->$VALUES:[Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 589
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;
    .locals 1

    .line 589
    const-class v0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;
    .locals 1

    .line 589
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->$VALUES:[Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;

    return-object v0
.end method
