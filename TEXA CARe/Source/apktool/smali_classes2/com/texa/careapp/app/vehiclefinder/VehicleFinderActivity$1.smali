.class Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$1;
.super Ljava/lang/Object;
.source "VehicleFinderActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->animateCamera(Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$1;->this$0:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$1;->this$0:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->access$002(Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;Z)Z

    return-void
.end method
