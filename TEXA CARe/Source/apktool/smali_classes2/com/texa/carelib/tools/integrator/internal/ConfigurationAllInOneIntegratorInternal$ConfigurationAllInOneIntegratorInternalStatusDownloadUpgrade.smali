.class Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;
.super Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;
.source "ConfigurationAllInOneIntegratorInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;


# direct methods
.method public static synthetic $r8$lambda$DgxImMCZfiPrtoA2ixx4_QhRJNU(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->onConfigurationDownloadCompleted(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;)V

    return-void
.end method

.method private constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-direct {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$1;)V
    .locals 0

    .line 600
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)V

    return-void
.end method

.method private onConfigurationDownloadCompleted(Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;)V
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1102(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    .line 619
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$900(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    .line 621
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 624
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-virtual {p1, v1, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->getConfigurationFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    new-instance v1, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationDownloadedEvent;->getConfigurationFiles()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusPerformUpgrade;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1200(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onEnter()V
    .locals 6

    .line 603
    invoke-super {p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternalStatus;->onEnter()V

    .line 605
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    sget-object v1, Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;->Downloading:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$300(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$1600(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    .line 609
    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$500(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    .line 610
    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$600(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    .line 611
    invoke-static {v3}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->access$700(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;)Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;)V

    .line 608
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;->downloadConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 613
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal$ConfigurationAllInOneIntegratorInternalStatusDownloadUpgrade;->this$0:Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;

    const/4 v2, 0x0

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/texa/carelib/tools/integrator/internal/ConfigurationAllInOneIntegratorInternal;->terminate(ZLcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method
