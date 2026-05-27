.class public Lcom/texa/careapp/app/service/RxCareService;
.super Landroid/app/Service;
.source "RxCareService.java"


# instance fields
.field private final lifecycleSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mAccessory:Lcom/texa/carelib/care/accessory/Accessory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mCareAuthenticatedListener:Ljava/beans/PropertyChangeListener;

.field protected mCommunication:Lcom/texa/carelib/communication/Communication;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDisconnectionDisposable:Lio/reactivex/disposables/Disposable;

.field private final mTripStatusChangeListener:Ljava/beans/PropertyChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->lifecycleSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 52
    new-instance v0, Lcom/texa/careapp/app/service/RxCareService$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/RxCareService$1;-><init>(Lcom/texa/careapp/app/service/RxCareService;)V

    iput-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mTripStatusChangeListener:Ljava/beans/PropertyChangeListener;

    .line 76
    new-instance v0, Lcom/texa/careapp/app/service/RxCareService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/service/RxCareService$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/service/RxCareService;)V

    iput-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mCareAuthenticatedListener:Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method private isHostAuthenticated()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->isHostAuthenticated()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onCareConnectedAndAuthenticated$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ON DISCONNECT ERROR"

    .line 154
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCareConnectedAndAuthenticated$3()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "COMPLETE ON DISCONNECT"

    .line 154
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bindToConnectionLifecycle()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->lifecycleSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {v0}, Lcom/texa/careapp/utils/RxCareLifecycle;->bindToConnection(Lio/reactivex/Observable;)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    return-object v0
.end method

.method public final bindToTripLifecycle()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->lifecycleSubject:Lio/reactivex/subjects/BehaviorSubject;

    invoke-static {v0}, Lcom/texa/careapp/utils/RxCareLifecycle;->bindToTrip(Lio/reactivex/Observable;)Lio/reactivex/ObservableTransformer;

    move-result-object v0

    return-object v0
.end method

.method protected getCareApplication()Lcom/texa/careapp/CareApplication;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/RxCareService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    return-object v0
.end method

.method protected getCareAuthenticatedListener()Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mCareAuthenticatedListener:Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method protected getTripStatusChangeListener()Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mTripStatusChangeListener:Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public synthetic lambda$new$0$com-texa-careapp-app-service-RxCareService(Ljava/beans/PropertyChangeEvent;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CAReSERVICE --> event.getPropertyName() --> %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v0, [Ljava/lang/Object;

    .line 78
    invoke-direct {p0}, Lcom/texa/careapp/app/service/RxCareService;->isHostAuthenticated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "CAReSERVICE --> isHostAuthenticated --> %s"

    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_IS_AUTHENTICATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/texa/careapp/app/service/RxCareService;->isHostAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/RxCareService;->onCareConnectedAndAuthenticated()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCareConnectedAndAuthenticated$1$com-texa-careapp-app-service-RxCareService(Lcom/texa/careapp/carelib/CommunicationObservable$Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne v0, p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/RxCareService;->onCareDisconnected()V

    :cond_0
    return-void
.end method

.method public final lifecycle()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->lifecycleSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 164
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onCareConnectedAndAuthenticated()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->lifecycleSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->CONNECTED:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mDisconnectionDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    invoke-virtual {v0}, Lcom/texa/careapp/carelib/CommunicationObservable;->observeConnectionStatus()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/service/RxCareService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/service/RxCareService$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/service/RxCareService;)V

    sget-object v2, Lcom/texa/careapp/app/service/RxCareService$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/service/RxCareService$$ExternalSyntheticLambda2;

    sget-object v3, Lcom/texa/careapp/app/service/RxCareService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/app/service/RxCareService$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mDisconnectionDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method protected onCareDisconnected()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->lifecycleSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->DISCONNECTED:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/RxCareService;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/service/RxCareService;)V

    .line 91
    invoke-virtual {p0}, Lcom/texa/careapp/app/service/RxCareService;->onCreateInternal()V

    return-void
.end method

.method protected final onCreateInternal()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CAReSERVICE --> onCreateInternal"

    .line 96
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/app/service/RxCareService;->mCareAuthenticatedListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    iget-object v1, p0, Lcom/texa/careapp/app/service/RxCareService;->mTripStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/trips/CurrentTrip;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mDisconnectionDisposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/Disposable;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CAReSERVICE --> onDestroy"

    .line 112
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    iget-object v1, p0, Lcom/texa/careapp/app/service/RxCareService;->mCareAuthenticatedListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/accessory/Accessory;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 114
    iget-object v0, p0, Lcom/texa/careapp/app/service/RxCareService;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    iget-object v1, p0, Lcom/texa/careapp/app/service/RxCareService;->mTripStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/trips/CurrentTrip;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method protected onTripStarted(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/texa/careapp/app/service/RxCareService;->lifecycleSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->TRIP_START:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
