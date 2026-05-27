.class public final Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;
.super Ljava/lang/Object;
.source "ActivationServiceVehicleDialog_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog_MembersInjector;->injectMembers(Lcom/texa/careapp/app/activationSosServices/ActivationServiceVehicleDialog;)V

    return-void
.end method
