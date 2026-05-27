.class public Lcom/texa/carelib/core/utils/ReentrantLockWrapper;
.super Ljava/lang/Object;
.source "ReentrantLockWrapper.java"


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "ReentrantLockWrapper"


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private mIsDisposed:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mClassName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mLockName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mIsDisposed:Z

    .line 26
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    iget-boolean v0, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mIsDisposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mIsDisposed:Z

    .line 34
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "finalize()"

    .line 35
    invoke-virtual {p0, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 39
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected isLock()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public lock(Ljava/lang/String;)Z
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p1, 0x1

    return p1
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1
.end method
