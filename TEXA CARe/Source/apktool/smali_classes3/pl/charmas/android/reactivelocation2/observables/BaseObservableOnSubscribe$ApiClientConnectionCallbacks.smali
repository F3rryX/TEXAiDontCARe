.class Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;
.super Ljava/lang/Object;
.source "BaseObservableOnSubscribe.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApiClientConnectionCallbacks"
.end annotation


# instance fields
.field private apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final emitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;


# direct methods
.method private constructor <init>(Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "-TT;>;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->this$0:Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->emitter:Lio/reactivex/ObservableEmitter;

    return-void
.end method

.method synthetic constructor <init>(Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;Lio/reactivex/ObservableEmitter;Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;-><init>(Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    :try_start_0
    iget-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->this$0:Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;

    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-virtual {p1, v0, v1}, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->onGoogleApiClientReady(Lcom/google/android/gms/common/api/GoogleApiClient;Lio/reactivex/ObservableEmitter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 97
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lpl/charmas/android/reactivelocation2/observables/GoogleAPIConnectionException;

    const-string v2, "Error connecting to GoogleApiClient."

    invoke-direct {v1, v2, p1}, Lpl/charmas/android/reactivelocation2/observables/GoogleAPIConnectionException;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .line 105
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lpl/charmas/android/reactivelocation2/observables/GoogleAPIConnectionSuspendedException;

    invoke-direct {v1, p1}, Lpl/charmas/android/reactivelocation2/observables/GoogleAPIConnectionSuspendedException;-><init>(I)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method setClient(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method
