.class public final synthetic Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/LocationTracker;

.field public final synthetic f$1:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/LocationTracker;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/utils/LocationTracker;

    iput-object p2, p0, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda2;->f$1:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/utils/LocationTracker;

    iget-object v1, p0, Lcom/texa/careapp/utils/LocationTracker$$ExternalSyntheticLambda2;->f$1:Lcom/texa/careapp/model/VehicleModel;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/utils/LocationTracker;->lambda$onLocationTrackerChangeEvent$0$com-texa-careapp-utils-LocationTracker(Lcom/texa/careapp/model/VehicleModel;Landroid/location/Location;)V

    return-void
.end method
