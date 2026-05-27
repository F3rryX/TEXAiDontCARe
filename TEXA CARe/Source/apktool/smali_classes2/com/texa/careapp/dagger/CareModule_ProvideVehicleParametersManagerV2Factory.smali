.class public final Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;
.super Ljava/lang/Object;
.source "CareModule_ProvideVehicleParametersManagerV2Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
        ">;"
    }
.end annotation


# instance fields
.field private final currentTripProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end field

.field private final featureVerifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mCAReWorkerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final rxVehicleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxVehicle;",
            ">;"
        }
    .end annotation
.end field

.field private final vehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
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


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxVehicle;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 42
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->vehicleProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->currentTripProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->vehicleObserverProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->featureVerifierProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->rxVehicleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxVehicle;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;"
        }
    .end annotation

    .line 60
    new-instance v8, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideVehicleParametersManagerV2(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/care/eco_driving/RxVehicle;)Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .locals 0

    .line 66
    invoke-virtual/range {p0 .. p6}, Lcom/texa/careapp/dagger/CareModule;->provideVehicleParametersManagerV2(Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/care/eco_driving/RxVehicle;)Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/parameters/VehicleParametersManagerV2;
    .locals 7

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->vehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->currentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/trips/CurrentTrip;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/utils/VehicleObserver;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/careapp/sync/CAReWorkerManager;

    iget-object v5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->featureVerifierProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    iget-object v6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->rxVehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/care/eco_driving/RxVehicle;

    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->provideVehicleParametersManagerV2(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/care/eco_driving/RxVehicle;)Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParametersManagerV2Factory;->get()Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    move-result-object v0

    return-object v0
.end method
