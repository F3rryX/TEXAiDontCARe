.class public Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;
.super Ljava/lang/Object;
.source "ReactiveLocationProvider.java"


# instance fields
.field private final ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

.field private final factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-static {}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;->builder()Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;->build()Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;-><init>(Landroid/content/Context;Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-static {}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;->builder()Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;->setCustomCallbackHandler(Landroid/os/Handler;)Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration$Builder;->build()Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;-><init>(Landroid/content/Context;Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    invoke-direct {v0, p1, p2}, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;-><init>(Landroid/content/Context;Lpl/charmas/android/reactivelocation2/ReactiveLocationProviderConfiguration;)V

    iput-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    .line 79
    new-instance p1, Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-direct {p1, v0}, Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;-><init>(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;)V

    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    return-void
.end method

.method public static fromPendingResult(Lcom/google/android/gms/common/api/PendingResult;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 453
    new-instance v0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;

    invoke-direct {v0, p0}, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/GeofencingRequest;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1, p2, p1}, Lpl/charmas/android/reactivelocation2/observables/geofence/AddGeofenceObservableOnSubscribe;->createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationSettingsRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/LocationSettingsResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/common/api/Api;

    .line 334
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getGoogleApiClientObservable([Lcom/google/android/gms/common/api/Api;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$1;

    invoke-direct {v1, p0, p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$1;-><init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/google/android/gms/location/LocationSettingsRequest;)V

    .line 335
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPlace(Lcom/google/android/gms/location/places/PlaceFilter;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/places/PlaceFilter;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/places/PlaceLikelihoodBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/api/Api;

    .line 352
    sget-object v1, Lcom/google/android/gms/location/places/Places;->PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getGoogleApiClientObservable([Lcom/google/android/gms/common/api/Api;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$2;

    invoke-direct {v1, p0, p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$2;-><init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/google/android/gms/location/places/PlaceFilter;)V

    .line 353
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getDetectedActivity(I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/ActivityRecognitionResult;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1, p1}, Lpl/charmas/android/reactivelocation2/observables/activity/ActivityUpdatesObservableOnSubscribe;->createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;I)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getGeocodeObservable(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, p1, p2, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getGeocodeObservable(Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLngBounds;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getGeocodeObservable(Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLngBounds;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, p2, p3, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getGeocodeObservable(Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/Locale;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getGeocodeObservable(Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/Locale;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 261
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    invoke-virtual {v0}, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lpl/charmas/android/reactivelocation2/observables/geocode/GeocodeObservable;->createObservable(Landroid/content/Context;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Ljava/lang/String;ILcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/Locale;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public varargs getGoogleApiClientObservable([Lcom/google/android/gms/common/api/Api;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/Api;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1, p1}, Lpl/charmas/android/reactivelocation2/observables/GoogleAPIClientObservableOnSubscribe;->create(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;[Lcom/google/android/gms/common/api/Api;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getLastKnownLocation()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1}, Lpl/charmas/android/reactivelocation2/observables/location/LastKnownLocationObservableOnSubscribe;->createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoForMetadata(Lcom/google/android/gms/location/places/PlacePhotoMetadata;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/places/PlacePhotoMetadata;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/places/PlacePhotoResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/api/Api;

    .line 421
    sget-object v1, Lcom/google/android/gms/location/places/Places;->PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getGoogleApiClientObservable([Lcom/google/android/gms/common/api/Api;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$6;

    invoke-direct {v1, p0, p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$6;-><init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/google/android/gms/location/places/PlacePhotoMetadata;)V

    .line 422
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getPhotoMetadataById(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/api/Api;

    .line 404
    sget-object v1, Lcom/google/android/gms/location/places/Places;->PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getGoogleApiClientObservable([Lcom/google/android/gms/common/api/Api;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$5;

    invoke-direct {v1, p0, p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$5;-><init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaceAutocompletePredictions(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Lcom/google/android/gms/location/places/AutocompleteFilter;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/places/AutocompletePredictionBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/api/Api;

    .line 388
    sget-object v1, Lcom/google/android/gms/location/places/Places;->PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getGoogleApiClientObservable([Lcom/google/android/gms/common/api/Api;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$4;-><init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;)V

    .line 389
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getPlaceById(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/location/places/PlaceBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/api/Api;

    .line 368
    sget-object v1, Lcom/google/android/gms/location/places/Places;->PLACE_DETECTION_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/location/places/Places;->GEO_DATA_API:Lcom/google/android/gms/common/api/Api;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getGoogleApiClientObservable([Lcom/google/android/gms/common/api/Api;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$3;

    invoke-direct {v1, p0, p1}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider$3;-><init>(Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getReverseGeocodeObservable(DDI)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    invoke-virtual {v0}, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-static/range {v1 .. v8}, Lpl/charmas/android/reactivelocation2/observables/geocode/ReverseGeocodeObservable;->createObservable(Landroid/content/Context;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Ljava/util/Locale;DDI)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getReverseGeocodeObservable(Ljava/util/Locale;DDI)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "DDI)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    invoke-virtual {v0}, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-static/range {v1 .. v8}, Lpl/charmas/android/reactivelocation2/observables/geocode/ReverseGeocodeObservable;->createObservable(Landroid/content/Context;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Ljava/util/Locale;DDI)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public getUpdatedLocation(Lcom/google/android/gms/location/LocationRequest;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1, p1}, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe;->createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Lcom/google/android/gms/location/LocationRequest;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public mockLocation(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Landroid/location/Location;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1, p1}, Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe;->createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public removeGeofences(Landroid/app/PendingIntent;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1, p1}, Lpl/charmas/android/reactivelocation2/observables/geofence/RemoveGeofenceObservableOnSubscribe;->createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Landroid/app/PendingIntent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public removeGeofences(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1, p1}, Lpl/charmas/android/reactivelocation2/observables/geofence/RemoveGeofenceObservableOnSubscribe;->createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1, p1}, Lpl/charmas/android/reactivelocation2/observables/location/RemoveLocationIntentUpdatesObservableOnSubscribe;->createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Landroid/app/PendingIntent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->ctx:Lpl/charmas/android/reactivelocation2/observables/ObservableContext;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->factory:Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;

    invoke-static {v0, v1, p1, p2}, Lpl/charmas/android/reactivelocation2/observables/location/AddLocationIntentUpdatesObservableOnSubscribe;->createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
