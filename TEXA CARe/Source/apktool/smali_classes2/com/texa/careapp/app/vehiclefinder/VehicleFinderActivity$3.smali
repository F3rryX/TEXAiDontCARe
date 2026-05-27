.class Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$3;
.super Lcom/texa/careapp/utils/permission/Func;
.source "VehicleFinderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->requestPermission()V
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

    .line 295
    iput-object p1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$3;->this$0:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    invoke-direct {p0}, Lcom/texa/careapp/utils/permission/Func;-><init>()V

    return-void
.end method


# virtual methods
.method protected call()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Permission enabled"

    .line 298
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$3;->this$0:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    iget-object v1, p0, Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity$3;->this$0:Lcom/texa/careapp/app/vehiclefinder/VehicleFinderActivity;

    .line 300
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method
