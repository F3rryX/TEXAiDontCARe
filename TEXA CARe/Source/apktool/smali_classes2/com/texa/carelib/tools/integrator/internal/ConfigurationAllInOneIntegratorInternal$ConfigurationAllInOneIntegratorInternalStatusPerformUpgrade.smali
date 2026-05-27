.class Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;
.super Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;
.source "ConfigurationAllInOneIntegratorInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade"
.end annotation


# instance fields
.field private final mConfigurationFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationIntegrator:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

.field private final mConfigurationIntegratorListener:Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;

.field final synthetic this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 639
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;-><init>()V

    .line 670
    new-instance p1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;

    invoke-direct {p1, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade$1;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;)V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->mConfigurationIntegratorListener:Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;

    .line 640
    iput-object p2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->mConfigurationFileList:Ljava/util/List;

    .line 641
    new-instance p1, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-direct {p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->mConfigurationIntegrator:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    return-void
.end method


# virtual methods
.method public onEnter()V
    .locals 5

    .line 646
    invoke-super {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;->onEnter()V

    .line 647
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    sget-object v1, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Programming:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1400(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    .line 648
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$500(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 651
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Could not subscribe the diagnostic configuration. CARe serial number is not yet loaded."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v1

    instance-of v1, v1, Lcom/texa/carelib/profile/internal/SynchronizableModule;

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/internal/SynchronizableModule;

    invoke-interface {v1, v2}, Lcom/texa/carelib/profile/internal/SynchronizableModule;->setSynchronizable(Z)V

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->mConfigurationIntegrator:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v3}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->setConfigurationProcedure(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;)Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    .line 661
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->mConfigurationIntegrator:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v3}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1600(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->setServiceVehicleConfigurationProcedure(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;)Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    .line 662
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->mConfigurationIntegrator:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->mConfigurationIntegratorListener:Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;

    invoke-virtual {v1, v3}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->setListener(Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;)Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    .line 664
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->mConfigurationIntegrator:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->mConfigurationFileList:Ljava/util/List;

    invoke-virtual {v1, v0, v3}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->updateConfigurationAndUploadReports(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    sget-object v0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Could not upgrade configuration at this moment."

    invoke-static {v0, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v3}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$800(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/profile/Profile;

    move-result-object v3

    invoke-interface {v3}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/texa/carelib/tools/R$string;->error_care_configuration_already_in_progress:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    :cond_2
    return-void
.end method
