.class Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;
.super Ljava/lang/Object;
.source "HttpServiceAuthenticationProcedure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthenticationProcedureRunnable"
.end annotation


# instance fields
.field private final mCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/webservices/TexaServiceDelegate;Lcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/TexaServiceDelegate;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mTexaServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    .line 196
    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 200
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->isConnected()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 201
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Internet connection is not available"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v4, 0x1a

    invoke-direct {v3, v1, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_internet_connection_not_available:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mTexaServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    invoke-static {v0, v3}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$300(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/webservices/TexaServiceDelegate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Service delegate is not valid. Required fields are missing or seems to not be valid."

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v4, 0x22

    invoke-direct {v3, v1, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_credential_not_set:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    sget-object v3, Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;->Pending:Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;

    invoke-virtual {v0, v3}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->setStatus(Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;)V

    .line 214
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mTexaServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/TexaServiceBase;->getAuthenticationHost(Lcom/texa/carelib/webservices/TexaServiceDelegate;)Lcom/texa/carelib/webservices/HostInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 217
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Authentication host could not be null!!"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v3, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v4, 0x23

    invoke-direct {v3, v1, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_host_not_set:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    return-void

    .line 226
    :cond_2
    :try_start_0
    new-instance v3, Lcom/texa/carelib/core/utils/internal/URLBuilder;

    .line 227
    invoke-virtual {v0}, Lcom/texa/carelib/webservices/HostInfo;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-virtual {v0}, Lcom/texa/carelib/webservices/HostInfo;->getHostName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "/oauth2/token"

    invoke-direct {v3, v4, v0, v5}, Lcom/texa/carelib/core/utils/internal/URLBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3}, Lcom/texa/carelib/core/utils/internal/URLBuilder;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 231
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    const-string v4, "Calling url: %s"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v4, v6}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v3, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$400(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "grant_type"

    const-string v6, "client_credentials"

    .line 238
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "client_id"

    .line 239
    iget-object v6, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mTexaServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    invoke-virtual {v6}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getClientID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "client_secret"

    .line 240
    iget-object v6, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mTexaServiceDelegate:Lcom/texa/carelib/webservices/TexaServiceDelegate;

    invoke-virtual {v6}, Lcom/texa/carelib/webservices/TexaServiceDelegate;->getClientSecret()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v4, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;

    iget-object v6, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-direct {v4, v6, v3}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Ljava/util/Map;)V

    .line 243
    invoke-virtual {v4}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRequest;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    sget-object v4, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    const-string v6, "Request body:\n%s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-static {v4, v6, v7}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    new-instance v4, Ljava/io/DataOutputStream;

    .line 248
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 249
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 251
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_0

    .line 255
    :cond_3
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    const-string v4, "Could not write http request content."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    const-string v3, ""

    const/16 v4, 0x12

    .line 269
    :try_start_1
    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getResponseCode(Ljava/net/URLConnection;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :try_start_2
    invoke-static {v0, v6}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getResponseMessage(Ljava/net/URLConnection;I)Ljava/lang/String;

    move-result-object v3

    .line 272
    sget-object v7, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    const-string v8, "Response code=%d"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v7, v8, v9}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    sget-object v7, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    const-string v8, "Response message=%s"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v2

    invoke-static {v7, v8, v9}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    const/4 v6, 0x0

    .line 283
    :goto_1
    sget-object v8, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "Could not retrieve responseStatus."

    invoke-static {v8, v7, v10, v9}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v7, 0x0

    .line 287
    :try_start_3
    invoke-static {v6}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->isSuccessResponseCode(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 288
    invoke-static {v6}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->hasResponseBody(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 290
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 294
    invoke-static {v3}, Lcom/texa/carelib/core/utils/internal/StreamUtils;->getASCIIContentFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 296
    sget-object v4, Lcom/texa/carelib/webservices/internal/HttpTexaService;->TAG:Ljava/lang/String;

    const-string v6, "Response content:\n%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v4, v6, v5}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    invoke-static {v3}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 300
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->getService()Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    new-instance v3, Lcom/texa/carelib/webservices/AccessToken;

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->getTokenType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureResponse;->getSessionLifeTime()J

    move-result-wide v8

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/texa/carelib/webservices/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->setAccessToken(Lcom/texa/carelib/webservices/AccessToken;)V

    .line 301
    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    invoke-static {v1, v2, v7}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_4

    .line 303
    :cond_4
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v4, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v5, 0xc

    invoke-direct {v4, v1, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/texa/carelib/webservices/R$string;->error_service_invalid_response_body:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    goto/16 :goto_4

    :cond_5
    const/16 v8, 0x194

    if-ne v6, v8, :cond_6

    .line 311
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    const-string v5, "URL is not reachable."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v5, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v5, v1, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_http_socket_connection_fails:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    goto :goto_4

    .line 316
    :cond_6
    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getErrorBody(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-static {v4}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 319
    invoke-static {v4}, Lcom/texa/carelib/webservices/internal/HttpApiError;->fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpApiError;

    move-result-object v4

    goto :goto_3

    :cond_7
    move-object v4, v7

    .line 322
    :goto_3
    invoke-static {v0, v4}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getError(Ljava/net/URLConnection;Lcom/texa/carelib/webservices/internal/HttpApiError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v4

    iget-object v8, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v8}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/texa/carelib/webservices/R$string;->error_service_http_error:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    aput-object v3, v1, v5

    invoke-virtual {v8, v9, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v1

    .line 323
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    invoke-static {v2, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 328
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    invoke-static {v0, v7}, Lcom/texa/carelib/webservices/internal/TexaURLConnectionHelper;->getError(Ljava/net/URLConnection;Lcom/texa/carelib/webservices/internal/HttpApiError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    :cond_8
    :goto_4
    return-void

    :catch_3
    move-exception v0

    .line 277
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "SocketTimeoutException."

    invoke-static {v3, v0, v5, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v5, Lcom/texa/carelib/core/CareError$Builder;

    invoke-direct {v5, v1, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_socket_timeout:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    return-void

    :catch_4
    move-exception v0

    .line 260
    sget-object v3, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Could not open the connection."

    invoke-static {v3, v0, v4, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->mCallback:Lcom/texa/carelib/core/Callback;

    new-instance v4, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v5, 0x15

    invoke-direct {v4, v1, v5}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure$AuthenticationProcedureRunnable;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;

    invoke-static {v1}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/texa/carelib/webservices/R$string;->error_service_http_socket_connection_fails:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/CareError$Builder;->setException(Ljava/lang/Throwable;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceAuthenticationProcedure;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method
