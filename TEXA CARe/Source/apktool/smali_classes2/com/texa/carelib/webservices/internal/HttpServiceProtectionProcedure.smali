.class Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;
.super Ljava/lang/Object;
.source "HttpServiceProtectionProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/ServiceProtectionProcedure;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;,
        Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRequest;,
        Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;
    }
.end annotation


# static fields
.field private static final KEY_HWTOKEN:Ljava/lang/String; = "HWToken"

.field private static final PATH:Ljava/lang/String; = "/api/sessions"

.field public static final TAG:Ljava/lang/String; = "HttpServiceProtectionProcedure"


# instance fields
.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/net/Proxy;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->getConnection(Ljava/net/Proxy;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;
    .locals 2

    .line 164
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 165
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 168
    const-class v1, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;

    .line 170
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->getVerificationKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->getVerificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->getVerificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Base64Helper;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->setVerificationKey(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;

    :cond_0
    return-object p0
.end method

.method private static getConnection(Ljava/net/Proxy;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 81
    :goto_0
    invoke-static {}, Lcom/texa/carelib/core/CareLibConfig;->getServiceConnectionTimeout()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 82
    invoke-static {}, Lcom/texa/carelib/core/CareLibConfig;->getServiceReadTimeout()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 87
    invoke-static {p3}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Authorization"

    invoke-virtual {p0, p3, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    invoke-static {p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "CARe-HWID"

    .line 91
    invoke-virtual {p0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 95
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-object p0
.end method

.method private getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 3

    .line 178
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_protection_fails:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    return-object p1
.end method

.method private openProtectionSession([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->setSessionID(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/webservices/internal/HttpTexaService;[BLjava/lang/String;Lcom/texa/carelib/core/Callback;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_beginProtectionSessionWithHWToken"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v7, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 152
    new-instance p1, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/core/Callback;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public beginProtectionSessionWithHWToken([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;",
            ">;)Z"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->openProtectionSession([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)V

    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Service is not authenticated!"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceAuthenticationProcedure()Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    move-result-object v2

    .line 112
    sget-object v3, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Pending:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->getStatus()Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    move-result-object v4

    if-ne v3, v4, :cond_1

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Service authentication is already pending... Waiting the end..."

    .line 113
    invoke-static {v0, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :try_start_0
    invoke-static {}, Lcom/texa/carelib/core/CareLibConfig;->getServiceAuthenticationTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->join(J)V

    const-string v2, "Service authentication procedure is ended."

    new-array v3, v1, [Ljava/lang/Object;

    .line 116
    invoke-static {v0, v2, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->openProtectionSession([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    sget-object p2, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "Could not wait Service authentication ends."

    invoke-static {p2, p1, v0, p3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Begin authentication procedure..."

    .line 124
    invoke-static {v0, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance v0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;[BLjava/lang/String;Lcom/texa/carelib/core/Callback;)V

    .line 135
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->authenticate(Lcom/texa/carelib/webservices/TexaServiceDelegate;Lcom/texa/carelib/core/Callback;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getService()Lcom/texa/carelib/webservices/internal/HttpTexaService;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-object v0
.end method

.method public synthetic lambda$beginProtectionSessionWithHWToken$0$com-texa-carelib-webservices-internal-HttpServiceProtectionProcedure([BLjava/lang/String;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;)V
    .locals 2

    .line 127
    invoke-virtual {p4}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    sget-object p4, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Authentication procedure has completed successfully."

    invoke-static {p4, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->openProtectionSession([BLjava/lang/String;Lcom/texa/carelib/core/Callback;)V

    goto :goto_0

    .line 131
    :cond_0
    new-instance p1, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;

    invoke-virtual {p4}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p2

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4, p4, p2}, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p3, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$openProtectionSession$1$com-texa-carelib-webservices-internal-HttpServiceProtectionProcedure(Lcom/texa/carelib/core/Callback;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 152
    new-instance p2, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;

    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {v0, p3}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0, p3}, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, p2}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method
