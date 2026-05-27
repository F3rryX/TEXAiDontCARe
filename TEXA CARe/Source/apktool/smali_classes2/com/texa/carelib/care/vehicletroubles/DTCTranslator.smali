.class public interface abstract Lcom/texa/carelib/care/vehicletroubles/DTCTranslator;
.super Ljava/lang/Object;
.source "DTCTranslator.java"


# virtual methods
.method public abstract translateDTCsForECU(Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
