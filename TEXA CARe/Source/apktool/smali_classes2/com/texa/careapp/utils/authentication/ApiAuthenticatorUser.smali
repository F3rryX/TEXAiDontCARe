.class public Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;
.super Ljava/lang/Object;
.source "ApiAuthenticatorUser.java"

# interfaces
.implements Lokhttp3/Authenticator;


# static fields
.field private static final MAX_AUTHENTICATION_RETRIES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ApiAuthenticatorUser"


# instance fields
.field private final mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mClientId:Ljava/lang/String;

.field private final mClientSecret:Ljava/lang/String;

.field private final mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field private final mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

.field private final mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;Lcom/texa/careapp/utils/UserDataManager;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mAccountManager:Landroid/accounts/AccountManager;

    .line 51
    iput-object p2, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    .line 52
    iput-object p3, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mClientId:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mClientSecret:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    .line 55
    iput-object p6, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 56
    iput-object p7, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mLocalBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    return-void
.end method

.method private buildRequestWithToken(Lokhttp3/Response;Lcom/texa/careapp/utils/authentication/AccessToken;)Lokhttp3/Request;
    .locals 2

    .line 121
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

    .line 123
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->getAuthenticationAttemptsCount(Lokhttp3/Response;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "Authorization"

    .line 127
    invoke-virtual {p1, v1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private getAuthenticationAttemptsCount(Lokhttp3/Response;)I
    .locals 1

    .line 134
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 135
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

.method private static refreshUserTokenSync(Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/careapp/utils/authentication/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "refresh_token"

    .line 88
    invoke-interface {p0, v0, p1, p2, p3}, Lcom/texa/careapp/networking/TexaCareAuthService;->refreshTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/authentication/AccessToken;

    return-object p0
.end method

.method private updateUserToken(Lokhttp3/Response;Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "try to refresh token"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {p2, p3, p4, p5}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->refreshUserTokenSync(Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object p2

    if-nez p2, :cond_0

    .line 107
    iget-object p3, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object p4, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p3, p4}, Lcom/texa/careapp/utils/Utils;->isUserLogged(Landroid/accounts/AccountManager;Lcom/texa/careapp/utils/UserDataManager;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "Could not retrieve new authentication token. Response is null!"

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/texa/careapp/utils/UserDataManager;->setRefreshTokenExpired(Z)V

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "got new token: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p3, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {p3, p2}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->persist(Lcom/texa/careapp/utils/authentication/AccessToken;)V

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->buildRequestWithToken(Lokhttp3/Response;Lcom/texa/careapp/utils/authentication/AccessToken;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p2}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->getAuthenticationAttemptsCount(Lokhttp3/Response;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Authentication has failed."

    .line 145
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Could not authenticate. No CARe account found."

    .line 151
    invoke-static {p2, p1}, Ltimber/log/Timber;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 155
    :cond_1
    iget-object v3, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v4, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mClientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mClientSecret:Ljava/lang/String;

    iget-object p1, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mAccessTokenPersistenceManager:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-interface {p1}, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;->getAccessToken()Lcom/texa/careapp/utils/authentication/AccessToken;

    move-result-object p1

    iget-object v6, p1, Lcom/texa/careapp/utils/authentication/AccessToken;->refreshToken:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->updateUserToken(Lokhttp3/Response;Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method protected getAccount()Landroid/accounts/Account;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;->mAccountManager:Landroid/accounts/AccountManager;

    sget-object v1, Lcom/texa/careapp/Constants;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 70
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 73
    aget-object v0, v0, v1

    return-object v0
.end method
