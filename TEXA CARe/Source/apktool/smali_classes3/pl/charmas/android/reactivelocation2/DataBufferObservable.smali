.class public final Lpl/charmas/android/reactivelocation2/DataBufferObservable;
.super Ljava/lang/Object;
.source "DataBufferObservable.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/google/android/gms/common/data/AbstractDataBuffer;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lpl/charmas/android/reactivelocation2/DataBufferObservable$1;

    invoke-direct {v0, p0}, Lpl/charmas/android/reactivelocation2/DataBufferObservable$1;-><init>(Lcom/google/android/gms/common/data/AbstractDataBuffer;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
