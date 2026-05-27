.class Lcom/texa/care/eco_driving/RxObservableObject;
.super Ljava/lang/Object;
.source "RxObservableObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/care/eco_driving/RxObservableObject$Supplier;,
        Lcom/texa/care/eco_driving/RxObservableObject$Validator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RxObservableObject"


# instance fields
.field final mPropertyChangeEventSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/beans/PropertyChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/RxObservableObject;->mPropertyChangeEventSubject:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method private _observePropertyChanges(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxObservableObject;->mPropertyChangeEventSubject:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$_observePropertyChanges$1(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$_observePropertyChanges$2(Ljava/lang/Object;Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    :try_start_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 62
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    sget-object p0, Lcom/texa/care/eco_driving/RxObservableObject;->TAG:Ljava/lang/String;

    const-string p1, "Null value receveid.."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    sget-object p1, Lcom/texa/care/eco_driving/RxObservableObject;->TAG:Ljava/lang/String;

    const-string v0, "Could not obtain the new property value!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_2
    :goto_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observePropertyChanges$0(Lcom/texa/care/eco_driving/RxObservableObject$Supplier;Lcom/texa/care/eco_driving/RxObservableObject$Validator;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-interface {p0}, Lcom/texa/care/eco_driving/RxObservableObject$Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Lcom/texa/care/eco_driving/RxObservableObject$Validator;->isValid(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/texa/care/eco_driving/RxObservableObject$Supplier<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/texa/care/eco_driving/RxObservableObject$Validator;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxObservableObject$Validator;-><init>(Lcom/texa/care/eco_driving/RxObservableObject;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/texa/care/eco_driving/RxObservableObject;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;Lcom/texa/care/eco_driving/RxObservableObject$Validator;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;Lcom/texa/care/eco_driving/RxObservableObject$Validator;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/texa/care/eco_driving/RxObservableObject$Supplier<",
            "TT;>;",
            "Lcom/texa/care/eco_driving/RxObservableObject$Validator;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p3}, Lcom/texa/care/eco_driving/RxObservableObject$$ExternalSyntheticLambda2;-><init>(Lcom/texa/care/eco_driving/RxObservableObject$Supplier;Lcom/texa/care/eco_driving/RxObservableObject$Validator;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p2

    const/4 p3, 0x0

    .line 46
    invoke-direct {p0, p1, p3}, Lcom/texa/care/eco_driving/RxObservableObject;->_observePropertyChanges(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 39
    invoke-static {p2, p1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
