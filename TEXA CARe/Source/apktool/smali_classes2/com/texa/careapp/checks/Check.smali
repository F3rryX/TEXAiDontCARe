.class public interface abstract Lcom/texa/careapp/checks/Check;
.super Ljava/lang/Object;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/checks/Check$Result;
    }
.end annotation


# virtual methods
.method public abstract check()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation
.end method

.method public abstract checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract resolve()V
.end method
