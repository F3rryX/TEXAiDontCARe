.class Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;
.super Ljava/lang/Object;
.source "SerialDiagnosticConfiguration.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->onEnter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;)V
    .locals 0

    .line 1336
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileReceived(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;)V
    .locals 0

    return-void
.end method

.method public onFileReceivedProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;)V
    .locals 0

    return-void
.end method

.method public onFileSent(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;)V
    .locals 5

    .line 1339
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-static {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->access$1400(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onFileSent()"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1341
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-static {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->access$1400(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {v4}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$700(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$400(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Storing configuration %d/%d: FAILED"

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 1347
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-static {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->access$1400(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {v2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$700(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$400(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Storing configuration %d/%d: SUCCESS"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$700(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setConfigurationStored(I)Z

    .line 1350
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->moveToNextConfiguration()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1351
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-static {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->access$1500(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;)V

    goto :goto_0

    .line 1353
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-static {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->access$1600(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;)V

    :goto_0
    return-void
.end method

.method public onFileSentProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;)V
    .locals 4

    .line 1365
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-static {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->access$1400(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;->getProgress()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Sending file: %.02f"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1366
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration$1;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;

    invoke-virtual {v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendStoreConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$700(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;->getProgress()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setConfigurationStoreProgress(IF)Z

    return-void
.end method
