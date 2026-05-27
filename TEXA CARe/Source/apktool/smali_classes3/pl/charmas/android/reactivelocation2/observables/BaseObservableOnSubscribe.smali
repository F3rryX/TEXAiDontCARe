.class public abstract Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;
.super Ljava/lang/Object;
.source "BaseObservableOnSubscribe.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Api<",
            "+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(Lpl/charmas/android/reactivelocation2/observables/ObservableContext;[Lcom/google/android/gms/common/api/Api;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/charmas/android/reactivelocation2/observables/ObservableContext;",
            "[",
            "Lcom/google/android/gms/common/api/Api<",
            "+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->ctx:Landroid/content/Context;

    .line 29
    invoke-virtual {p1}, Lpl/charmas/android/reactivelocation2/observables/ObservableContext;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->handler:Landroid/os/Handler;

    .line 30
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->services:Ljava/util/List;

    return-void
.end method

.method private createApiClient(Lio/reactivex/ObservableEmitter;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "-TT;>;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient;"
        }
    .end annotation

    .line 55
    new-instance v0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;-><init>(Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;Lio/reactivex/ObservableEmitter;Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;)V

    .line 56
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->ctx:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    .line 59
    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 66
    iget-object v1, p0, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$ApiClientConnectionCallbacks;->setClient(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-object p1
.end method


# virtual methods
.method protected onDisposed(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    return-void
.end method

.method protected abstract onGoogleApiClientReady(Lcom/google/android/gms/common/api/GoogleApiClient;Lio/reactivex/ObservableEmitter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lio/reactivex/ObservableEmitter<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;->createApiClient(Lio/reactivex/ObservableEmitter;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 37
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 39
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    .line 44
    :cond_0
    :goto_0
    new-instance v1, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;

    invoke-direct {v1, p0, v0}, Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe$1;-><init>(Lpl/charmas/android/reactivelocation2/observables/BaseObservableOnSubscribe;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-static {v1}, Lio/reactivex/disposables/Disposables;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
