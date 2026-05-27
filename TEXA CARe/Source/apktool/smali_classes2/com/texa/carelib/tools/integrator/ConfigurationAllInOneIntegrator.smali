.class public Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;
.super Ljava/lang/Object;
.source "ConfigurationAllInOneIntegrator.java"


# instance fields
.field private final mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;)V
    .locals 9

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v8, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;-><init>(Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;)V

    move-object v0, p0

    iput-object v8, v0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    return-void
.end method


# virtual methods
.method public beginDeviceProgramming(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->beginDeviceProgrammingInternal()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public checkDeviceConfigurationStatus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/OperationAlreadyRunningException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setSkipConfirmation(Z)V

    .line 83
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->checkDeviceConfigurationStatusInternal()V

    return-void
.end method

.method public getLastError()Lcom/texa/carelib/core/CareError;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getLastErrorInternal()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getProgress()F

    move-result v0

    return v0
.end method

.method public declared-synchronized getStatus()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;
    .locals 1

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->getStatusInternal()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConfigurationAllInOneIntegratorListener(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setConfigurationAllInOneIntegratorListener(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorListener;)V

    return-void
.end method

.method public setForcedVehicleID(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setForcedVehicleIDInternal(Ljava/lang/String;)V

    return-void
.end method

.method public upgradeIfNeeded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/OperationAlreadyRunningException;
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->AskConfirmation:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->getStatus()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, v2}, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->beginDeviceProgramming(Z)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->setSkipConfirmation(Z)V

    .line 116
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegrator;->mConfigurationAllInOneIntegratorInternal:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->checkDeviceConfigurationStatusInternal()V

    :goto_0
    return-void
.end method
