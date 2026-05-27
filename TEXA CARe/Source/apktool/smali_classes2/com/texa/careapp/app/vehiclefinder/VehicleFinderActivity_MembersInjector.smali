.class public final Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;
.super Ljava/lang/Object;
.source "VehicleFinderActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;",
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

.field private final mLocationTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LocationTracker;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LocationTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->communicationProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->mLocationTrackerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LocationTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectCommunication(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->communication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method

.method public static injectMLocationTracker(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Lcom/texa/careapp/utils/LocationTracker;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mLocationTracker:Lcom/texa/careapp/utils/LocationTracker;

    return-void
.end method

.method public static injectMVehicleObserver(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->communicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->injectCommunication(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Lcom/texa/carelib/communication/Communication;)V

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->mLocationTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LocationTracker;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->injectMLocationTracker(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Lcom/texa/careapp/utils/LocationTracker;)V

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->injectMVehicleObserver(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Lcom/texa/careapp/utils/VehicleObserver;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity_MembersInjector;->injectMembers(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V

    return-void
.end method
