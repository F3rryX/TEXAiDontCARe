.class Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;
.super Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;
.source "SerialProtectionProcedureStatusBeginSession.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialProtectionProcedureStatusBeginSession"


# instance fields
.field private final mHardwareID:Ljava/lang/String;

.field private final mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->mHardwareID:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    return-void
.end method

.method private filterMessage(Lcom/texa/carelib/communication/Message;)Z
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x45

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private handleBeginSessionCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 60
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string v0, "Couldn\'t begin a new session. Error: %s"

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/parser/BeginSessionPacketParser$BeginSessionResponse;->getHardwareToken()[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 69
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Hardware token cannot be null."

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v0, 0x7

    invoke-direct {p2, v1, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/texa/carelib/profile/R$string;->error_protection_null_token:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 74
    :cond_1
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->mHardwareID:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;-><init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;Ljava/lang/String;[B)V

    invoke-virtual {p2, v0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->setStatus(Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    new-instance v1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 39
    invoke-direct {p0, p2}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->filterMessage(Lcom/texa/carelib/communication/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->TAG:Ljava/lang/String;

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

    const-string v1, "onMessageReceived: %s Error: %s"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x45

    .line 41
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 42
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginSession;->handleBeginSessionCommand(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method
