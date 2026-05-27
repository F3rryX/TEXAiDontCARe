.class public Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"

# interfaces
.implements Lcom/texa/carelib/profile/taskexecutor/CareExecutor;


# instance fields
.field private final mDaemon:Z

.field private final mThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mDaemon:Z

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mThreadList:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$execute$1(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 46
    sget-object p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Exception occurred."

    invoke-static {p0, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 46
    sget-object p1, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    iget-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mThreadList:Ljava/util/List;

    monitor-enter p1

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mThreadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public interruptAll()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mThreadList:Ljava/util/List;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mThreadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 58
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 62
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$execute$0$com-texa-carelib-profile-taskexecutor-internal-ThreadExecutor(Ljava/lang/Runnable;)V
    .locals 3

    .line 29
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 31
    iget-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mThreadList:Ljava/util/List;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mThreadList:Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 36
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mThreadList:Ljava/util/List;

    monitor-enter v0

    .line 37
    :try_start_3
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;->mThreadList:Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    throw p1

    :catchall_1
    move-exception p1

    .line 38
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
