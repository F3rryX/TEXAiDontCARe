.class public final synthetic Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$$ExternalSyntheticLambda1;->f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->lambda$checkDeviceConfigurationStatusInternal$1$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal()V

    return-void
.end method
