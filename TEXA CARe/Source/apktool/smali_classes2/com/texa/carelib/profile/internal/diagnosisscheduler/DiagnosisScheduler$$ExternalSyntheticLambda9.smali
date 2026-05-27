.class public final synthetic Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;ILjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda9;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    iput p2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda9;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda9;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda9;->f$2:Ljava/util/Set;

    check-cast p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->lambda$runAction$8$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(ILjava/util/Set;Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;)V

    return-void
.end method
