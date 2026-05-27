.class public final Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideCareObserverFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/carelib/ICareObserver;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
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

.field private final currentTripProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
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

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final vehicleInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final vehicleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;"
        }
    .end annotation
.end field

.field private final vehicleTroublesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 46
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->communicationProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->currentTripProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->accessoryProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->vehicleProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->vehicleTroublesProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p8, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->vehicleInfoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;"
        }
    .end annotation

    .line 66
    new-instance v9, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static provideCareObserver(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)Lcom/texa/careapp/carelib/ICareObserver;
    .locals 0

    .line 73
    invoke-virtual/range {p0 .. p7}, Lcom/texa/careapp/dagger/CareModule;->provideCareObserver(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)Lcom/texa/careapp/carelib/ICareObserver;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/carelib/ICareObserver;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/carelib/ICareObserver;
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->dongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/DongleDataManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->communicationProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/communication/Communication;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->currentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/care/trips/CurrentTrip;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->accessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->vehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-object v6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->vehicleTroublesProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    iget-object v7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->vehicleInfoProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    invoke-static/range {v0 .. v7}, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->provideCareObserver(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)Lcom/texa/careapp/carelib/ICareObserver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideCareObserverFactory;->get()Lcom/texa/careapp/carelib/ICareObserver;

    move-result-object v0

    return-object v0
.end method
