.class public final synthetic Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/webservices/internal/HttpRequestTask;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/webservices/internal/HttpRequestTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/webservices/internal/HttpRequestTask;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/webservices/internal/HttpRequestTask;

    check-cast p1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->lambda$authenticate$3$com-texa-carelib-webservices-internal-HttpRequestTask(Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;)V

    return-void
.end method
