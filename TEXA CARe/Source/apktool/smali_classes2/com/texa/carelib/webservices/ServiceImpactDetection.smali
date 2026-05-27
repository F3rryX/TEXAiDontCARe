.class public interface abstract Lcom/texa/carelib/webservices/ServiceImpactDetection;
.super Ljava/lang/Object;
.source "ServiceImpactDetection.java"


# virtual methods
.method public abstract uploadCrashData(Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/CrashDataUploadedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
