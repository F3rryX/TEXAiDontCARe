.class public final Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;
.super Ljava/lang/Object;
.source "ActivationLightForeignServiceScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 37
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationLightForeignServiceScreen;)V

    return-void
.end method
