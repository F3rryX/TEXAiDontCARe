.class public final synthetic Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

    iput-object p2, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

    iget-object v1, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->lambda$set$0$com-texa-carelib-utils-internal-TimeoutCallbackHandler(Ljava/lang/Runnable;)V

    return-void
.end method
