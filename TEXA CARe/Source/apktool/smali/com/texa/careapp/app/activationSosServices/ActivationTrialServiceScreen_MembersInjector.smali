.class public final Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;
.super Ljava/lang/Object;
.source "ActivationTrialServiceScreen_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMVehicleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->mVehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->injectMVehicleDataManager(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lcom/texa/careapp/utils/VehicleDataManager;)V

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen_MembersInjector;->injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationTrialServiceScreen;)V

    return-void
.end method
