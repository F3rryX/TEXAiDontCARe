.class Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$1;
.super Ljava/lang/Object;
.source "PendingResultObservableOnSubscribe.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;

.field final synthetic val$emitter:Lio/reactivex/ObservableEmitter;


# direct methods
.method constructor <init>(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$1;->this$0:Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;

    iput-object p2, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$1;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    .line 31
    :cond_0
    iget-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe$1;->this$0:Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;->access$002(Lpl/charmas/android/reactivelocation2/observables/PendingResultObservableOnSubscribe;Z)Z

    return-void
.end method
