.class Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler;
.super Ljava/lang/Object;
.source "CarelibSchedulers.java"

# interfaces
.implements Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/core/CarelibSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainThreadScheduler"
.end annotation


# instance fields
.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mUIThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler;->mUIThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;)V
    .locals 3

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler;->mUIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 64
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void
.end method
