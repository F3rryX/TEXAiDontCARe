.class Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;
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
    name = "MainThreadScheduler2"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mUIThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->mUIThread:Ljava/lang/Thread;

    return-void
.end method

.method private initHandler()Landroid/os/Handler;
    .locals 2

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private isUIThread()Z
    .locals 2

    .line 112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->mUIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->initHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->mHandler:Landroid/os/Handler;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 96
    invoke-direct {p0}, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 97
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->initHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->mHandler:Landroid/os/Handler;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
