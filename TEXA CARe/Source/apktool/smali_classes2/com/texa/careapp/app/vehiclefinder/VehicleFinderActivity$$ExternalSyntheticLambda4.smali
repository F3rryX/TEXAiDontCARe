.class public final synthetic Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->lambda$new$4$com-texa-careapp-app-vehiclefinder-VehicleFinderActivity()Lio/reactivex/SingleSource;

    move-result-object v0

    return-object v0
.end method
