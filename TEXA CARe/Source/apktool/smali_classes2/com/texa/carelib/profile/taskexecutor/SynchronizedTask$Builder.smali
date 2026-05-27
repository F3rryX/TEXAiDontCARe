.class public Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;
.super Ljava/lang/Object;
.source "SynchronizedTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCommand:Ljava/lang/Runnable;

.field private final mName:Ljava/lang/String;

.field private mPriority:I

.field private mTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mName:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mCommand:Ljava/lang/Runnable;

    const/16 p1, 0x32

    .line 131
    iput p1, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mPriority:I

    const p1, 0xdbba0

    .line 132
    iput p1, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mTimeout:I

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;
    .locals 5

    .line 171
    new-instance v0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    iget-object v1, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mCommand:Ljava/lang/Runnable;

    iget v3, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mPriority:I

    iget v4, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mTimeout:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;II)V

    return-object v0
.end method

.method public setPriority(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 149
    iput p1, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mPriority:I

    return-object p0

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priority must be in the range 1 to 100."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeout(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;
    .locals 1

    if-ltz p1, :cond_0

    .line 166
    iput p1, p0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->mTimeout:I

    return-object p0

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "timeout cannot be less than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
