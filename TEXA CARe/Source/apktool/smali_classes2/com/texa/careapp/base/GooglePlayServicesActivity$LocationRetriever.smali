.class public Lcom/texa/careapp/base/GooglePlayServicesActivity$LocationRetriever;
.super Ljava/lang/Object;
.source "GooglePlayServicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/base/GooglePlayServicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationRetriever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/base/GooglePlayServicesActivity;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/base/GooglePlayServicesActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity$LocationRetriever;->this$0:Lcom/texa/careapp/base/GooglePlayServicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 2

    .line 172
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/texa/careapp/base/GooglePlayServicesActivity$LocationRetriever;->this$0:Lcom/texa/careapp/base/GooglePlayServicesActivity;

    invoke-static {v1}, Lcom/texa/careapp/base/GooglePlayServicesActivity;->access$000(Lcom/texa/careapp/base/GooglePlayServicesActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
