.class Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;
.super Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;
.source "SerialProtectionProcedureStatusValidateSessionWithToken.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field public static final TAG:Ljava/lang/String; = "SerialProtectionProcedureStatusValidateSessionWithToken"


# instance fields
.field private final mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

.field private final mSessionID:Ljava/lang/String;

.field private final mVerificationToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    .line 39
    iput-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mVerificationToken:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mSessionID:Ljava/lang/String;

    return-void
.end method

.method private filterMessage(Lcom/texa/carelib/communication/Message;)Z
    .locals 1

    .line 90
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x48

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private handleCheckSessionKeyCommand(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 113
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SessionID seems to be not valid."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    .line 118
    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_protection_procedure_command_check_session_id_fails:I

    .line 119
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    .line 115
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->terminate(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-direct {v0, v1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusGetSessionID;-><init>(Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;)V

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->setStatus(Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatus;)V

    :goto_0
    return-void
.end method

.method private validateSessionWithToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-array v2, v0, [B

    .line 63
    sget-object v3, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const-string v5, "Validating[sessionID=%s,verification_token=%s]"

    invoke-static {v3, v5, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "ISO-8859-1"

    if-eqz p2, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_2

    .line 72
    :goto_1
    sget-object p2, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->TAG:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Encoding not supported"

    invoke-static {p2, p1, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    const/16 p1, 0x34

    new-array p1, p1, [B

    .line 81
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 83
    array-length p2, v1

    const/16 v3, 0x10

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    array-length p2, v2

    const/16 v1, 0x24

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, v0, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mSerialProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mVerificationToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->mSessionID:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->validateSessionWithToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 95
    invoke-direct {p0, p2}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->filterMessage(Lcom/texa/carelib/communication/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->TAG:Ljava/lang/String;

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

    const/16 p1, 0x48

    .line 98
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 99
    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedureStatusValidateSessionWithToken;->handleCheckSessionKeyCommand(Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method
