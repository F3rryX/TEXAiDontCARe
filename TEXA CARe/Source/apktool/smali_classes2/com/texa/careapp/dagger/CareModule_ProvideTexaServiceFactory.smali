.class public final Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideTexaServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/carelib/webservices/TexaService;",
        ">;"
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 25
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;->clientIdProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;->clientSecretProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTexaService(Lcom/texa/careapp/dagger/CareModule;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/webservices/TexaService;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule;->provideTexaService(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/webservices/TexaService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/TexaService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/carelib/webservices/TexaService;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;->clientIdProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;->clientSecretProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;->provideTexaService(Lcom/texa/careapp/dagger/CareModule;Ljava/lang/String;Ljava/lang/String;)Lcom/texa/carelib/webservices/TexaService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaServiceFactory;->get()Lcom/texa/carelib/webservices/TexaService;

    move-result-object v0

    return-object v0
.end method
