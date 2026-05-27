.class public final synthetic Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda6;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda6;->f$0:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    check-cast p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->lambda$createSubscribedObjectsPayloadComposer$3$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;)V

    return-void
.end method
