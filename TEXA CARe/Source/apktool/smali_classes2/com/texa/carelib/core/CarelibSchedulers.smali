.class public final Lcom/texa/carelib/core/CarelibSchedulers;
.super Ljava/lang/Object;
.source "CarelibSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler3;,
        Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;,
        Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler;,
        Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;
    }
.end annotation


# static fields
.field private static _mainThread:Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;
    .locals 1

    .line 18
    sget-object v0, Lcom/texa/carelib/core/CarelibSchedulers;->_mainThread:Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;

    invoke-direct {v0}, Lcom/texa/carelib/core/CarelibSchedulers$MainThreadScheduler2;-><init>()V

    sput-object v0, Lcom/texa/carelib/core/CarelibSchedulers;->_mainThread:Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    .line 22
    :cond_0
    sget-object v0, Lcom/texa/carelib/core/CarelibSchedulers;->_mainThread:Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    return-object v0
.end method
