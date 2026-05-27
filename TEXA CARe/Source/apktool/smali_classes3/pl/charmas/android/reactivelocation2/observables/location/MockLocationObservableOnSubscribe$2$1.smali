.class Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2$1;
.super Ljava/lang/Object;
.source "MockLocationObservableOnSubscribe.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2;->accept(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2;


# direct methods
.method constructor <init>(Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2$1;->this$1:Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2$1;->this$1:Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2;

    iget-object v0, v0, Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2;->val$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2$1;->this$1:Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2;

    iget-object v0, v0, Lpl/charmas/android/reactivelocation2/observables/location/MockLocationObservableOnSubscribe$2;->val$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lpl/charmas/android/reactivelocation2/observables/StatusException;

    invoke-direct {v1, p1}, Lpl/charmas/android/reactivelocation2/observables/StatusException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
