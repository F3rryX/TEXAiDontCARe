.class public final enum Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;
.super Ljava/lang/Enum;
.source "ServiceAuthenticationProcedureStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

.field public static final enum Completed:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

.field public static final enum Error:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

.field public static final enum Pending:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

.field public static final enum Undefined:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Undefined:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    .line 8
    new-instance v1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    const-string v3, "Pending"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Pending:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    .line 9
    new-instance v3, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    const-string v5, "Completed"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Completed:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    .line 10
    new-instance v5, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    const-string v7, "Error"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Error:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 6
    sput-object v7, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->$VALUES:[Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->$VALUES:[Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    return-object v0
.end method
