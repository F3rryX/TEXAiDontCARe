.class Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;
.super Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;
.source "SerialDiagnosticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerialConfigurationProcedureStatusDeleteConfigurations"
.end annotation


# instance fields
.field public final _TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V
    .locals 1

    .line 795
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    .line 792
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->_TAG:Ljava/lang/String;

    return-void
.end method

.method private isValidMessage(Lcom/texa/carelib/communication/Message;)Z
    .locals 1

    .line 806
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onEnter()V
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onBegin()"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->getSerialProfileProxy()Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 818
    invoke-super {p0, p1, p2, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    .line 820
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->isValidMessage(Lcom/texa/carelib/communication/Message;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 821
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Received command: %s"

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x4a

    .line 823
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p2

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_0

    .line 825
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->_TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/texa/carelib/core/CareError;->getMessage()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    const-string p3, "An error is occurred: %s"

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 p3, 0x8

    invoke-direct {p2, v0, p3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/texa/carelib/diagnosticconfigurationdatabase/R$string;->error_care_configuration_clearing_configuration:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$400(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 831
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->_TAG:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "No configuration file provided. Procedure will terminate."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 832
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 836
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->_TAG:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Begin configuration..."

    invoke-static {p1, p3, p2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->moveToFirstConfiguration()Ljava/io/File;

    .line 839
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;

    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurations;->getSerialDiagnosticConfiguration()Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusSendCheckConfiguration;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->setCareConfigurationProcedureStatus(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;)Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    :cond_2
    return-void
.end method
