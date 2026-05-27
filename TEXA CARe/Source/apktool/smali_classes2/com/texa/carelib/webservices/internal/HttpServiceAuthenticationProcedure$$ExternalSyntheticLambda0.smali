.class public final synthetic Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

.field public final synthetic f$1:Lcom/texa/carelib/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/core/Callback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->lambda$authenticate$0$com-texa-carelib-webservices-internal-HttpServiceAuthenticationProcedure(Lcom/texa/carelib/core/Callback;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
