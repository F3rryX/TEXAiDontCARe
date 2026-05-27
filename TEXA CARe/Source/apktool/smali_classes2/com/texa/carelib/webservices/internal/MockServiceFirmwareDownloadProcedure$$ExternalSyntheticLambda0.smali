.class public final synthetic Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;

.field public final synthetic f$1:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field public final synthetic f$2:Lcom/texa/carelib/webservices/FirmwareType;

.field public final synthetic f$3:Lcom/texa/carelib/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/core/utils/FirmwareVersion;

    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;->f$2:Lcom/texa/carelib/webservices/FirmwareType;

    iput-object p4, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;->f$3:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;->f$1:Lcom/texa/carelib/core/utils/FirmwareVersion;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;->f$2:Lcom/texa/carelib/webservices/FirmwareType;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure$$ExternalSyntheticLambda0;->f$3:Lcom/texa/carelib/core/Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/texa/carelib/webservices/internal/MockServiceFirmwareDownloadProcedure;->lambda$downloadFirmware$0$com-texa-carelib-webservices-internal-MockServiceFirmwareDownloadProcedure(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/webservices/FirmwareType;Lcom/texa/carelib/core/Callback;)V

    return-void
.end method
