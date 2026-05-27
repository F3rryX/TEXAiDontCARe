.class public final Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;
.super Ljava/lang/Object;
.source "AccountAuthenticator_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/utils/authentication/AccountAuthenticator;",
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

.field private final mTexaCareServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->mTexaCareServiceProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->clientIdProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->clientSecretProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareAuthService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/utils/authentication/AccountAuthenticator;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectClientId(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/ClientId;
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator;->clientId:Ljava/lang/String;

    return-void
.end method

.method public static injectClientSecret(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/texa/careapp/dagger/ClientSecret;
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator;->clientSecret:Ljava/lang/String;

    return-void
.end method

.method public static injectMTexaCareService(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;Lcom/texa/careapp/networking/TexaCareAuthService;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator;->mTexaCareService:Lcom/texa/careapp/networking/TexaCareAuthService;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->mTexaCareServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareAuthService;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->injectMTexaCareService(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;Lcom/texa/careapp/networking/TexaCareAuthService;)V

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->clientIdProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->injectClientId(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->clientSecretProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->injectClientSecret(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/utils/authentication/AccountAuthenticator;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/authentication/AccountAuthenticator_MembersInjector;->injectMembers(Lcom/texa/careapp/utils/authentication/AccountAuthenticator;)V

    return-void
.end method
