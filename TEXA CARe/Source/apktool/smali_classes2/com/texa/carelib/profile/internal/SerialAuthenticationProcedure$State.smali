.class abstract enum Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;
.super Ljava/lang/Enum;
.source "SerialAuthenticationProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

.field public static final enum AccessoryStatusUpdate:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

.field public static final enum AuthenticationRequest:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

.field public static final enum CreateAuthenticationKey:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

.field public static final enum GetSupportedCommands:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

.field public static final enum Idle:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 451
    new-instance v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$1;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->Idle:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    .line 455
    new-instance v1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$2;

    const-string v3, "CreateAuthenticationKey"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->CreateAuthenticationKey:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    .line 462
    new-instance v3, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$3;

    const-string v5, "AuthenticationRequest"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->AuthenticationRequest:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    .line 469
    new-instance v5, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$4;

    const-string v7, "AccessoryStatusUpdate"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->AccessoryStatusUpdate:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    .line 476
    new-instance v7, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$5;

    const-string v9, "GetSupportedCommands"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->GetSupportedCommands:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 450
    sput-object v9, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->$VALUES:[Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$1;)V
    .locals 0

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;
    .locals 1

    .line 450
    const-class v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;
    .locals 1

    .line 450
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->$VALUES:[Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure$State;

    return-object v0
.end method


# virtual methods
.method public abstract onMessageReceived(Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
.end method
