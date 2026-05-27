.class Lcom/texa/careapp/checks/CheckServiceGuardianAngel;
.super Ljava/lang/Object;
.source "CheckServiceGuardianAngel.java"

# interfaces
.implements Lcom/texa/careapp/checks/Check;


# instance fields
.field private guardianAngelContactsObservable:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final user:Lcom/texa/careapp/model/UserModel;


# direct methods
.method public static synthetic $r8$lambda$WMtjXVKem9rLJZc6_tAp-0-ys2U(Lcom/texa/careapp/checks/CheckServiceGuardianAngel;Lcom/texa/careapp/model/ServiceDataModel;Ljava/lang/Integer;)Lcom/texa/careapp/checks/Check$Result;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->checkCurrentStatus(Lcom/texa/careapp/model/ServiceDataModel;Ljava/lang/Integer;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->serviceObservable:Lio/reactivex/subjects/PublishSubject;

    .line 32
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->guardianAngelContactsObservable:Lio/reactivex/subjects/PublishSubject;

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->service:Lcom/texa/careapp/model/ServiceDataModel;

    .line 36
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getUser()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->user:Lcom/texa/careapp/model/UserModel;

    return-void
.end method

.method private checkCurrentStatus(Lcom/texa/careapp/model/ServiceDataModel;Ljava/lang/Integer;)Lcom/texa/careapp/checks/Check$Result;
    .locals 2

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-eq v0, v1, :cond_1

    .line 63
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object p1

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne p1, v0, :cond_3

    .line 66
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 67
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    return-object p1

    .line 68
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_3

    .line 69
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->WARNING:Lcom/texa/careapp/checks/Check$Result;

    return-object p1

    .line 72
    :cond_3
    sget-object p1, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object p1
.end method

.method static synthetic lambda$check$2(Ljava/lang/Throwable;)Lcom/texa/careapp/checks/Check$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    sget-object p0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    return-object p0
.end method


# virtual methods
.method public check()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->serviceObservable:Lio/reactivex/subjects/PublishSubject;

    iget-object v1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->guardianAngelContactsObservable:Lio/reactivex/subjects/PublishSubject;

    new-instance v2, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/checks/CheckServiceGuardianAngel;)V

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/checks/CheckServiceGuardianAngel;)V

    .line 46
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/checks/CheckServiceGuardianAngel;)V

    .line 47
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda3;->INSTANCE:Lcom/texa/careapp/checks/CheckServiceGuardianAngel$$ExternalSyntheticLambda3;

    .line 49
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public checkCurrentStatus()Lcom/texa/careapp/checks/Check$Result;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->service:Lcom/texa/careapp/model/ServiceDataModel;

    iget-object v1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->user:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v1}, Lcom/texa/careapp/model/UserModel;->getGuardianAngelContacts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->checkCurrentStatus(Lcom/texa/careapp/model/ServiceDataModel;Ljava/lang/Integer;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object v0

    return-object v0
.end method

.method public description()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public synthetic lambda$check$0$com-texa-careapp-checks-CheckServiceGuardianAngel(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$check$1$com-texa-careapp-checks-CheckServiceGuardianAngel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/ModelUpdateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 87
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/ModelUpdateEvent;->getModel()Lcom/activeandroid/Model;

    move-result-object v0

    .line 89
    instance-of v1, v0, Lcom/texa/careapp/model/ServiceDataModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/Model;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/ModelUpdateEvent;->getAction()Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;->DELETE:Lcom/texa/careapp/app/events/ModelUpdateEvent$DatabaseAction;

    if-ne p1, v1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->serviceObservable:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Landroidx/core/os/OperationCanceledException;

    const-string v1, "service Checked was cancelled"

    invoke-direct {v0, v1}, Landroidx/core/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 94
    :cond_0
    check-cast v0, Lcom/texa/careapp/model/ServiceDataModel;

    iput-object v0, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->service:Lcom/texa/careapp/model/ServiceDataModel;

    .line 95
    iget-object p1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->serviceObservable:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    instance-of p1, v0, Lcom/texa/careapp/model/ContactModel;

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->guardianAngelContactsObservable:Lio/reactivex/subjects/PublishSubject;

    iget-object v0, p0, Lcom/texa/careapp/checks/CheckServiceGuardianAngel;->user:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->getGuardianAngelContacts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resolve()V
    .locals 0

    return-void
.end method
