.class Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;
.super Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;
.source "SerialDiagnosticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SerialConfigurationProcedureStatusIdle"
.end annotation


# instance fields
.field public final _TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    .line 675
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;->_TAG:Ljava/lang/String;

    return-void
.end method

.method private isValidMessage(Lcom/texa/carelib/communication/Message;)Z
    .locals 1

    .line 689
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x49

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onEnter()V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onBegin()"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onExit()V
    .locals 0

    .line 685
    invoke-super {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onExit()V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 694
    invoke-super {p0, p1, p2, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    .line 696
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;->isValidMessage(Lcom/texa/carelib/communication/Message;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 697
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;->_TAG:Ljava/lang/String;

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Received command: %s"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x49

    .line 698
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 699
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusIdle;->this$0:Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;

    const/16 v0, 0x7e

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result p2

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->access$102(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_1
    return-void
.end method
