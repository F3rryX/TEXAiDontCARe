.class Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;
.super Ljava/lang/Object;
.source "TaskSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskRequestQueue"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mTaskQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mLock:Ljava/lang/Object;

    .line 150
    monitor-enter v0

    .line 151
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mTaskQueue:Ljava/util/List;

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mTaskQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 163
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mTaskQueue:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 164
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mTaskQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 174
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public poll()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mTaskQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mTaskQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    .line 188
    iget-object v3, p0, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer$TaskRequestQueue;->mTaskQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 190
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
