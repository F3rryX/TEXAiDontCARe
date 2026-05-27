.class Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;
.super Ljava/lang/Object;
.source "HttpServiceProtectionProcedure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProtectionProcedureRunnable"
.end annotation


# instance fields
.field private final mCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mHWID:Ljava/lang/String;

.field private final mHWToken:[B

.field private final mTexaServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/webservices/internal/HttpTexaService;[BLjava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/internal/HttpTexaService;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mHWToken:[B

    .line 193
    iput-object p4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mHWID:Ljava/lang/String;

    .line 195
    invoke-virtual {p2}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getServiceDelegate()Lcom/texa/carelib/webservices/TexaServiceDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mTexaServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    .line 196
    iput-object p5, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method protected notifyCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method protected notifyError(Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2, p1}, Lcom/texa/carelib/webservices/events/BeginProtectionSessionCompletedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 13

    .line 202
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->isConnected()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Internet connection is not available"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    new-instance v2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v3, 0x1a

    invoke-direct {v2, v1, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/texa/carelib/webservices/R$string;->error_internet_connection_not_available:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->notifyError(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mTexaServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->getServiceHost(Lcom/texa/carelib/webservices/TexaServiceDelegate;)Lcom/texa/carelib/webservices/HostInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 213
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Service Host cannot be null!"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 218
    :cond_1
    :try_start_0
    new-instance v3, Lcom/texa/carelib/core/utils/internal/URLBuilder;

    .line 219
    invoke-virtual {v0}, Lcom/texa/carelib/webservices/HostInfo;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {v0}, Lcom/texa/carelib/webservices/HostInfo;->getHostName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "/api/sessions"

    invoke-direct {v3, v4, v0, v5}, Lcom/texa/carelib/core/utils/internal/URLBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v3}, Lcom/texa/carelib/core/utils/internal/URLBuilder;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 224
    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v3}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    .line 228
    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v4}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->isAuthenticated()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const-string v5, ""

    if-eqz v4, :cond_2

    .line 229
    :try_start_1
    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v4}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getAccessToken()Lcom/texa/carelib/webservices/AccessToken;

    move-result-object v4

    .line 230
    invoke-virtual {v4}, Lcom/texa/carelib/webservices/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-virtual {v4}, Lcom/texa/carelib/webservices/AccessToken;->getTokenType()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v5

    move-object v6, v4

    .line 233
    :goto_0
    iget-object v7, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mHWID:Ljava/lang/String;

    invoke-static {v3, v0, v7, v6, v4}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$200(Ljava/net/Proxy;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    .line 235
    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v3}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->prepareUrl(Landroid/content/Context;Ljava/net/URLConnection;)V

    .line 237
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    const-string v4, "Calling url: %s"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v3, v4, v7}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 242
    iget-object v4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mHWToken:[B

    invoke-static {v4, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string v7, "HWToken"

    .line 243
    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "CARe-HWID"

    .line 244
    iget-object v7, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->mHWID:Ljava/lang/String;

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRequest;

    iget-object v7, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-direct {v4, v7, v3}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRequest;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Ljava/util/Map;)V

    .line 248
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 250
    sget-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    const-string v7, "Request body:\n%s"

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v2

    invoke-static {v4, v7, v8}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    new-instance v4, Ljava/io/DataOutputStream;

    .line 253
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 254
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 256
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 268
    :try_start_2
    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getResponseCode(Ljava/net/URLConnection;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    :try_start_3
    invoke-static {v0, v3}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getResponseMessage(Ljava/net/URLConnection;I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 271
    :try_start_4
    sget-object v7, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    const-string v8, "Response code=%d"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v7, v8, v9}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    sget-object v7, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    const-string v8, "Response message=%s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v2

    invoke-static {v7, v8, v9}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    move-object v4, v5

    goto :goto_1

    :catch_2
    move-exception v7

    move-object v4, v5

    const/4 v3, 0x0

    .line 278
    :goto_1
    sget-object v8, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "Could not retrieve responseStatus."

    invoke-static {v8, v7, v10, v9}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    :goto_2
    :try_start_5
    invoke-static {v3}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->isSuccessResponseCode(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    .line 285
    invoke-static {v3}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->hasResponseBody(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StreamUtils;->getASCIIContentFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 293
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const-string v4, "Response content:\n%s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;

    move-result-object v8

    :cond_3
    const/16 v0, 0xc

    if-eqz v8, :cond_a

    .line 298
    invoke-virtual {v8}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->getSessionID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v8}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 299
    :goto_3
    invoke-virtual {v8}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->getVerificationKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v8}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->getVerificationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    .line 302
    invoke-virtual {v8}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->getSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->getVerificationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->notifyCompleted(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 304
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    iget-object v5, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v5}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/texa/carelib/webservices/R$string;->error_service_invalid_response_body:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_7

    const-string v3, "SessionID"

    .line 310
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez v6, :cond_8

    const-string v3, "VerificationKey"

    .line 313
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    const-string v3, " Missing fields: "

    .line 316
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const-string v5, ","

    invoke-static {v3, v5}, Lcom/texa/carelib/core/utils/internal/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_9
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v3, v1, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->notifyError(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 325
    :cond_a
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v3, v1, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_invalid_response_body:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->notifyError(Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 331
    :cond_b
    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getErrorBody(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v7

    .line 332
    sget-object v9, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    const-string v10, "Error body:\n%s"

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v7, v11, v2

    invoke-static {v9, v10, v11}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-static {v7}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 335
    invoke-static {v7}, Lcom/texa/carelib/webservices/internal/HttpApiError;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpApiError;

    move-result-object v7

    goto :goto_5

    :cond_c
    move-object v7, v8

    .line 338
    :goto_5
    invoke-static {v0, v7}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getError(Ljava/net/URLConnection;Lcom/texa/carelib/webservices/internal/HttpApiError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    if-eqz v7, :cond_d

    .line 343
    invoke-virtual {v7}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 344
    invoke-virtual {v7}, Lcom/texa/carelib/webservices/internal/HttpApiError;->getDetails()Ljava/util/Map;

    move-result-object v7

    goto :goto_6

    :cond_d
    move-object v7, v8

    move-object v8, v5

    .line 347
    :goto_6
    iget-object v9, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v9}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/texa/carelib/webservices/R$string;->error_service_http_error_with_api_error_info:I

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    aput-object v4, v11, v6

    aput-object v8, v11, v1

    const/4 v8, 0x3

    aput-object v7, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    .line 349
    iget-object v7, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    new-instance v8, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v9, 0xd

    invoke-direct {v8, v1, v9}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v9, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v9}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/texa/carelib/webservices/R$string;->error_service_http_error:I

    new-array v11, v1, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    aput-object v4, v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->notifyError(Lcom/texa/carelib/core/CareError;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 353
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v4, -0x1

    invoke-direct {v3, v1, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_protection_fails:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->notifyError(Lcom/texa/carelib/core/CareError;)V

    return-void

    :catch_4
    move-exception v0

    .line 274
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "SocketTimeoutException."

    invoke-static {v3, v0, v4, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v4, 0x12

    invoke-direct {v3, v1, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_socket_timeout:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->notifyError(Lcom/texa/carelib/core/CareError;)V

    return-void

    :catch_5
    move-exception v0

    .line 258
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Could not open the connection."

    invoke-static {v3, v0, v4, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    new-instance v2, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v3, 0x15

    invoke-direct {v2, v1, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/texa/carelib/webservices/R$string;->error_service_http_socket_connection_fails:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-static {v1, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureRunnable;->notifyError(Lcom/texa/carelib/core/CareError;)V

    return-void
.end method
