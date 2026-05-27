.class public Lcom/texa/careapp/utils/VehicleObserver;
.super Ljava/lang/Object;
.source "VehicleObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;
    }
.end annotation


# instance fields
.field private mApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

.field private mCurrentVehicle:Lcom/texa/careapp/model/VehicleModel;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mEventBus:Lorg/greenrobot/eventbus/EventBus;

.field private mVehicleDataDisposable:Lio/reactivex/disposables/Disposable;

.field private mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/networking/TexaCareApiServiceUser;Lcom/texa/careapp/utils/VehicleDataManager;Lorg/greenrobot/eventbus/EventBus;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/texa/careapp/utils/VehicleObserver;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 50
    iput-object p2, p0, Lcom/texa/careapp/utils/VehicleObserver;->mApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    .line 51
    iput-object p3, p0, Lcom/texa/careapp/utils/VehicleObserver;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    .line 52
    iput-object p4, p0, Lcom/texa/careapp/utils/VehicleObserver;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 54
    new-instance p1, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/utils/VehicleObserver;)V

    .line 86
    invoke-interface {p5, p1}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method private getVehicleModelObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mCurrentVehicle:Lcom/texa/careapp/model/VehicleModel;

    .line 140
    iget-object v1, p0, Lcom/texa/careapp/utils/VehicleObserver;->mApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->getUserVehicleList()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/careapp/utils/VehicleObserver;->mApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    .line 144
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda0;

    .line 145
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->isSyncNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/model/VehicleModel;)V

    .line 156
    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 155
    invoke-static {v1, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda13;-><init>(Lcom/texa/careapp/utils/VehicleDataManager;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getVehicleModelObservable$3(Ljava/lang/String;Lcom/texa/careapp/networking/response/UserVehicleListResponse;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-virtual {p1, p0}, Lcom/texa/careapp/networking/response/UserVehicleListResponse;->getByPlate(Ljava/lang/String;)Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;

    move-result-object p0

    .line 143
    iget-object p0, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->vehicleId:Ljava/lang/String;

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getVehicleModelObservable$4(Lio/reactivex/Observer;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$updateVehicleData$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getVehicleModelObservable exception"

    .line 133
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateVehicleData(Ljava/lang/String;)V
    .locals 2

    .line 129
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/VehicleObserver;->getVehicleModelObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 130
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 131
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/utils/VehicleObserver;)V

    sget-object v1, Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/utils/VehicleObserver$$ExternalSyntheticLambda2;

    .line 132
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/utils/VehicleObserver;->mVehicleDataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public forceUpdate()V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CHANGE EVENT FORCE UPDATE"

    .line 119
    invoke-static {v2, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/texa/careapp/utils/VehicleObserver;->mVehicleDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/careapp/utils/VehicleObserver;->updateVehicleData(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public forceVehicleUpdateFromServer(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CHANGE EVENT SERVER"

    .line 42
    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/VehicleObserver;->updateVehicleData(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dongleModel == null"

    .line 93
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mCurrentVehicle:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dongleModel == null"

    .line 106
    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getVehicleModelObservable$5$com-texa-careapp-utils-VehicleObserver(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/utils/VehicleDataManager;->updateVehicle(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/networking/response/VehicleResponse;)Lio/reactivex/Observable;

    move-result-object p1
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Could not update vehicle information in database"

    .line 161
    invoke-static {p1, v0, p2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic lambda$new$0$com-texa-careapp-utils-VehicleObserver(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 57
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v1, :cond_2

    .line 60
    iget-object p1, p0, Lcom/texa/careapp/utils/VehicleObserver;->mVehicleDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_0

    .line 61
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 64
    :cond_0
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleByMacAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/texa/careapp/utils/VehicleObserver;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v1, p1}, Lcom/texa/careapp/model/DongleDataManager;->setDongleLikeSelectedWithMac(Ljava/lang/String;)Lcom/texa/careapp/model/DongleModel;

    .line 77
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 78
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mCurrentVehicle:Lcom/texa/careapp/model/VehicleModel;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CHANGE EVENT COMMUNICATION"

    .line 80
    invoke-static {v0, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/texa/careapp/utils/VehicleObserver;->mCurrentVehicle:Lcom/texa/careapp/model/VehicleModel;

    if-eqz p1, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/VehicleObserver;->updateVehicleData(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CommunicationStatus = CONNECTED but getCurrentDevice() is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$updateVehicleData$1$com-texa-careapp-utils-VehicleObserver(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;-><init>(Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public resetVehicleObserver()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver;->mCurrentVehicle:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method
