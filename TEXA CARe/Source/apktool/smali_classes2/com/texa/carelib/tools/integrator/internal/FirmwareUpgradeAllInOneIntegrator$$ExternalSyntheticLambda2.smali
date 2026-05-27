.class public final synthetic Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

.field public final synthetic f$1:Lcom/texa/carelib/core/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;Lcom/texa/carelib/core/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda2;->f$1:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator$$ExternalSyntheticLambda2;->f$1:Lcom/texa/carelib/core/Callback;

    invoke-virtual {v0, v1, p1, p2}, Lcom/texa/carelib/tools/integrator/internal/FirmwareUpgradeAllInOneIntegrator;->lambda$checkDeviceConfigurationStatus$0$com-texa-carelib-tools-integrator-internal-FirmwareUpgradeAllInOneIntegrator(Lcom/texa/carelib/core/Callback;Ljava/util/Observable;Ljava/lang/Object;)V

    return-void
.end method
