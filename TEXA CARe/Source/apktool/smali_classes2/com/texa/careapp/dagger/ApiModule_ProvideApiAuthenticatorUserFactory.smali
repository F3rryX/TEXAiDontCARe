.class public final Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;
.super Ljava/lang/Object;
.source "ApiModule_ProvideApiAuthenticatorUserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;",
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

.field private final localBroadcastManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
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

.field private final userDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    .line 41
    iput-object p2, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->accessTokenPersistenceManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->clientIdProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->clientSecretProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->texaCareAuthServiceProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p6, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->userDataManagerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p7, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->localBroadcastManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;
    .locals 9
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;"
        }
    .end annotation

    .line 60
    new-instance v8, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;-><init>(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideApiAuthenticatorUser(Lcom/texa/careapp/dagger/ApiModule;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;Lcom/texa/careapp/utils/UserDataManager;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;
    .locals 0

    .line 67
    invoke-virtual/range {p0 .. p6}, Lcom/texa/careapp/dagger/ApiModule;->provideApiAuthenticatorUser(Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;Lcom/texa/careapp/utils/UserDataManager;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->accessTokenPersistenceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->clientIdProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->clientSecretProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->texaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v5, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->userDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/utils/UserDataManager;

    iget-object v6, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->localBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->provideApiAuthenticatorUser(Lcom/texa/careapp/dagger/ApiModule;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/networking/TexaCareAuthService;Lcom/texa/careapp/utils/UserDataManager;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/ApiModule_ProvideApiAuthenticatorUserFactory;->get()Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;

    move-result-object v0

    return-object v0
.end method
