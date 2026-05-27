.class Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$6;
.super Ljava/lang/Object;
.source "ReactiveLocationProvider.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getPhotoForMetadata(Lcom/google/android/gms/location/places/PlacePhotoMetadata;)Lio/reactivex/Observable;
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
        "Lcom/google/android/gms/location/places/PlacePhotoResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

.field final synthetic val$placePhotoMetadata:Lcom/google/android/gms/location/places/PlacePhotoMetadata;


# direct methods
.method constructor <init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/google/android/gms/location/places/PlacePhotoMetadata;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$6;->this$0:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    iput-object p2, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$6;->val$placePhotoMetadata:Lcom/google/android/gms/location/places/PlacePhotoMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/gms/common/api/GoogleApiClient;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/places/PlacePhotoResult;",
            ">;"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$6;->val$placePhotoMetadata:Lcom/google/android/gms/location/places/PlacePhotoMetadata;

    invoke-interface {v0, p1}, Lcom/google/android/gms/location/places/PlacePhotoMetadata;->getPhoto(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

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

    .line 422
    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p0, p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$6;->apply(Lcom/google/android/gms/common/api/GoogleApiClient;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
