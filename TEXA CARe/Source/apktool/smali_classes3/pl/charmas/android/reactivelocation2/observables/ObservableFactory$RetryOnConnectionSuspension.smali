.class Lpl/charmas/android/reactivelocation2/observables/ObservableFactory$RetryOnConnectionSuspension;
.super Ljava/lang/Object;
.source "ObservableFactory.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/charmas/android/reactivelocation2/observables/ObservableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetryOnConnectionSuspension"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/charmas/android/reactivelocation2/observables/ObservableFactory$RetryOnConnectionSuspension$IsConnectionSuspendedException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final shouldRetry:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lpl/charmas/android/reactivelocation2/observables/ObservableFactory$RetryOnConnectionSuspension;->shouldRetry:Z

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/ObservableSource<",
            "TT;>;"
        }
    .end annotation

    .line 29
    iget-boolean v0, p0, Lpl/charmas/android/reactivelocation2/observables/ObservableFactory$RetryOnConnectionSuspension;->shouldRetry:Z

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lpl/charmas/android/reactivelocation2/observables/ObservableFactory$RetryOnConnectionSuspension$IsConnectionSuspendedException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpl/charmas/android/reactivelocation2/observables/ObservableFactory$RetryOnConnectionSuspension$IsConnectionSuspendedException;-><init>(Lpl/charmas/android/reactivelocation2/observables/ObservableFactory$1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->retry(Lio/reactivex/functions/BiPredicate;)Lio/reactivex/Observable;

    move-result-object p1

    :cond_0
    return-object p1
.end method
