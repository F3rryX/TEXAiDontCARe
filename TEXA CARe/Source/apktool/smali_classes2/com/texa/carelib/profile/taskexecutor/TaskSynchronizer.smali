.class public Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;
.super Ljava/lang/Object;
.source "TaskSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskSynchronizer"

.field private static _Instance:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;


# instance fields
.field private final executor:Lcom/texa/carelib/profile/taskexecutor/CareExecutor;

.field private mActiveRunnable:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

.field private final mLock:Ljava/lang/Object;

.field private final mTaskRequestQueue:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;

.field private mTimeoutCallback:Lcom/texa/carelib/utils/TimeoutCallback;


# direct methods
.method public static synthetic $r8$lambda$B47woA40pU3GaNOb_Q41S1AgWmo(Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->onTaskTimeout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/texa/carelib/profile/taskexecutor/CareExecutor;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mLock:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executor:Lcom/texa/carelib/profile/taskexecutor/CareExecutor;

    .line 54
    new-instance p1, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Lcom/texa/carelib/utils/internal/TimeoutCallbackHandler;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mTimeoutCallback:Lcom/texa/carelib/utils/TimeoutCallback;

    .line 55
    new-instance p1, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;

    invoke-direct {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mTaskRequestQueue:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;

    return-void
.end method

.method public static createInstance(Lcom/texa/carelib/profile/taskexecutor/CareExecutor;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->_Instance:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    invoke-direct {v0, p0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;-><init>(Lcom/texa/carelib/profile/taskexecutor/CareExecutor;)V

    sput-object v0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->_Instance:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;
    .locals 2

    .line 40
    sget-object v0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->_Instance:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    if-eqz v0, :cond_0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instance not yet created. Call createInstance() before!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onTaskTimeout()V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mActiveRunnable:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 134
    sget-object v1, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->TAG:Ljava/lang/String;

    const-string v3, "Null task requires too much time for execution!!!!!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_0
    sget-object v3, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->TAG:Ljava/lang/String;

    const-string v4, "Task %s [TIMEOUT]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mActiveRunnable:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    .line 140
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {p0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    return-void

    :catchall_0
    move-exception v1

    .line 140
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear(Z)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mTaskRequestQueue:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->clear()V

    .line 65
    iget-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mTimeoutCallback:Lcom/texa/carelib/utils/TimeoutCallback;

    invoke-interface {p1}, Lcom/texa/carelib/utils/TimeoutCallback;->cancel()Z

    .line 67
    iget-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executor:Lcom/texa/carelib/profile/taskexecutor/CareExecutor;

    invoke-interface {p1}, Lcom/texa/carelib/profile/taskexecutor/CareExecutor;->interruptAll()V

    .line 68
    iget-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 69
    :try_start_0
    iput-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mActiveRunnable:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    .line 70
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public execute(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)V
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mActiveRunnable:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    sget-object v0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->TAG:Ljava/lang/String;

    const-string v4, "Enqueue task: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v4, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mTaskRequestQueue:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->add(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)Z

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mTimeoutCallback:Lcom/texa/carelib/utils/TimeoutCallback;

    invoke-interface {v0}, Lcom/texa/carelib/utils/TimeoutCallback;->cancel()Z

    .line 107
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mActiveRunnable:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 108
    sget-object v3, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->TAG:Ljava/lang/String;

    const-string v4, "Task: %s [END]"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mTaskRequestQueue:Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;

    invoke-virtual {v3}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->poll()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    move-result-object v3

    .line 113
    iput-object v3, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mActiveRunnable:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 117
    sget-object v0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->TAG:Ljava/lang/String;

    const-string v4, "Task: %s [BEGIN]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v0, v4, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executor:Lcom/texa/carelib/profile/taskexecutor/CareExecutor;

    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mActiveRunnable:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/taskexecutor/CareExecutor;->execute(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mTimeoutCallback:Lcom/texa/carelib/utils/TimeoutCallback;

    new-instance v1, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;)V

    iget-object v2, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->mActiveRunnable:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    invoke-virtual {v2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->getTimeout()I

    move-result v2

    int-to-long v4, v2

    invoke-interface {v0, v1, v4, v5}, Lcom/texa/carelib/utils/TimeoutCallback;->set(Ljava/lang/Runnable;J)Z

    :cond_1
    return-object v3

    :catchall_0
    move-exception v1

    .line 114
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
