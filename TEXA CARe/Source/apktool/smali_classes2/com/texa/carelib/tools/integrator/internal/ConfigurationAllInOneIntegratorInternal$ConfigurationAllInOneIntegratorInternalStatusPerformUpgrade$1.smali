.class Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;
.super Ljava/lang/Object;
.source "ConfigurationAllInOneIntegratorInternal.java"

# interfaces
.implements Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;


# direct methods
.method constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onConfigurationProcedureCompleted$0(Lcom/texa/carelib/webservices/VehicleConfigurationInfoLoadedEvent;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onConfigurationProcedureCompleted(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V
    .locals 6

    .line 673
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v0, v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v0

    instance-of v0, v0, Lcom/texa/carelib/profile/internal/SynchronizableModule;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v0, v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/internal/SynchronizableModule;

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/SynchronizableModule;->setSynchronizable(Z)V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v0, v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1102(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    .line 678
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-nez v0, :cond_1

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v0, v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1000(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v2, v2, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$500(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v3, v3, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v3}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$600(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v4, v4, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v4}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1$$ExternalSyntheticLambda0;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationInfo;->loadVehicleConfigurationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v0, v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method public onConfigurationProcedureProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v0, v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1102(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    .line 692
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v0, v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v1, v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$900(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->getProgress()F

    move-result p1

    const v2, 0x3f733333    # 0.95f

    mul-float p1, p1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr p1, v2

    invoke-static {v0, v1, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    return-void
.end method

.method public onConfigurationProcedureStatusChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;)V
    .locals 2

    .line 697
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;->$SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;->getStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 703
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object p1, p1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    sget-object v0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->WaitForEngineOn:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v1, v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1400(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    goto :goto_0

    .line 699
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object p1, p1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    sget-object v0, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Programming:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;->this$1:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    iget-object v1, v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1400(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    :goto_0
    return-void
.end method
