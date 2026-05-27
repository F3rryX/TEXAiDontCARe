.class public interface abstract Lcom/texa/carelib/webservices/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# virtual methods
.method public abstract beginProtectionSessionWithHWToken([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract getSessionID()Ljava/lang/String;
.end method

.method public abstract setSessionID(Ljava/lang/String;)V
.end method
