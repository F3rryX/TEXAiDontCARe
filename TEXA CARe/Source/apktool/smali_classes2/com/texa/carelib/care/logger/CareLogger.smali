.class public interface abstract Lcom/texa/carelib/care/logger/CareLogger;
.super Ljava/lang/Object;
.source "CareLogger.java"


# virtual methods
.method public abstract beginLogUpdate(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract endLogUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
