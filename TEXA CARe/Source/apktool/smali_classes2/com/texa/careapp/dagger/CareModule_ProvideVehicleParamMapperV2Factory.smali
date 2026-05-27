.class public final Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;
.super Ljava/lang/Object;
.source "CareModule_ProvideVehicleParamMapperV2Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/parameters/VehicleParamMapperV2;",
        ">;"
    }
.end annotation


# instance fields
.field private final communicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;->communicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideVehicleParamMapperV2(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/parameters/VehicleParamMapperV2;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/texa/careapp/dagger/CareModule;->provideVehicleParamMapperV2(Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/parameters/VehicleParamMapperV2;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;->communicationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/communication/Communication;

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;->provideVehicleParamMapperV2(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/carelib/communication/Communication;)Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideVehicleParamMapperV2Factory;->get()Lcom/texa/careapp/parameters/VehicleParamMapperV2;

    move-result-object v0

    return-object v0
.end method
