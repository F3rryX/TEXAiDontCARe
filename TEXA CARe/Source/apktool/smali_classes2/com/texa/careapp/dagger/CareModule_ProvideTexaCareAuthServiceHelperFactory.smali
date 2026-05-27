.class public final Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideTexaCareAuthServiceHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;
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

.field private final module:Lcom/texa/careapp/dagger/CareModule;

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
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 33
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->texaCareAuthServiceProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->clientIdProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->clientSecretProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->accessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;"
        }
    .end annotation

    .line 48
    new-instance v6, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideTexaCareAuthServiceHelper(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/careapp/dagger/CareModule;->provideTexaCareAuthServiceHelper(Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->texaCareAuthServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/TexaCareAuthService;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->clientIdProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->clientSecretProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->accessTokenPersistenceManagerClientProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->provideTexaCareAuthServiceHelper(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/networking/TexaCareAuthService;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaCareAuthServiceHelperFactory;->get()Lcom/texa/careapp/networking/TexaCareAuthServiceHelper;

    move-result-object v0

    return-object v0
.end method
