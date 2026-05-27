.class public final Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;
.super Ljava/lang/Object;
.source "CareModule_VehicleObserverFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/utils/VehicleObserver;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field

.field private final communicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation
.end field

.field private final dongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final vehicleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
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
            "Lcom/texa/carelib/communication/Communication;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 39
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->apiServiceProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->vehicleDataManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->communicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
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
            "Lcom/texa/carelib/communication/Communication;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;"
        }
    .end annotation

    .line 56
    new-instance v7, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static vehicleObserver(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/utils/VehicleDataManager;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/utils/VehicleObserver;
    .locals 0

    .line 62
    invoke-virtual/range {p0 .. p5}, Lcom/texa/careapp/dagger/CareModule;->vehicleObserver(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/utils/VehicleDataManager;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/utils/VehicleObserver;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/VehicleObserver;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/utils/VehicleObserver;
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->apiServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->vehicleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/utils/VehicleDataManager;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/greenrobot/eventbus/EventBus;

    iget-object v5, p0, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->communicationProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/communication/Communication;

    invoke-static/range {v0 .. v5}, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->vehicleObserver(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/utils/VehicleDataManager;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/utils/VehicleObserver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_VehicleObserverFactory;->get()Lcom/texa/careapp/utils/VehicleObserver;

    move-result-object v0

    return-object v0
.end method
