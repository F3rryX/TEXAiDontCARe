.class public interface abstract Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;
.super Ljava/lang/Object;
.source "DiagnosisEngine.java"


# virtual methods
.method public abstract createSubscribedObjectsPayloadComposer(Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSubscriptionStateChanged(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V
.end method

.method public abstract read(ILjava/util/Set;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract subscribe(ILjava/lang/Long;Ljava/util/Set;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unsubscribe(ILjava/util/Set;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAvailableParameters(Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateECUs(Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSubscriptionCounters(Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSupportedParameters(Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;",
            ">;)V"
        }
    .end annotation
.end method
