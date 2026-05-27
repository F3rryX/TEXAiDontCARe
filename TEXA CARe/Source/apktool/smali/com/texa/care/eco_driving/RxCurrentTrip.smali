.class Lcom/texa/care/eco_driving/RxCurrentTrip;
.super Lcom/texa/care/eco_driving/RxObservableObject;
.source "RxCurrentTrip.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RxCurrentTrip"


# instance fields
.field private final mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/texa/care/eco_driving/RxObservableObject;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/texa/care/eco_driving/RxCurrentTrip;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    .line 30
    new-instance v0, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda5;-><init>(Lcom/texa/care/eco_driving/RxCurrentTrip;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/trips/CurrentTrip;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method


# virtual methods
.method public getCurrentTrip()Lcom/texa/carelib/care/trips/CurrentTrip;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCurrentTrip;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    return-object v0
.end method

.method public synthetic lambda$new$0$com-texa-care-eco_driving-RxCurrentTrip(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 31
    sget-object v0, Lcom/texa/care/eco_driving/RxCurrentTrip;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " oldValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCurrentTrip;->mPropertyChangeEventSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method observeTripID()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCurrentTrip;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    const-string v0, "com.texa.carelib.care.trips.CurrentTrip#TRIP_ID"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxCurrentTrip;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observeTripStartInfo()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/TripBeginInfo;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCurrentTrip;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    const-string v0, "com.texa.carelib.care.trips.CurrentTrip#TRIP_BEGIN_INFO"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxCurrentTrip;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observeTripStatisticsInfo()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/TripStatisticsInfo;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCurrentTrip;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda3;-><init>(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    const-string v0, "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATISTICS_INFO"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxCurrentTrip;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observeTripStatus()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/TripStatus;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCurrentTrip;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda4;-><init>(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    new-instance v0, Lcom/texa/care/eco_driving/RxCurrentTrip$1;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxCurrentTrip$1;-><init>(Lcom/texa/care/eco_driving/RxCurrentTrip;)V

    const-string v2, "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATUS"

    invoke-virtual {p0, v2, v1, v0}, Lcom/texa/care/eco_driving/RxCurrentTrip;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;Lcom/texa/care/eco_driving/RxObservableObject$Validator;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observeTripStopInfo()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/TripEndInfo;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCurrentTrip;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxCurrentTrip$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/trips/CurrentTrip;)V

    const-string v0, "com.texa.carelib.care.trips.CurrentTrip#TRIP_END_INFO"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxCurrentTrip;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
