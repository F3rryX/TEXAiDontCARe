.class public final synthetic Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;

    check-cast p1, Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus;->lambda$null$1$com-texa-carelib-tools-integrator-internal-ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusCheckDeviceConfigurationStatus(Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;)V

    return-void
.end method
