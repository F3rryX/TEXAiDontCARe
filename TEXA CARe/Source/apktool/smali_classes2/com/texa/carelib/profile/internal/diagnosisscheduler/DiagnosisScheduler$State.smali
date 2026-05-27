.class final enum Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;
.super Ljava/lang/Enum;
.source "DiagnosisScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum CreateSubscribedObjectsPayloadComposer:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum DiagnosisNotReady:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum DongleNotConnected:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum Idle:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum PeekNextAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum RunAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum UpdateAvailableParameters:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum UpdateECUs:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum UpdateSubscriptionCount:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field public static final enum UpdateSupportedParameters:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 560
    new-instance v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v1, "DongleNotConnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->DongleNotConnected:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    .line 561
    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v3, "DiagnosisNotReady"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->DiagnosisNotReady:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    .line 562
    new-instance v3, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v5, "CreateSubscribedObjectsPayloadComposer"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->CreateSubscribedObjectsPayloadComposer:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    .line 563
    new-instance v5, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v7, "UpdateECUs"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateECUs:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    .line 564
    new-instance v7, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v9, "UpdateSupportedParameters"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateSupportedParameters:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    .line 565
    new-instance v9, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v11, "UpdateAvailableParameters"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateAvailableParameters:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    .line 566
    new-instance v11, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v13, "Idle"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->Idle:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    .line 567
    new-instance v13, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v15, "UpdateSubscriptionCount"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateSubscriptionCount:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    .line 568
    new-instance v15, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v14, "PeekNextAction"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->PeekNextAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    .line 569
    new-instance v14, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const-string v12, "RunAction"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->RunAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 559
    sput-object v12, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->$VALUES:[Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 559
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;
    .locals 1

    .line 559
    const-class v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;
    .locals 1

    .line 559
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->$VALUES:[Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {v0}, [Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    return-object v0
.end method
