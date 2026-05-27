.class public interface abstract Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedure;
.super Ljava/lang/Object;
.source "ServiceFirmwareDownloadProcedure.java"


# virtual methods
.method public abstract downloadFirmware(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/utils/FirmwareVersion;Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/FirmwareType;",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;
.end method
