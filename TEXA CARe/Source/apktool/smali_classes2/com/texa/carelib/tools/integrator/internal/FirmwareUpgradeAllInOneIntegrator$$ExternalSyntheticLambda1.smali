.class public final synthetic Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

.field public final synthetic f$1:Lcom/texa/carelib/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/core/Callback;

    check-cast p1, Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->lambda$upgradeFirmware$1$com-texa-carelib-tools-integrator-internal-FirmwareUpgradeAllInOneIntegrator(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/webservices/ServiceFirmwareDownloadCompletedEvent;)V

    return-void
.end method
