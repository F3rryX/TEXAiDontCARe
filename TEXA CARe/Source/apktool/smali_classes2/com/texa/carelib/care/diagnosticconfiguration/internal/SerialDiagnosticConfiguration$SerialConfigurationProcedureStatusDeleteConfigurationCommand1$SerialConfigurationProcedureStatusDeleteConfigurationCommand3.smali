.class Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1$SerialConfigurationProcedureStatusDeleteConfigurationCommand3;
.super Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;
.source "SerialDiagnosticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerialConfigurationProcedureStatusDeleteConfigurationCommand3"
.end annotation


# instance fields
.field public final _TAG:Ljava/lang/String;

.field private final mCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;",
            ">;)V"
        }
    .end annotation

    .line 959
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;-><init>(Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;)V

    .line 955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1$SerialConfigurationProcedureStatusDeleteConfigurationCommand3;->_TAG:Ljava/lang/String;

    .line 960
    iput-object p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1$SerialConfigurationProcedureStatusDeleteConfigurationCommand3;->mCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method private isValidMessage(Lcom/texa/carelib/communication/Message;)Z
    .locals 1

    .line 970
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onEnter()V
    .locals 5

    .line 965
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1$SerialConfigurationProcedureStatusDeleteConfigurationCommand3;->_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onBegin()"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    invoke-virtual {p0}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1$SerialConfigurationProcedureStatusDeleteConfigurationCommand3;->getSerialProfileProxy()Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    move-result-object v0

    new-instance v2, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v2}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [B

    aput-byte v3, v4, v1

    invoke-virtual {v2, v4}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 982
    invoke-super {p0, p1, p2, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialDiagnosticConfigurationStatus;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    .line 984
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1$SerialConfigurationProcedureStatusDeleteConfigurationCommand3;->isValidMessage(Lcom/texa/carelib/communication/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 985
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1$SerialConfigurationProcedureStatusDeleteConfigurationCommand3;->_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Received command: %s"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x10

    .line 986
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 987
    iget-object p1, p0, Lcom/texa/carelib/care/diagnosticconfiguration/internal/SerialDiagnosticConfiguration$SerialConfigurationProcedureStatusDeleteConfigurationCommand1$SerialConfigurationProcedureStatusDeleteConfigurationCommand3;->mCallback:Lcom/texa/carelib/core/Callback;

    if-eqz p1, :cond_0

    .line 988
    new-instance p2, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;

    invoke-direct {p2, p0, p3}, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationErasedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, p2}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
