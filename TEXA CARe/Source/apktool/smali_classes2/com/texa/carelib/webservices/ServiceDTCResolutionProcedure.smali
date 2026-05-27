.class public interface abstract Lcom/texa/carelib/webservices/ServiceDTCResolutionProcedure;
.super Ljava/lang/Object;
.source "ServiceDTCResolutionProcedure.java"


# virtual methods
.method public abstract resolveDTCIDs(Ljava/util/Map;[Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;[",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
