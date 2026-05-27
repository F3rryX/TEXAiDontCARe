.class public final Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideLampsManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/lamps/LampsManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final dtcManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;

.field private final vehicleParametersManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;->dtcManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;->vehicleParametersManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/DtcManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/parameters/VehicleParametersManagerV2;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideLampsManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)Lcom/texa/careapp/lamps/LampsManager;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule;->provideLampsManager(Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)Lcom/texa/careapp/lamps/LampsManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/lamps/LampsManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/lamps/LampsManager;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;->dtcManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/DtcManager;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;->vehicleParametersManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/parameters/VehicleParametersManagerV2;

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;->provideLampsManager(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/DtcManager;Lcom/texa/careapp/parameters/VehicleParametersManagerV2;)Lcom/texa/careapp/lamps/LampsManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideLampsManagerFactory;->get()Lcom/texa/careapp/lamps/LampsManager;

    move-result-object v0

    return-object v0
.end method
