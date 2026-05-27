.class public final Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideDtcManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/utils/DtcManager;",
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

.field private final careObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final dtcResolutionIntegratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;",
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

.field private final vehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
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
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 46
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->careObserverProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->profileProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->accessoryProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->vehicleTroublesProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->dtcResolutionIntegratorProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p8, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->vehicleObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/carelib/ICareObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/profile/Profile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/featureverifier/FeatureVerifier;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;"
        }
    .end annotation

    .line 66
    new-instance v9, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static provideDtcManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/utils/DtcManager;
    .locals 0

    .line 73
    invoke-virtual/range {p0 .. p7}, Lcom/texa/careapp/dagger/CareModule;->provideDtcManager(Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/utils/DtcManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/DtcManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/utils/DtcManager;
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->careObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/carelib/ICareObserver;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->profileProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/profile/Profile;

    iget-object v3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->accessoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v4, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->featureVerifierProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    iget-object v5, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->vehicleTroublesProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    iget-object v6, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->dtcResolutionIntegratorProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;

    iget-object v7, p0, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static/range {v0 .. v7}, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->provideDtcManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/carelib/ICareObserver;Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/tools/integrator/DTCResolutionIntegrator;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/utils/DtcManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideDtcManagerFactory;->get()Lcom/texa/careapp/utils/DtcManager;

    move-result-object v0

    return-object v0
.end method
