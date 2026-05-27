.class public final synthetic Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Long;

.field public final synthetic f$3:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;ILjava/lang/Long;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    iput p2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Long;

    iput-object p4, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;->f$3:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Long;

    iget-object v3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;->f$3:Ljava/util/Set;

    check-cast p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->lambda$runAction$9$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(ILjava/lang/Long;Ljava/util/Set;Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;)V

    return-void
.end method
