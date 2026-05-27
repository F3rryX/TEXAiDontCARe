.class public Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe;
.super Lpl/charmas/android/reactivelocation2/observables/BaseLocationObservableOnSubscribe;
.source "LocationUpdatesObservableOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe$LocationUpdatesLocationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpl/charmas/android/reactivelocation2/observables/BaseLocationObservableOnSubscribe<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/google/android/gms/location/LocationListener;

.field private final locationRequest:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method private constructor <init>(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lpl/charmas/android/reactivelocation2/observables/BaseLocationObservableOnSubscribe;-><init>(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;)V

    .line 35
    iput-object p2, p0, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public static createObservable(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;Lcom/google/android/gms/location/LocationRequest;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/charmas/android/reactivelocation2/observables/ObservableContext;",
            "Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;",
            "Lcom/google/android/gms/location/LocationRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe;

    invoke-direct {v0, p0, p2}, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe;-><init>(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;Lcom/google/android/gms/location/LocationRequest;)V

    invoke-virtual {p1, v0}, Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;->createObservable(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/location/LocationRequest;->getNumUpdates()I

    move-result p1

    if-lez p1, :cond_0

    const p2, 0x7fffffff

    if-ge p1, p2, :cond_0

    int-to-long p1, p1

    .line 25
    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected onDisposed(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 2

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe;->listener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method protected onGoogleApiClientReady(Lcom/google/android/gms/common/api/GoogleApiClient;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lio/reactivex/ObservableEmitter<",
            "-",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe$LocationUpdatesLocationListener;

    invoke-direct {v0, p2}, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe$LocationUpdatesLocationListener;-><init>(Lio/reactivex/ObservableEmitter;)V

    iput-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe;->listener:Lcom/google/android/gms/location/LocationListener;

    .line 41
    sget-object p2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe;->locationRequest:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/observables/location/LocationUpdatesObservableOnSubscribe;->listener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method
