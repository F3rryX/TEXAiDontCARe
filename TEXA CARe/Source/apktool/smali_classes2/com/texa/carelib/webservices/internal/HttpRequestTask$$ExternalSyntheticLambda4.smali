.class public final synthetic Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/webservices/internal/HttpRequestTask;

.field public final synthetic f$1:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

.field public final synthetic f$2:Lcom/texa/carelib/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/webservices/internal/HttpRequestTask;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/webservices/internal/HttpRequestTask;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda4;->f$1:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda4;->f$2:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda4;->f$0:Lcom/texa/carelib/webservices/internal/HttpRequestTask;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda4;->f$1:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda4;->f$2:Lcom/texa/carelib/core/Callback;

    check-cast p1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    invoke-virtual {v0, v1, v2, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->lambda$prepareSecurityForAPI$1$com-texa-carelib-webservices-internal-HttpRequestTask(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;)V

    return-void
.end method
