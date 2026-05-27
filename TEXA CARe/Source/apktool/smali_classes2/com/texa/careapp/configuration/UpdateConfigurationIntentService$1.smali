.class Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;
.super Ljava/lang/Object;
.source "UpdateConfigurationIntentService.java"

# interfaces
.implements Lcom/texa/carelib/tools/integrator/ConfigurationIntegratorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->beginCAReConfiguration(Ljava/lang/String;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConfigurationProgress:I

.field final synthetic this$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

.field final synthetic val$configuration_files:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Ljava/util/List;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->this$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    iput-object p2, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->val$configuration_files:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 174
    iput p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->mConfigurationProgress:I

    return-void
.end method


# virtual methods
.method public onConfigurationProcedureCompleted(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;)V
    .locals 3

    .line 178
    invoke-static {}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finish configuration procedure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->this$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    iget-object v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->val$configuration_files:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->deleteDownloadedResources(Ljava/util/List;)Z

    .line 182
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    if-nez p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->this$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    iget-object p1, p1, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->mLoggerManager:Lcom/texa/careapp/remotelogger/LoggerManager;

    sget-object v0, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->UNDEFINED:Lcom/texa/careapp/model/ServerLogModel$LogEvent;

    sget-object v1, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->SUCCESSFULL:Lcom/texa/careapp/model/ServerLogModel$ResultForLog;

    sget-object v2, Lcom/texa/careapp/model/ServerLogModel$LogNote;->CARE_CONFIGURATION_LOADED:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/careapp/remotelogger/LoggerManager;->log(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)Lcom/texa/careapp/model/ServerLogModel;

    .line 188
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->this$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    invoke-static {p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->access$100(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->this$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    invoke-static {v0, p1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->access$200(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public onConfigurationProcedureProgressChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;)V
    .locals 2

    .line 196
    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->getProgress()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->mConfigurationProgress:I

    .line 198
    invoke-static {}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Configuration procedure in progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->mConfigurationProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->this$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    iget v0, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->mConfigurationProgress:I

    const v1, 0x7f1108df

    invoke-static {p1, v1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->access$300(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;II)V

    return-void
.end method

.method public onConfigurationProcedureStatusChanged(Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;)V
    .locals 3

    .line 204
    invoke-static {}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuration procedure status is changed -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;->getStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$2;->$SwitchMap$com$texa$carelib$care$diagnosticconfiguration$DiagnosticConfigurationStatus:[I

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

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->this$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    const v0, 0x7f1108df

    iget v1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->mConfigurationProgress:I

    invoke-static {p1, v0, v1}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->access$300(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;II)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService$1;->this$0:Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;

    const v0, 0x7f1108e0

    invoke-static {p1, v0}, Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;->access$400(Lcom/texa/careapp/configuration/UpdateConfigurationIntentService;I)V

    :goto_0
    return-void
.end method
