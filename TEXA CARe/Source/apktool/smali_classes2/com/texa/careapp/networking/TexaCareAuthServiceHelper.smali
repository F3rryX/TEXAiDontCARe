.class public Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;
.super Ljava/lang/Object;
.source "TexaCareAuthServiceHelper.java"


# instance fields
.field protected final mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

.field protected final mClientId:Ljava/lang/String;

.field protected final mClientSecret:Ljava/lang/String;

.field protected final mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    .line 27
    iput-object p2, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;->mClientId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;->mClientSecret:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    return-void
.end method


# virtual methods
.method public getAndPersistClientTokenObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/utils/authentication/AccessToken;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;->mTexaCareAuthService:Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v1, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;->mClientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;->mClientSecret:Ljava/lang/String;

    const-string v3, "client_credentials"

    invoke-interface {v0, v3, v1, v2}, Lcom/texa/careapp/networking/TexaCareAuthService;->getClientToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;->mAccessTokenPersistenceManagerClient:Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    .line 34
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
