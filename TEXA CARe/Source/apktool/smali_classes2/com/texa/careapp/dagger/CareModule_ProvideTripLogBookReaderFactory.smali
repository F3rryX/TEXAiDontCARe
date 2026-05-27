.class public final Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideTripLogBookReaderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/utils/TripLogBookReader;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final vehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
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
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;->vehicleObserverProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/sync/CAReWorkerManager;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTripLogBookReader(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/utils/TripLogBookReader;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/dagger/CareModule;->provideTripLogBookReader(Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/utils/TripLogBookReader;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/TripLogBookReader;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/utils/TripLogBookReader;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;->vehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/VehicleObserver;

    iget-object v2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;->mCAReWorkerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;->provideTripLogBookReader(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;)Lcom/texa/careapp/utils/TripLogBookReader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideTripLogBookReaderFactory;->get()Lcom/texa/careapp/utils/TripLogBookReader;

    move-result-object v0

    return-object v0
.end method
