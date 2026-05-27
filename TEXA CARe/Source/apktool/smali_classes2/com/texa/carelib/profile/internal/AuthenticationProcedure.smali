.class interface abstract Lcom/texa/carelib/profile/internal/AuthenticationProcedure;
.super Ljava/lang/Object;
.source "AuthenticationProcedure.java"


# virtual methods
.method public abstract beginAuthentication(Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
