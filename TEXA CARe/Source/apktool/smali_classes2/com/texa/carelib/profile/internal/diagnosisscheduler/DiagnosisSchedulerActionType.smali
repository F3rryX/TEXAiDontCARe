.class public final enum Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;
.super Ljava/lang/Enum;
.source "DiagnosisSchedulerActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

.field public static final enum Read:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

.field public static final enum Subscribe:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

.field public static final enum Unsubscribe:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    const-string v1, "Subscribe"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Subscribe:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    .line 8
    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    const-string v3, "Unsubscribe"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Unsubscribe:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    .line 9
    new-instance v3, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    const-string v5, "Read"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Read:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->$VALUES:[Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;
    .locals 1

    .line 6
    const-class v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;
    .locals 1

    .line 6
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->$VALUES:[Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    return-object v0
.end method
