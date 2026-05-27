.class public final Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideRxVehicleFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/care/eco_driving/RxVehicle;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/texa/careapp/dagger/CareModule;

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
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 23
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;->vehicleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/care/vehicle/Vehicle;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRxVehicle(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/care/vehicle/Vehicle;)Lcom/texa/care/eco_driving/RxVehicle;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/texa/careapp/dagger/CareModule;->provideRxVehicle(Lcom/texa/carelib/care/vehicle/Vehicle;)Lcom/texa/care/eco_driving/RxVehicle;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/care/eco_driving/RxVehicle;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/care/eco_driving/RxVehicle;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;->vehicleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;->provideRxVehicle(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/care/vehicle/Vehicle;)Lcom/texa/care/eco_driving/RxVehicle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideRxVehicleFactory;->get()Lcom/texa/care/eco_driving/RxVehicle;

    move-result-object v0

    return-object v0
.end method
