.class public Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;
.super Ljava/lang/Object;
.source "PendingResultObservableOnSubscribe.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private complete:Z

.field private final result:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->complete:Z

    .line 19
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->result:Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method static synthetic access$000(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->complete:Z

    return p0
.end method

.method static synthetic access$002(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->complete:Z

    return p1
.end method

.method static synthetic access$100(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 0

    .line 14
    iget-object p0, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->result:Lcom/google/android/gms/common/api/PendingResult;

    return-object p0
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
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

    .line 24
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->result:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v1, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$1;

    invoke-direct {v1, p0, p1}, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$1;-><init>(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;Lio/reactivex/ObservableEmitter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 35
    new-instance v0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$2;

    invoke-direct {v0, p0}, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$2;-><init>(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;)V

    invoke-static {v0}, Lio/reactivex/disposables/Disposables;->fromAction(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->setDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
