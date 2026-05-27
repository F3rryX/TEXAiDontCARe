.class Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;
.super Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;
.source "SerialDiagnosticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerialConfigurationProcedureStatusSendCheckConfiguration"
.end annotation


# instance fields
.field private final _TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V
    .locals 1

    .line 1016
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    .line 1013
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$800(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;)Ljava/lang/String;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->_TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onEnter()V
    .locals 13

    .line 1021
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onBegin()"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1023
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->getCurrentConfiguration()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1026
    iget-object v2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->_TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$700(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v4

    invoke-static {v4}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$400(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "Sending configuration [%1$d/%2$d]: %3$s"

    invoke-static {v2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->getSerialProfileProxy()Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    move-result-object v2

    invoke-interface {v2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->getSerialFileCarrier()Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    move-result-object v6

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x1

    sget-object v10, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;->Check:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;

    const/4 v11, 0x0

    new-instance v12, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration$1;

    invoke-direct {v12, p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration$1;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;)V

    invoke-virtual/range {v6 .. v12}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->sendFile(Landroid/content/Context;Ljava/io/InputStream;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;Ljava/lang/String;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1055
    :catch_0
    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not send configuration file at this moment."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v3, 0x8

    invoke-direct {v2, v5, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/texa/carelib/diagnosticconfigurationdatabase/R$string;->error_could_not_send_configuration:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    :goto_0
    return-void
.end method
