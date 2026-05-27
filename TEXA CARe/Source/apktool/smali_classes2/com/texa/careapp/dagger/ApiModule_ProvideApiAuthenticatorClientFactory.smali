.class public final Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;
.super Ljava/lang/Object;
.source "ApiModule_ProvideApiAuthenticatorClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessTokenPersistenceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final clientIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final clientSecretProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/ApiModule;

.field private final texaCareAuthServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/ApiModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    .line 33
    iput-object p2, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->accessTokenPersistenceManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->clientIdProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->clientSecretProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p5, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->texaCareAuthServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/ApiModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;)",
            "Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;"
        }
    .end annotation

    .line 48
    new-instance v6, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;-><init>(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideApiAuthenticatorClient(Lcom/texa/careapp/dagger/ApiModule;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;)Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/careapp/dagger/ApiModule;->provideApiAuthenticatorClient(Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;)Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->accessTokenPersistenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->clientIdProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->clientSecretProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->texaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->provideApiAuthenticatorClient(Lcom/texa/careapp/dagger/ApiModule;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;)Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorClientFactory;->get()Lcom/texa/careapp/utils/authentication/ApiAuthenticatorClient;

    move-result-object v0

    return-object v0
.end method
