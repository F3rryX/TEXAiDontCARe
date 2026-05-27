.class public Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;
.super Ljava/lang/Object;
.source "TimeoutCallbackHandler.java"

# interfaces
.implements Lcom/texa/carelib/utils/TimeoutCallback;


# instance fields
.field private mCancel:Z

.field private final mHandler:Landroid/os/Handler;

.field private mScheduledRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()Z
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mScheduledRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mScheduledRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mCancel:Z

    .line 62
    invoke-virtual {p0}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->reset()V

    .line 64
    iget-object v1, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mScheduledRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$set$0$com-texa-carelib-utils-internal-TimeoutCallbackHandler(Ljava/lang/Runnable;)V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mCancel:Z

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized set(Ljava/lang/Runnable;J)Z
    .locals 2

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mScheduledRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mCancel:Z

    .line 40
    iget-object v0, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p2

    .line 48
    iput-object p1, p0, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;->mScheduledRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return p2

    .line 37
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Callback already set!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
