.class public final synthetic Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

.field public final synthetic f$1:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2;->f$1:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    iput p3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2;->f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2;->f$1:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    iget v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda2;->f$2:F

    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->lambda$setStateProgress$2$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    return-void
.end method
