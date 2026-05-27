.class public abstract Lcom/texa/carelib/webservices/internal/ServiceFirmwareDownloadProcedureBase;
.super Ljava/lang/Object;
.source "ServiceFirmwareDownloadProcedureBase.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedure;


# static fields
.field public static final TAG:Ljava/lang/String; = "ServiceFirmwareDownloadProcedureBase"


# instance fields
.field private mStatus:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;->Idle:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareDownloadProcedureBase;->mStatus:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    return-void
.end method


# virtual methods
.method protected fireDownloadFirmwareCompleted(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/FirmwareType;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 47
    sget-object p1, Lcom/texa/carelib/webservices/internal/ServiceFirmwareDownloadProcedureBase;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Callback cannot be null!!!"

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/webservices/FirmwareType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    .line 52
    invoke-interface {p2, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method protected fireDownloadFirmwareError(Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/FirmwareType;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/webservices/FirmwareType;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V

    .line 61
    invoke-interface {p2, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    .line 63
    invoke-interface {p2, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public getStatus()Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareDownloadProcedureBase;->mStatus:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    return-object v0
.end method

.method public setStatus(Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ServiceFirmwareDownloadProcedureBase;->mStatus:Lcom/texa/carelib/webservices/ServiceFirmwareDownloadProcedureStatus;

    return-void
.end method
