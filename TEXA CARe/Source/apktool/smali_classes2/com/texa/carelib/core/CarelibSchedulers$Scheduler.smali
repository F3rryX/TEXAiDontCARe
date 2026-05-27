.class public interface abstract Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;
.super Ljava/lang/Object;
.source "CarelibSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/core/CarelibSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Scheduler"
.end annotation


# virtual methods
.method public abstract schedule(Ljava/lang/Runnable;)V
.end method

.method public abstract schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
.end method
