.class Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;
.super Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;
.source "SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken"


# instance fields
.field private final mHWToken:[B

.field private final mSerialNumber:Ljava/lang/String;

.field private final mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;Ljava/lang/String;[B)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    .line 31
    iput-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialNumber:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mHWToken:[B

    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 38
    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;)V

    .line 49
    sget-object v1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Opening a new protection session with the WEBApi..."

    invoke-static {v1, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {v3}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {v3}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mHWToken:[B

    iget-object v5, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialNumber:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v0}, Lcom/texa/carelib/webservices/ServiceProxy;->beginProtectionSessionWithHWToken([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Could not open a new protection session with the WEBApi at this moment..."

    .line 55
    invoke-static {v1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x2

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_could_not_open_protection_session_with_hardware_token:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service proxy not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$init$0$com-texa-carelib-profile-internal-SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken(Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;)V
    .locals 4

    .line 39
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v1, "Could not open a new protection session with the WebAPI. Error: %s"

    invoke-static {p1, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A new protection session with the WEBApi has been established."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    new-instance v1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusBeginProtectionSessionWithHWToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;->getVerificationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;->getSessionID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;-><init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->setStatus(Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;)V

    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    return-void
.end method
