.class Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;
.super Ljava/lang/Object;
.source "ConfigurationIntegrator.java"

# interfaces
.implements Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;


# direct methods
.method constructor <init>(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private terminate(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V
    .locals 4

    .line 215
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Terminating..."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Terminating with error: %s"

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->fireCareConfigurationCompleted(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDiagnosticConfigurationLoaded$0$com-texa-carelib-tools-integrator-ConfigurationIntegrator$1(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;Lcom/texa/carelib/webservices/ConfigurationReportStoredEvent;)V
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-static {v0}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$100(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$102(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;F)F

    .line 194
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    new-instance v1, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$200(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-static {v3}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$100(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;FFLcom/texa/carelib/core/CareError;)V

    invoke-virtual {v0, v1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->fireCareConfigurationProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V

    .line 195
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/ConfigurationReportStoredEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$002(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    .line 196
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->terminate(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V

    return-void
.end method

.method public onDiagnosticConfigurationLoaded(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V
    .locals 7

    .line 178
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getConfigurationReports()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "onCareConfigurationProcedureCompleted. Reports count: %d"

    invoke-static {v0, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$300()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "onCareConfigurationProcedureCompleted with error: %s"

    invoke-static {v0, v3, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$002(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    .line 185
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getConfigurationReports()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$400(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getConfigurationReports()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$500(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;Ljava/util/List;)V

    .line 189
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    if-nez v1, :cond_1

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$700(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;

    move-result-object v1

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-static {v3}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$600(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V

    invoke-interface {v1, v3, v0, v4}, Lcom/texa/carelib/webservices/ServiceVehicleConfigurationProcedure;->storeConfigurationReports(Ljava/lang/String;Ljava/util/List;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 199
    invoke-static {}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$300()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not upload the configuration reports at this moment."

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$200(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lcom/texa/carelib/tools/R$string;->error_care_configurator_upload_not_available:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;Landroid/content/Context;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->terminate(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V

    goto :goto_1

    .line 205
    :cond_1
    invoke-direct {p0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->terminate(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V

    :goto_1
    return-void
.end method

.method public onDiagnosticConfigurationProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V
    .locals 5

    .line 170
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$002(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    .line 171
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->getProgress()F

    move-result p1

    const v1, 0x3f733333    # 0.95f

    mul-float p1, p1, v1

    invoke-static {v0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$102(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;F)F

    .line 173
    iget-object p1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    new-instance v0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;

    iget-object v1, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-static {v1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$200(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-static {v2}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$100(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)F

    move-result v2

    iget-object v3, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-static {v3}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->access$000(Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;)Lcom/texa/carelib/core/CareError;

    move-result-object v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;FFLcom/texa/carelib/core/CareError;)V

    invoke-virtual {p1, v0}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->fireCareConfigurationProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V

    return-void
.end method

.method public onDiagnosticConfigurationStatusChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator$1;->this$0:Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/tools/integrator/ConfigurationIntegrator;->fireCareConfigurationStatusChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;)V

    return-void
.end method
