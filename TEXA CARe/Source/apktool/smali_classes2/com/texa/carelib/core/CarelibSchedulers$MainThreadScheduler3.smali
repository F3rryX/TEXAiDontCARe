.class Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler3;
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
    name = "MainThreadScheduler3"
.end annotation


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private final mUiThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler3;->mUiThread:Ljava/lang/Thread;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler3;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;)V
    .locals 2

    .line 127
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler3;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler3;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler3;->mMainHandler:Landroid/os/Handler;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
