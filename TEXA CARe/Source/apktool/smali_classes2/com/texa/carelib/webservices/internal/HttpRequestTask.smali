.class Lcom/texa/carelib/webservices/internal/HttpRequestTask;
.super Ljava/lang/Object;
.source "HttpRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "HttpRequestTask"


# instance fields
.field private final mAuthenticationLock:Ljava/lang/Object;

.field private mError:Lcom/texa/carelib/core/CareError;

.field private final mHostInfo:Lcom/texa/carelib/webservices/HostInfo;

.field private final mProtectionLock:Ljava/lang/Object;

.field private final mRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

.field private mSkipNotify:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mProtectionLock:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    .line 46
    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mHostInfo:Lcom/texa/carelib/webservices/HostInfo;

    .line 47
    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mSkipNotify:Z

    return-void
.end method

.method private authenticate()V
    .locals 7

    .line 351
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v1, "Begin authentication procedure"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceAuthenticationProcedure()Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    move-result-object v0

    .line 354
    new-instance v1, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/webservices/internal/HttpRequestTask;)V

    .line 377
    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->authenticate(Lcom/texa/carelib/webservices/TexaServiceDelegate;Lcom/texa/carelib/core/Callback;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :try_start_1
    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    const-wide/32 v5, 0xea60

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 381
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 383
    sget-object v4, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v5, "Wait has failed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v0, v3, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_socket_timeout:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 387
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v0, v3, v1}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_authentication_could_not_authenticate_at_this_moment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method private isSessionError(Lcom/texa/carelib/webservices/internal/HttpApiError;)Z
    .locals 3

    if-eqz p1, :cond_3

    .line 323
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KO_DEVICE-STATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 328
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KO_SESSION-NOT_FOUND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 333
    :cond_1
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KO_SESSION-EXPIRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 338
    :cond_2
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KO_INPUT-SID_MISSING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    iget-boolean v2, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mSkipNotify:Z

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mError:Lcom/texa/carelib/core/CareError;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->onRequestCompleted(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;ZLjava/lang/String;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private openSession()V
    .locals 6

    .line 395
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v1, "Begin protection procedure"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    new-instance v1, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/webservices/internal/HttpRequestTask;)V

    .line 417
    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getCareProxy()Lcom/texa/carelib/care/profile/CareProxy;

    move-result-object v3

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 420
    invoke-interface {v3, v1}, Lcom/texa/carelib/care/profile/CareProxy;->beginProtectionSession(Lcom/texa/carelib/core/Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "CARe protection  procedure is starting..."

    new-array v3, v2, [Ljava/lang/Object;

    .line 422
    invoke-static {v0, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mProtectionLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 426
    :try_start_1
    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mProtectionLock:Ljava/lang/Object;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 427
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "CARe protection  procedure ended."

    new-array v2, v2, [Ljava/lang/Object;

    .line 431
    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 427
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 429
    :try_start_4
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v3, "Wait for session protection fails"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v0, "CARe protection  procedure ended."

    new-array v2, v2, [Ljava/lang/Object;

    .line 431
    invoke-static {v1, v0, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :goto_0
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v3, "CARe protection  procedure ended."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    const-string v1, "Could not create the protection session."

    new-array v2, v2, [Ljava/lang/Object;

    .line 434
    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v0, v5, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_protection_could_not_open_protection_session_at_this_moment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    :cond_1
    const-string v1, "CareProxy not set."

    new-array v2, v2, [Ljava/lang/Object;

    .line 438
    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v0, v5, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_care_proxy_not_set:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    :goto_1
    return-void
.end method

.method private performRequest(Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V
    .locals 13

    const-string v0, "An exception is occurred"

    const-string v1, ""

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 203
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->proceed(Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/net/URLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    const/16 v5, 0x12

    const/4 v6, 0x1

    .line 215
    :try_start_1
    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getResponseCode(Ljava/net/URLConnection;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 216
    :try_start_2
    invoke-static {p1, v7}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getResponseMessage(Ljava/net/URLConnection;I)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 218
    :try_start_3
    sget-object v9, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v10, "Response code=%d"

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v9, v10, v11}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v10, "Response message=%s"

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v8, v11, v4

    .line 219
    invoke-static {v9, v10, v11}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    goto :goto_0

    :catch_1
    move-exception v9

    move-object v8, v1

    goto :goto_0

    :catch_2
    move-exception v9

    move-object v8, v1

    const/4 v7, 0x0

    .line 227
    :goto_0
    sget-object v10, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v11, v4, [Ljava/lang/Object;

    const-string v12, "Could not retrieve responseStatus."

    invoke-static {v10, v9, v12, v11}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v9, -0x1

    .line 233
    :try_start_4
    invoke-static {v7}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->isSuccessResponseCode(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 234
    invoke-static {v7}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->hasResponseBody(I)Z

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz p2, :cond_0

    .line 237
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 240
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StreamUtils;->getASCIIContentFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 242
    :try_start_6
    sget-object p2, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v5, "Response content:\n%s"

    new-array v10, v6, [Ljava/lang/Object;

    aput-object p1, v10, v4

    invoke-static {p2, v5, v10}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    goto :goto_2

    :catch_4
    move-exception p2

    move-object p1, v1

    .line 244
    :goto_2
    :try_start_7
    sget-object v5, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v10, "Could not read response content."

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v5, p2, v10, v11}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_3

    :cond_0
    move-object p1, v1

    .line 249
    :goto_3
    :try_start_8
    invoke-virtual {p0, v3}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    .line 250
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    .line 252
    :try_start_9
    sget-object p2, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p2, v2, v9}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v5}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lcom/texa/carelib/webservices/R$string;->error_service_http_error:I

    new-array v11, v2, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v4

    aput-object v8, v11, v6

    invoke-virtual {v5, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    :goto_4
    return-void

    :cond_1
    const/16 v10, 0x194

    if-ne v7, v10, :cond_2

    .line 259
    sget-object v10, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v11, "URL is not reachable."

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    new-instance v10, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v10, v2, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v5}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v11, Lcom/texa/carelib/webservices/R$string;->error_service_http_socket_connection_fails:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    .line 262
    invoke-direct {p0, v3}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V

    .line 265
    :cond_2
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getLastHttpResponseStatus()I

    move-result v5

    if-eq v5, v7, :cond_3

    const/4 v5, 0x1

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    .line 266
    :goto_5
    invoke-virtual {p2, v7}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->setLastHttpResponseStatus(I)Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    .line 269
    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getErrorBody(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object p2

    .line 270
    sget-object v10, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v11, "Error body:\n%s"

    new-array v12, v6, [Ljava/lang/Object;

    aput-object p2, v12, v4

    invoke-static {v10, v11, v12}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    invoke-static {p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 273
    invoke-static {p2}, Lcom/texa/carelib/webservices/internal/HttpApiError;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpApiError;

    move-result-object p2

    goto :goto_6

    :cond_4
    move-object p2, v3

    :goto_6
    if-eqz v5, :cond_6

    const/16 v5, 0x191

    if-ne v5, v7, :cond_5

    .line 277
    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v5}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v5}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->useDirectAuthentication()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 280
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->authenticate()V

    .line 282
    invoke-direct {p0, v3}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 v5, 0x190

    if-ne v5, v7, :cond_6

    .line 286
    invoke-direct {p0, p2}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->isSessionError(Lcom/texa/carelib/webservices/internal/HttpApiError;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 288
    invoke-direct {p0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->openSession()V

    .line 289
    invoke-direct {p0, v3}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    .line 296
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-eqz p2, :cond_8

    .line 297
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getDetails()Ljava/util/Map;

    move-result-object v5

    goto :goto_7

    :cond_8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 299
    :goto_7
    invoke-static {p1, p2}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getError(Ljava/net/URLConnection;Lcom/texa/carelib/webservices/internal/HttpApiError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    .line 301
    iget-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v10, Lcom/texa/carelib/webservices/R$string;->error_service_http_error_with_api_error_info:I

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v4

    aput-object v8, v11, v6

    aput-object v1, v11, v2

    const/4 v1, 0x3

    aput-object v5, v11, v1

    invoke-virtual {p2, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    .line 304
    sget-object p2, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p2, v2, v9}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    .line 308
    :goto_8
    invoke-direct {p0, v3}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V

    return-void

    :catch_7
    move-exception p1

    .line 221
    sget-object p2, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SocketTimeoutException."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {p2, v2, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/texa/carelib/webservices/R$string;->error_service_socket_timeout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    .line 224
    invoke-direct {p0, v3}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V

    return-void

    :catch_8
    move-exception p1

    .line 205
    sget-object p2, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Could not open the connection."

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance p2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v0, 0x15

    invoke-direct {p2, v2, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/texa/carelib/webservices/R$string;->error_service_http_socket_connection_fails:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    .line 207
    invoke-direct {p0, v3}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method private prepareSecurityForAPI(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Lcom/texa/carelib/core/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/internal/HttpAPIRequest;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceAuthenticationProcedure()Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->useDirectAuthentication()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->isAuthenticated()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 93
    sget-object v1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "TexaService is not yet authenticated."

    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Begin authentication procedure."

    .line 94
    invoke-static {v1, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v2, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda4;-><init>(Lcom/texa/carelib/webservices/internal/HttpRequestTask;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Lcom/texa/carelib/core/Callback;)V

    .line 108
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->authenticate(Lcom/texa/carelib/webservices/TexaServiceDelegate;Lcom/texa/carelib/core/Callback;)Z

    move-result p1

    if-nez p1, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "Could not authenticate. Authentication procedure is not yet available.(authenticate() method returns false)."

    .line 111
    invoke-static {v1, v0, p1}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 114
    new-instance p1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_authentication_could_not_authenticate_at_this_moment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p2, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_2

    .line 118
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->protectionBlock(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Lcom/texa/carelib/core/Callback;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private proceed(Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/net/URLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getConnection(Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/net/URLConnection;

    move-result-object p1

    .line 181
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "Calling request %s(method=%s,ID=%s)"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p1}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 184
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getHttpMethod()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->getID()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Writing request body for %s[method=%s,ID=%s]"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1, p2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getRequestBody(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v4

    const-string v2, "Request body:\n%s"

    .line 187
    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 190
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 192
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    return-object p1
.end method

.method private protectionBlock(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/internal/HttpAPIRequest;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpAPIRequest;->isSessionProtected()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 124
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WebAPI is not session protected."

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 126
    new-instance p1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p2, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getSessionID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 132
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TexaService session is already opened."

    invoke-static {p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 134
    new-instance p1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p2, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getCareProxy()Lcom/texa/carelib/care/profile/CareProxy;

    move-result-object p1

    if-nez p1, :cond_5

    .line 140
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "CareProxy is not set! Could not open the protection session!"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    .line 143
    new-instance p1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_care_proxy_not_set:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p2, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 149
    :cond_5
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Opening new protection session..."

    invoke-static {p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda3;-><init>(Lcom/texa/carelib/webservices/internal/HttpRequestTask;Lcom/texa/carelib/core/Callback;)V

    .line 167
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getCareProxy()Lcom/texa/carelib/care/profile/CareProxy;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/texa/carelib/care/profile/CareProxy;->beginProtectionSession(Lcom/texa/carelib/core/Callback;)Z

    move-result v0

    if-nez v0, :cond_6

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Couldn\'t begin CARe protection session. beginProtectionSession() returns false."

    .line 168
    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    .line 171
    new-instance p1, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_protection_could_not_open_protection_session_at_this_moment:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p2, p1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public synthetic lambda$authenticate$3$com-texa-carelib-webservices-internal-HttpRequestTask(Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;)V
    .locals 5

    .line 355
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 357
    :try_start_0
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v0, "ServiceAuthenticationProcedure procedure completed successfully"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->repeatRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V

    .line 359
    iput-boolean v2, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mSkipNotify:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 362
    :try_start_1
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 363
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 361
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_2
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 363
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 366
    :cond_0
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v3, "ServiceAuthenticationProcedure procedure fails. Error=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :try_start_4
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 370
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 371
    :try_start_5
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 372
    monitor-exit p1

    :goto_0
    return-void

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_4
    move-exception p1

    .line 370
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_6
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mAuthenticationLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 372
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw p1

    :catchall_5
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public synthetic lambda$openSession$4$com-texa-carelib-webservices-internal-HttpRequestTask(Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;)V
    .locals 5

    .line 398
    invoke-virtual {p1}, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 402
    :try_start_0
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v2, "CARe protection  procedure completed successfully"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->repeatRequest(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V

    .line 404
    iput-boolean v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mSkipNotify:Z

    goto :goto_0

    .line 406
    :cond_0
    sget-object v2, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const-string v3, "CARe protection  procedure completed with error: %s."

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    new-instance v2, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/texa/carelib/webservices/R$string;->error_service_protection_fails:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    .line 408
    iput-boolean v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mSkipNotify:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mProtectionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 412
    :try_start_1
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mProtectionLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 413
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 411
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mProtectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_2
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mProtectionLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 413
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public synthetic lambda$prepareSecurityForAPI$1$com-texa-carelib-webservices-internal-HttpRequestTask(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;)V
    .locals 3

    .line 97
    invoke-virtual {p3}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    sget-object p3, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Authentication is granted."

    invoke-static {p3, v2, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Checking for session status."

    .line 99
    invoke-static {p3, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->protectionBlock(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Lcom/texa/carelib/core/Callback;)V

    goto :goto_0

    .line 102
    :cond_0
    sget-object p1, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Authentication is failed."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 104
    invoke-interface {p2, p3}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$protectionBlock$2$com-texa-carelib-webservices-internal-HttpRequestTask(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;)V
    .locals 3

    .line 152
    invoke-virtual {p2}, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    .line 156
    new-instance p2, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, p2}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_0
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "CARe protection  procedure completed with error: %s."

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 162
    new-instance v0, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;

    invoke-direct {v0, p0, p2}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$run$0$com-texa-carelib-webservices-internal-HttpRequestTask(Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mHostInfo:Lcom/texa/carelib/webservices/HostInfo;

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->performRequest(Lcom/texa/carelib/webservices/HostInfo;Lcom/texa/carelib/webservices/internal/HttpAPIRequest;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    const/4 p1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mHostInfo:Lcom/texa/carelib/webservices/HostInfo;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v3, 0x19

    invoke-direct {v0, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/texa/carelib/webservices/R$string;->error_service_delegate_not_set:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    .line 55
    invoke-direct {p0, v1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Internet connection is not available"

    invoke-static {v0, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v3, 0x1a

    invoke-direct {v0, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/texa/carelib/webservices/R$string;->error_internet_connection_not_available:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->setError(Lcom/texa/carelib/core/CareError;)V

    .line 63
    invoke-direct {p0, v1}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->onPostExecute(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_1
    new-instance v0, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/webservices/internal/HttpRequestTask;)V

    .line 76
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mRequest:Lcom/texa/carelib/webservices/internal/HttpAPIRequest;

    invoke-direct {p0, v1, v0}, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->prepareSecurityForAPI(Lcom/texa/carelib/webservices/internal/HttpAPIRequest;Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

.method public setError(Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpRequestTask;->mError:Lcom/texa/carelib/core/CareError;

    return-void
.end method
