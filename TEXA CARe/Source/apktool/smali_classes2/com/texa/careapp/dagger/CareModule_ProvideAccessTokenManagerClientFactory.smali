.class public final Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideAccessTokenManagerClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final preferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;->preferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAccessTokenManagerClient(Lcom/texa/careapp/dagger/CareModule;Landroid/content/SharedPreferences;)Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/texa/careapp/dagger/CareModule;->provideAccessTokenManagerClient(Landroid/content/SharedPreferences;)Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;->preferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;->provideAccessTokenManagerClient(Lcom/texa/careapp/dagger/CareModule;Landroid/content/SharedPreferences;)Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideAccessTokenManagerClientFactory;->get()Lcom/texa/careapp/utils/authentication/AccessTokenPersistenceManager;

    move-result-object v0

    return-object v0
.end method
