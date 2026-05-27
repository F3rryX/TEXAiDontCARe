.class public final synthetic Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;Ljava/util/Set;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    iput-object p2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    iput p3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    iget v2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->lambda$read$0$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Ljava/util/Set;I)V

    return-void
.end method
