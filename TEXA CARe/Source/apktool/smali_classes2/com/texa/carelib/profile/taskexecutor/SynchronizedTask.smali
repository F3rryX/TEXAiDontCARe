.class public Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;
.super Lcom/texa/carelib/core/ObservableObjectBase;
.source "SynchronizedTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/core/ObservableObjectBase;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0xdbba0

.field public static final MAX_PRIORITY:I = 0x64

.field public static final MIN_PRIORITY:I = 0x1

.field public static final NORM_PRIORITY:I = 0x32

.field public static final PROPERTY_STATUS:Ljava/lang/String; = "com.texa.carelib.profile.taskexecutor.SynchronizedTask#PROPERTY_STATUS"

.field public static final TAG:Ljava/lang/String; = "SynchronizedTask"


# instance fields
.field final mCommand:Ljava/lang/Runnable;

.field private final mName:Ljava/lang/String;

.field final mPriority:I

.field private mStatus:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;

.field private final mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field final mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;II)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/texa/carelib/core/ObservableObjectBase;-><init>()V

    .line 49
    new-instance v0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object v1, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->TAG:Ljava/lang/String;

    const-string v2, "mStatusLock"

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 52
    iput-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mCommand:Ljava/lang/Runnable;

    .line 54
    iput p3, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mPriority:I

    .line 55
    iput p4, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mTimeout:I

    .line 57
    sget-object p1, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;->InQueue:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;

    iput-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatus:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;

    return-void
.end method

.method private setStatus(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "setStatus"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatus:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;

    .line 99
    iput-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatus:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v2, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 105
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.profile.taskexecutor.SynchronizedTask#PROPERTY_STATUS"

    invoke-direct {v1, p0, v2, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void

    :catchall_0
    move-exception p1

    .line 102
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method


# virtual methods
.method public compareTo(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)I
    .locals 1

    .line 62
    iget v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mPriority:I

    iget p1, p1, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mPriority:I

    if-le v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->compareTo(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mPriority:I

    return v0
.end method

.method public getStatus()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "getEnumValue"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatus:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v2, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mStatusLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method public getTimeout()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mTimeout:I

    return v0
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 111
    :try_start_0
    sget-object v2, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;->Running:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;

    invoke-direct {p0, v2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->setStatus(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;)V

    .line 112
    iget-object v2, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mCommand:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 113
    sget-object v2, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->TAG:Ljava/lang/String;

    const-string v3, "Task %s has started successfully."

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mName:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 115
    :try_start_1
    sget-object v3, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->TAG:Ljava/lang/String;

    const-string v4, "Could not start the task: %s."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->mName:Ljava/lang/String;

    aput-object v5, v1, v0

    invoke-static {v3, v2, v4, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_0
    sget-object v0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;->Completed:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;

    invoke-direct {p0, v0}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->setStatus(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;)V

    return-void

    :goto_1
    sget-object v1, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;->Completed:Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;

    invoke-direct {p0, v1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;->setStatus(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTaskStatus;)V

    throw v0
.end method
