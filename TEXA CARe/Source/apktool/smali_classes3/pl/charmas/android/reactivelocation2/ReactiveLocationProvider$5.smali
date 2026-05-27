.class Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$5;
.super Ljava/lang/Object;
.source "ReactiveLocationProvider.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getPhotoMetadataById(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/google/android/gms/common/api/GoogleApiClient;",
        "Lio/reactivex/Observable<",
        "Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

.field final synthetic val$placeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$5;->this$0:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    iput-object p2, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$5;->val$placeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/gms/common/api/GoogleApiClient;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;",
            ">;"
        }
    .end annotation

    .line 408
    sget-object v0, Lcom/google/android/gms/location/places/Places;->GeoDataApi:Lcom/google/android/gms/location/places/GeoDataApi;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$5;->val$placeId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/location/places/GeoDataApi;->getPlacePhotos(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    invoke-static {p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->fromPendingResult(Lcom/google/android/gms/common/api/PendingResult;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 405
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$5;->apply(Lcom/google/android/gms/common/api/GoogleApiClient;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
