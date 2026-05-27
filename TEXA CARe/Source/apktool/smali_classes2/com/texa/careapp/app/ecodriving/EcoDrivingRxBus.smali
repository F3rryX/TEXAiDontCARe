.class Lcom/texa/careapp/app/ecodriving/EcoDrivingRxBus;
.super Ljava/lang/Object;
.source "EcoDrivingRxBus.java"


# instance fields
.field private final ecoRxBus:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingRxBus;->ecoRxBus:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method getEcoBusObservable()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingRxBus;->ecoRxBus:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public post(Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingRxBus;->ecoRxBus:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
