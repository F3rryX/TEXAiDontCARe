.class public final synthetic Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda7;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda7;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    check-cast p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->lambda$updateSupportedParameters$5$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;)V

    return-void
.end method
