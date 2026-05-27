.class public final Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideMechanicDataManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/utils/MechanicDataManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final dongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final texaCareApiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->texaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMechanicDataManager(Lcom/texa/careapp/dagger/CareModule;Landroid/content/SharedPreferences;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/utils/MechanicDataManager;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/careapp/dagger/CareModule;->provideMechanicDataManager(Landroid/content/SharedPreferences;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/utils/MechanicDataManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/MechanicDataManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/utils/MechanicDataManager;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->texaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {v0, v1, v2, v3}, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->provideMechanicDataManager(Lcom/texa/careapp/dagger/CareModule;Landroid/content/SharedPreferences;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/model/DongleDataManager;)Lcom/texa/careapp/utils/MechanicDataManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideMechanicDataManagerFactory;->get()Lcom/texa/careapp/utils/MechanicDataManager;

    move-result-object v0

    return-object v0
.end method
