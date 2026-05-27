.class public Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;
.super Ljava/lang/Object;
.source "ApiAuthenticatorClient.java"

# interfaces
.implements Lokhttp3/Authenticator;


# static fields
.field private static final MAX_AUTHENTICATION_RETRIES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ApiAuthenticatorClient"


# instance fields
.field private final mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

.field private final mClientId:Ljava/lang/String;

.field private final mClientSecret:Ljava/lang/String;

.field private final mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->mClientId:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->mClientSecret:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    .line 44
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    return-void
.end method

.method private buildRequestWithToken(Lokhttp3/Response;Lcom/texa/careapp/utils/authentication/AccessToken;)Lokhttp3/Request;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/texa/careapp/utils/authentication/AccessToken;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/texa/careapp/utils/authentication/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->getAuthenticationAttemptsCount(Lokhttp3/Response;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "Authorization"

    .line 111
    invoke-virtual {p1, v1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private getAuthenticationAttemptsCount(Lokhttp3/Response;)I
    .locals 1

    .line 50
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static refreshClientTokenSync(Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/careapp/utils/authentication/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "client_credentials"

    .line 68
    invoke-interface {p0, v0, p1, p2}, Lcom/texa/careapp/networking/TexaCareAuthService;->getClientTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/authentication/AccessToken;

    return-object p0
.end method

.method private updateClientToken(Lokhttp3/Response;Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "try to refresh token"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p2, p3, p4}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->refreshClientTokenSync(Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object p2

    .line 87
    iget-object p3, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {p3, p2}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->persist(Lcom/texa/careapp/utils/authentication/AccessToken;)V

    if-eqz p2, :cond_0

    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "got new token: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->buildRequestWithToken(Lokhttp3/Response;Lcom/texa/careapp/utils/authentication/AccessToken;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0, p2}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->getAuthenticationAttemptsCount(Lokhttp3/Response;)I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Authentication has failed."

    .line 119
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->mClientId:Ljava/lang/String;

    iget-object v1, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->mClientSecret:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;->updateClientToken(Lokhttp3/Response;Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
