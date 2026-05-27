.class public Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;
.super Ljava/lang/Object;
.source "GeocodeObservable.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/util/List<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final ctx:Landroid/content/Context;

.field private final locale:Ljava/util/Locale;

.field private final locationName:Ljava/lang/String;

.field private final maxResults:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/Locale;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->ctx:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->locationName:Ljava/lang/String;

    .line 33
    iput p3, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->maxResults:I

    .line 34
    iput-object p4, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 35
    iput-object p5, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->locale:Ljava/util/Locale;

    return-void
.end method

.method private createGeocoder()Landroid/location/Geocoder;
    .locals 3

    .line 66
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createObservable(Landroid/content/Context;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/Locale;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Ljava/util/Locale;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    .line 27
    new-instance v6, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/Locale;)V

    invoke-virtual {p1, v6}, Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;->createObservable(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private getAddresses(Landroid/location/Geocoder;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Geocoder;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_0

    .line 57
    iget-object v2, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->locationName:Ljava/lang/String;

    iget v3, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->maxResults:I

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v1, p1

    invoke-virtual/range {v1 .. v11}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->locationName:Ljava/lang/String;

    iget v1, p0, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->maxResults:I

    invoke-virtual {p1, v0, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->createGeocoder()Landroid/location/Geocoder;

    move-result-object v0

    .line 42
    :try_start_0
    invoke-direct {p0, v0}, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->getAddresses(Landroid/location/Geocoder;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 45
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
