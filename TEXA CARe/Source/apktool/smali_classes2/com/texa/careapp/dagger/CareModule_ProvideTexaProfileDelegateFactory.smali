.class public final Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideTexaProfileDelegateFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/utils/TexaProfileDelegate;",
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

.field private final flavorDelegatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;"
        }
    .end annotation
.end field

.field private final mArmadilloSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final securePreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/securepreferences/SecurePreferences;",
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
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/securepreferences/SecurePreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 36
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->flavorDelegatorProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->securePreferencesProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->mArmadilloSharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/FlavorDelegator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/securepreferences/SecurePreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lat/favre/lib/armadillo/ArmadilloSharedPreferences;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;"
        }
    .end annotation

    .line 52
    new-instance v6, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideTexaProfileDelegate(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/FlavorDelegator;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Lcom/texa/careapp/utils/TexaProfileDelegate;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/texa/careapp/dagger/CareModule;->provideTexaProfileDelegate(Lcom/texa/careapp/FlavorDelegator;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Lcom/texa/careapp/utils/TexaProfileDelegate;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/TexaProfileDelegate;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/utils/TexaProfileDelegate;
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->flavorDelegatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/FlavorDelegator;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->securePreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/securepreferences/SecurePreferences;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->mArmadilloSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lat/favre/lib/armadillo/ArmadilloSharedPreferences;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->provideTexaProfileDelegate(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/FlavorDelegator;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Lcom/texa/careapp/utils/TexaProfileDelegate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideTexaProfileDelegateFactory;->get()Lcom/texa/careapp/utils/TexaProfileDelegate;

    move-result-object v0

    return-object v0
.end method
