.class public final Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideDrivingStyleManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/care/eco_driving/DrivingStyleManager;",
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

.field private final dataManagerConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
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

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final profileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private final rxVehicleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxVehicle;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
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
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxVehicle;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 53
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->profileProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->dataManagerConfigurationProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->currentTripProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->vehicleProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->accessoryProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p8, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p9, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->communicationProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p10, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->rxVehicleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxVehicle;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;"
        }
    .end annotation

    .line 76
    new-instance v11, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static provideDrivingStyleManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Landroid/content/SharedPreferences;Lcom/texa/carelib/communication/Communication;Lcom/texa/care/eco_driving/RxVehicle;)Lcom/texa/care/eco_driving/DrivingStyleManager;
    .locals 0

    .line 83
    invoke-virtual/range {p0 .. p9}, Lcom/texa/careapp/dagger/CareModule;->provideDrivingStyleManager(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Landroid/content/SharedPreferences;Lcom/texa/carelib/communication/Communication;Lcom/texa/care/eco_driving/RxVehicle;)Lcom/texa/care/eco_driving/DrivingStyleManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/care/eco_driving/DrivingStyleManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/care/eco_driving/DrivingStyleManager;
    .locals 10

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->profileProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/Profile;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->dataManagerConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->currentTripProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/care/trips/CurrentTrip;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->vehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/care/vehicle/Vehicle;

    iget-object v5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->accessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    iget-object v7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->communicationProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/texa/carelib/communication/Communication;

    iget-object v9, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->rxVehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/texa/care/eco_driving/RxVehicle;

    invoke-static/range {v0 .. v9}, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->provideDrivingStyleManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Landroid/content/SharedPreferences;Lcom/texa/carelib/communication/Communication;Lcom/texa/care/eco_driving/RxVehicle;)Lcom/texa/care/eco_driving/DrivingStyleManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideDrivingStyleManagerFactory;->get()Lcom/texa/care/eco_driving/DrivingStyleManager;

    move-result-object v0

    return-object v0
.end method
