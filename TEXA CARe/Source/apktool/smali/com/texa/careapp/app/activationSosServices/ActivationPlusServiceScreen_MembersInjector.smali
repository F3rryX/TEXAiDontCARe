.class public final Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;
.super Ljava/lang/Object;
.source "ActivationPlusServiceScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mVehicleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v6, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->mTexaCareApiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectMTexaCareApiService(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 54
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V

    .line 56
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->mSharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectMSharedPreferences(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationPlusServiceScreen;)V

    return-void
.end method
