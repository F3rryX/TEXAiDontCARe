.class public final synthetic Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;

    check-cast p1, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;

    invoke-static {v0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->$r8$lambda$DgxImMCZfiPrtoA2ixx4_QhRJNU(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;)V

    return-void
.end method
