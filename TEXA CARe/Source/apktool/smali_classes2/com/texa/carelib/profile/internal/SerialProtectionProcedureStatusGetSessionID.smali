.class Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;
.super Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;
.source "SerialProtectionProcedureStatusGetSessionID.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialProtectionProcedureStatusGetSessionID"


# instance fields
.field private final mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    return-void
.end method

.method private filterMessage(Lcom/texa/carelib/communication/Message;)Z
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x4e

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private handleGetSessionIDCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 48
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string v0, "Could not retrieve the current session ID from device. Error=%s"

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "New sessionID has been stored in device successfully."

    invoke-static {v1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/GetSessionIDPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/texa/carelib/webservices/ServiceProxy;->setSessionID(Ljava/lang/String;)V

    .line 59
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 38
    invoke-direct {p0, p2}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->filterMessage(Lcom/texa/carelib/communication/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string v1, "onMessageReceived: %s Error:%s"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x4e

    .line 40
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;->handleGetSessionIDCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method
