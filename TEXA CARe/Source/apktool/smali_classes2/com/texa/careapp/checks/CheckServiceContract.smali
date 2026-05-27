.class Lcom/texa/careapp/checks/CheckServiceContract;
.super Ljava/lang/Object;
.source "CheckServiceContract.java"

# interfaces
.implements Lcom/texa/careapp/checks/Check;


# instance fields
.field private service:Lcom/texa/careapp/model/ServiceDataModel;

.field private serviceObservable:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/checks/CheckServiceContract;->serviceObservable:Lio/reactivex/subjects/PublishSubject;

    .line 26
    iput-object p1, p0, Lcom/texa/careapp/checks/CheckServiceContract;->service:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method

.method private checkCurrentStatus(Lcom/texa/careapp/model/ServiceDataModel;)Lcom/texa/careapp/checks/Check$Result;
    .locals 2

    .line 59
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object p1

    .line 62
    :cond_0
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object p1
.end method

.method static synthetic lambda$check$3(Ljava/lang/Throwable;)Lcom/texa/careapp/checks/Check$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    sget-object p0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object p0
.end method


# virtual methods
.method public check()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckServiceContract;->serviceObservable:Lio/reactivex/subjects/PublishSubject;

    new-instance v1, Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/checks/CheckServiceContract;)V

    .line 33
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/checks/CheckServiceContract;)V

    .line 34
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/checks/CheckServiceContract;)V

    .line 35
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/checks/CheckServiceContract$$ExternalSyntheticLambda3;

    .line 37
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckServiceContract;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, v0}, Lcom/texa/careapp/checks/CheckServiceContract;->checkCurrentStatus(Lcom/texa/careapp/model/ServiceDataModel;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object v0

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public synthetic lambda$check$0$com-texa-careapp-checks-CheckServiceContract(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$check$1$com-texa-careapp-checks-CheckServiceContract()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$check$2$com-texa-careapp-checks-CheckServiceContract(Lcom/texa/careapp/model/ServiceDataModel;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/texa/careapp/checks/CheckServiceContract;->checkCurrentStatus(Lcom/texa/careapp/model/ServiceDataModel;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public onEvent(Lcom/texa/careapp/app/events/ModelUpdateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/ModelUpdateEvent;->getModel()Lcom/activeandroid/Model;

    move-result-object v0

    .line 69
    instance-of v1, v0, Lcom/texa/careapp/model/ServiceDataModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/texa/careapp/checks/CheckServiceContract;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/Model;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/ModelUpdateEvent;->getAction()Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;->DELETE:Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;

    if-ne p1, v1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/texa/careapp/checks/CheckServiceContract;->serviceObservable:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Landroidx/core/os/OperationCanceledException;

    const-string v1, "service Checked was cancelled"

    invoke-direct {v0, v1}, Landroidx/core/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 74
    :cond_0
    check-cast v0, Lcom/texa/careapp/model/ServiceDataModel;

    iput-object v0, p0, Lcom/texa/careapp/checks/CheckServiceContract;->service:Lcom/texa/careapp/model/ServiceDataModel;

    .line 75
    iget-object p1, p0, Lcom/texa/careapp/checks/CheckServiceContract;->serviceObservable:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public resolve()V
    .locals 0

    return-void
.end method
