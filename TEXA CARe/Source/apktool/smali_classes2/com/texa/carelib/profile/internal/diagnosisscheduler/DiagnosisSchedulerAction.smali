.class public Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;
.super Ljava/lang/Object;
.source "DiagnosisSchedulerAction.java"


# instance fields
.field private final mAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

.field private final mDataIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterval:Ljava/lang/Long;

.field private final mObjectDataType:I

.field private final mOldSubscriptionInterval:Ljava/lang/Long;

.field private final mOldSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;ILjava/util/Set;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/care/vehicle/SubscriptionState;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;ILjava/util/Set;Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;ILjava/util/Set;Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "Lcom/texa/carelib/care/vehicle/SubscriptionState;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    .line 22
    iput p2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mObjectDataType:I

    .line 23
    iput-object p3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mDataIDs:Ljava/util/Set;

    .line 24
    iput-object p4, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mInterval:Ljava/lang/Long;

    .line 25
    iput-object p5, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mOldSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 26
    iput-object p6, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mOldSubscriptionInterval:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    return-object v0
.end method

.method public getDataIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mDataIDs:Ljava/util/Set;

    return-object v0
.end method

.method public getNewInterval()Ljava/lang/Long;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public getObjectDataType()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mObjectDataType:I

    return v0
.end method

.method public getOldInterval()Ljava/lang/Long;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mOldSubscriptionInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public getOldSubscriptionState()Lcom/texa/carelib/care/vehicle/SubscriptionState;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mOldSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnosisSchedulerAction{mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mObjectDataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mObjectDataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataIDs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mDataIDs:Ljava/util/Set;

    .line 64
    invoke-static {v1}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mInterval:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOldSubscriptionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mOldSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOldSubscriptionInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->mOldSubscriptionInterval:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
