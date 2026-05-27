.class public final Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;
.super Ljava/lang/Object;
.source "ApiModule_ProvideTexaCareApiServiceUserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessTokenPersistenceManagerUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final apiAuthenticatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/ApiModule;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/ApiModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;->apiAuthenticatorProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;->accessTokenPersistenceManagerUserProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/ApiModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;-><init>(Lcom/texa/careapp/dagger/ApiModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTexaCareApiServiceUser(Lcom/texa/careapp/dagger/ApiModule;Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/dagger/ApiModule;->provideTexaCareApiServiceUser(Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;->module:Lcom/texa/careapp/dagger/ApiModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;->apiAuthenticatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;

    iget-object v2, p0, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;->accessTokenPersistenceManagerUserProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;->provideTexaCareApiServiceUser(Lcom/texa/careapp/dagger/ApiModule;Lcom/texa/careapp/utils/authentication/ApiAuthenticatorUser;Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;)Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/ApiModule_ProvideTexaCareApiServiceUserFactory;->get()Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    move-result-object v0

    return-object v0
.end method
