.class public Lcom/texa/careapp/utils/RxCareLifecycle;
.super Ljava/lang/Object;
.source "RxCareLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;
    }
.end annotation


# static fields
.field private static final CONNECTION_LIFECYCLE:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;",
            "Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESUME_FUNCTION:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOULD_COMPLETE:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRIP_LIFECYCLE:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;",
            "Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda5;->INSTANCE:Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda5;

    sput-object v0, Lcom/texa/careapp/utils/RxCareLifecycle;->RESUME_FUNCTION:Lio/reactivex/functions/Function;

    .line 21
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda7;->INSTANCE:Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda7;

    sput-object v0, Lcom/texa/careapp/utils/RxCareLifecycle;->SHOULD_COMPLETE:Lio/reactivex/functions/Predicate;

    .line 26
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda3;

    sput-object v0, Lcom/texa/careapp/utils/RxCareLifecycle;->TRIP_LIFECYCLE:Lio/reactivex/functions/Function;

    .line 35
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda4;

    sput-object v0, Lcom/texa/careapp/utils/RxCareLifecycle;->CONNECTION_LIFECYCLE:Lio/reactivex/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bind(Lio/reactivex/Observable;Lio/reactivex/functions/Function;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TR;>;",
            "Lio/reactivex/functions/Function<",
            "TR;TR;>;)",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object p0

    .line 62
    new-instance v0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/Observable;Lio/reactivex/functions/Function;)V

    return-object v0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lifecycle must be given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bindToConnection(Lio/reactivex/Observable;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;",
            ">;)",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle;->CONNECTION_LIFECYCLE:Lio/reactivex/functions/Function;

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/RxCareLifecycle;->bind(Lio/reactivex/Observable;Lio/reactivex/functions/Function;)Lio/reactivex/ObservableTransformer;

    move-result-object p0

    return-object p0
.end method

.method public static bindToTrip(Lio/reactivex/Observable;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;",
            ">;)",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle;->TRIP_LIFECYCLE:Lio/reactivex/functions/Function;

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/RxCareLifecycle;->bind(Lio/reactivex/Observable;Lio/reactivex/functions/Function;)Lio/reactivex/ObservableTransformer;

    move-result-object p0

    return-object p0
.end method

.method private static bindUntilEvent(Lio/reactivex/Observable;Ljava/lang/Object;)Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TR;>;TR;)",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda1;-><init>(Lio/reactivex/Observable;Ljava/lang/Object;)V

    return-object v0

    .line 72
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Event must be given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lifecycle must be given"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$bind$4(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 63
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bind$5(Lio/reactivex/Observable;Lio/reactivex/functions/Function;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 3

    const-wide/16 v0, 0x1

    .line 62
    invoke-virtual {p0, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    invoke-virtual {p0, v0, v1}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object p0

    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda2;

    .line 62
    invoke-static {p1, p0, v0}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/texa/careapp/utils/RxCareLifecycle;->RESUME_FUNCTION:Lio/reactivex/functions/Function;

    .line 64
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/texa/careapp/utils/RxCareLifecycle;->SHOULD_COMPLETE:Lio/reactivex/functions/Predicate;

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object p0

    .line 62
    invoke-virtual {p2, p0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bindUntilEvent$6(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$bindUntilEvent$7(Lio/reactivex/Observable;Ljava/lang/Object;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    .line 75
    new-instance v0, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/texa/careapp/utils/RxCareLifecycle$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Observable;->firstElement()Lio/reactivex/Maybe;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Maybe;->toObservable()Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    .line 18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$1(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$2(Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;)Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$1;->$SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent:[I

    invoke-virtual {p0}, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 29
    sget-object p0, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->DISCONNECTED:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not yet implemented"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$static$3(Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;)Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$1;->$SwitchMap$com$texa$careapp$utils$RxCareLifecycle$CareEvent:[I

    invoke-virtual {p0}, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 38
    sget-object p0, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->DISCONNECTED:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not yet implemented"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
