.class public Lcom/texa/careapp/carelib/CareObserverImpl;
.super Ljava/lang/Object;
.source "CareObserverImpl.java"

# interfaces
.implements Lcom/texa/careapp/carelib/ICareObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "CareObserverImpl"


# instance fields
.field private mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private mCommunication:Lcom/texa/carelib/communication/Communication;

.field private mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mTripStartObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end field

.field private mTripStopObservable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

.field private mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

.field private mVehicleTroubles:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/carelib/communication/Communication;Lcom/texa/carelib/care/trips/CurrentTrip;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicle/Vehicle;Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 60
    iput-object p2, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 62
    iput-object p3, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    .line 63
    iput-object p4, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 64
    iput-object p5, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    .line 65
    iput-object p6, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mVehicleTroubles:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    .line 66
    iput-object p7, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    .line 68
    invoke-direct {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->createTripStartObservable()Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mTripStartObservable:Lio/reactivex/Observable;

    .line 69
    invoke-direct {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->createTripStopObservable()Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mTripStopObservable:Lio/reactivex/Observable;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/carelib/CareObserverImpl;)Lcom/texa/carelib/communication/Communication;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/careapp/carelib/CareObserverImpl;)Lcom/texa/carelib/care/vehicle/Vehicle;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    return-object p0
.end method

.method private createTripStartObservable()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    const-string v1, "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATUS"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda18;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda18;

    .line 124
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda25;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda25;

    .line 125
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda34;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda34;

    .line 128
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private createTripStopObservable()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    const-string v1, "com.texa.carelib.care.trips.CurrentTrip#TRIP_STATUS"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda19;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda19;

    .line 135
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda26;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda26;

    .line 136
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda1;

    .line 139
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private isInProgress(Lcom/texa/carelib/care/trips/CurrentTrip;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 532
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p1

    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isLoaded(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 119
    new-instance v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    invoke-virtual {v0, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$createTripStartObservable$2(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createTripStartObservable$3(Lcom/texa/carelib/care/trips/CurrentTrip;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-interface {p0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p0

    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->InProgress:Lcom/texa/carelib/care/trips/TripStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$createTripStartObservable$4(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/texa/careapp/carelib/CareObserverImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received trip start, tripStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$createTripStopObservable$5(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createTripStopObservable$6(Lcom/texa/carelib/care/trips/CurrentTrip;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-interface {p0}, Lcom/texa/carelib/care/trips/CurrentTrip;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object p0

    sget-object v0, Lcom/texa/carelib/care/trips/TripStatus;->Ended:Lcom/texa/carelib/care/trips/TripStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$createTripStopObservable$7(Lcom/texa/carelib/care/trips/CurrentTrip;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/texa/careapp/carelib/CareObserverImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received trip stop, tripStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$observe$0(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl$1;-><init>(Lio/reactivex/ObservableEmitter;Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)V

    .line 91
    invoke-interface {p0, v0}, Lcom/texa/carelib/core/ObservableObject;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method static synthetic lambda$observeCurrentTrip$26(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observeDtc$24(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    .line 383
    sget-object v0, Lcom/texa/careapp/carelib/CareObserverImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received DTCs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;->getDTCs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observeInfosForConfigurationUpdate$20(Lcom/texa/careapp/model/DongleModel;Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/texa/careapp/carelib/CareObserverImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got vin code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/DongleModel;->setVinCode(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/texa/careapp/model/DongleModel;->save()Ljava/lang/Long;

    .line 347
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observeInfosForConfigurationUpdate$21(Lcom/texa/careapp/model/DongleModel;Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/texa/careapp/carelib/CareObserverImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got serial number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/DongleModel;->setHwId(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/texa/careapp/model/DongleModel;->save()Ljava/lang/Long;

    .line 354
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observeInfosForConfigurationUpdate$22(Lcom/texa/careapp/model/DongleModel;Ljava/math/BigInteger;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/texa/careapp/carelib/CareObserverImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got interpreter version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/DongleModel;->setInterpreterVersion(Ljava/math/BigInteger;)V

    .line 360
    invoke-virtual {p0}, Lcom/texa/careapp/model/DongleModel;->save()Ljava/lang/Long;

    .line 361
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observeMulti$1(Lcom/texa/carelib/core/ObservableObject;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl$2;-><init>(Lio/reactivex/ObservableEmitter;Lcom/texa/carelib/core/ObservableObject;Ljava/util/List;)V

    .line 114
    invoke-interface {p0, v0}, Lcom/texa/carelib/core/ObservableObject;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method private static observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/ObservableObject;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/beans/PropertyChangeEvent;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda29;-><init>(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static observeMulti(Lcom/texa/carelib/core/ObservableObject;Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/ObservableObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/beans/PropertyChangeEvent;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda30;-><init>(Lcom/texa/carelib/core/ObservableObject;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private vehicleListenerObserver()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda28;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public careCommunicationChange()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/CommunicationStatus;",
            ">;"
        }
    .end annotation

    .line 417
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public careConnected()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/CommunicationStatus;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda11;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public careNotConnected()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/CommunicationStatus;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda22;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$careCommunicationChange$27$com-texa-careapp-carelib-CareObserverImpl(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 418
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl$4;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;Lio/reactivex/ObservableEmitter;)V

    .line 434
    iget-object v1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 436
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method public synthetic lambda$careConnected$28$com-texa-careapp-carelib-CareObserverImpl(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 446
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl$5;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;Lio/reactivex/ObservableEmitter;)V

    .line 463
    iget-object v1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v1, v2, :cond_0

    .line 464
    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method public synthetic lambda$careNotConnected$29$com-texa-careapp-carelib-CareObserverImpl(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 477
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl$6;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;Lio/reactivex/ObservableEmitter;)V

    .line 494
    iget-object v1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v1, v0}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 496
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-eq v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeAccessory$10$com-texa-careapp-carelib-CareObserverImpl(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->loadAccessoryInfo()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$observeAccessory$9$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeAccessoryInterpreterVersion$16$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "observeAccessoryInterpreterVersion - updated value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getInterpreterVersion()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getInterpreterVersion()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeAccessoryMainAppVersion$11$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeAccessoryMainAppVersionPending$12$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getPendingMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeAccessorySerialNumber$15$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "observeAccessorySerialNumber - got new value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeAccessoryServiceAppVersion$13$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeAccessoryServiceAppVersionPending$14$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getPendingServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeCareInfos$8$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/texa/careapp/carelib/CareObserverImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received new value for propoerty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeCareStatus$25$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result p1

    .line 400
    sget-object v0, Lcom/texa/careapp/carelib/CareObserverImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "care status update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->readableAccessoryStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$observeInfosForConfigurationUpdate$23$com-texa-careapp-carelib-CareObserverImpl(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 366
    :try_start_0
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {p1}, Lcom/texa/carelib/care/accessory/Accessory;->loadAccessoryInfo()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 368
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$observeParametersLastUpdate$18$com-texa-careapp-carelib-CareObserverImpl(Lio/reactivex/schedulers/Timed;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Lio/reactivex/schedulers/Timed;->time()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/DongleModel;->setLastParametersUpdate(Ljava/lang/Long;)V

    .line 307
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not save dongle model."

    .line 309
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public synthetic lambda$observeVinCode$17$com-texa-careapp-carelib-CareObserverImpl(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 294
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    invoke-interface {p1}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->getVehicleID()Ljava/lang/String;

    move-result-object p1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observeVinCode - got new value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$tripStartSmart$30$com-texa-careapp-carelib-CareObserverImpl(Lcom/texa/carelib/communication/CommunicationStatus;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-direct {p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->isInProgress(Lcom/texa/carelib/care/trips/CurrentTrip;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$tripStartSmart$31$com-texa-careapp-carelib-CareObserverImpl(Lcom/texa/carelib/communication/CommunicationStatus;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 520
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$tripStartSmart$32$com-texa-careapp-carelib-CareObserverImpl(Lcom/texa/carelib/communication/CommunicationStatus;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 524
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-direct {p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->isInProgress(Lcom/texa/carelib/care/trips/CurrentTrip;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public synthetic lambda$tripStartSmart$33$com-texa-careapp-carelib-CareObserverImpl(Lcom/texa/carelib/communication/CommunicationStatus;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->observeTripStartInfo()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$vehicleListenerObserver$19$com-texa-careapp-carelib-CareObserverImpl(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl$3;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;Lio/reactivex/ObservableEmitter;)V

    .line 333
    iget-object p1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->addVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)Lcom/texa/carelib/care/vehicle/VehicleListener;

    return-void
.end method

.method public observeAccessory(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, v0}, Lcom/texa/careapp/carelib/CareObserverImpl;->observeAccessory(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public observeAccessory(Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0, p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 171
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 174
    new-instance p2, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda31;

    invoke-direct {p2, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda31;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    :cond_0
    return-object p1
.end method

.method public observeAccessoryInterpreterVersion()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getInterpreterVersion()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "observeAccessoryInterpreterVersion - returning just: %s"

    .line 269
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_INTERPRETER_VERSION"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 273
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 277
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeAccessoryMainAppVersion()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/texa/careapp/carelib/CareObserverImpl;->isLoaded(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAIN_APP_VERSION"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 199
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 200
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeAccessoryMainAppVersionPending()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getPendingMainAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/texa/careapp/carelib/CareObserverImpl;->isLoaded(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_MAIN_APP_VERSION"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 211
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 212
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeAccessorySerialNumber()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "observeAccessorySerialNumber - returning just: %s"

    .line 249
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda8;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 253
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 257
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeAccessoryServiceAppVersion()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/texa/careapp/carelib/CareObserverImpl;->isLoaded(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERVICE_APP_VERSION"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda9;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 223
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 224
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeAccessoryServiceAppVersionPending()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/FirmwareVersion;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getPendingServiceAPPVersion()Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/texa/careapp/carelib/CareObserverImpl;->isLoaded(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_PENDING_SERVICE_APP_VERSION"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda10;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 235
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 236
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeCareInfos()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/accessory/Accessory;",
            ">;"
        }
    .end annotation

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAIN_APP_VERSION"

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    const-string v2, "com.texa.carelib.care.accessory.Accessory#PROPERTY_INTERPRETER_VERSION"

    const-string v3, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    .line 156
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v1, v0}, Lcom/texa/careapp/carelib/CareObserverImpl;->observeMulti(Lcom/texa/carelib/core/ObservableObject;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda12;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 162
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeCareStatus()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v0

    .line 395
    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "care status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->readableAccessoryStatus(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    const-string v1, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda13;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 398
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 403
    invoke-interface {v1}, Lcom/texa/carelib/care/accessory/Accessory;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeCurrentTrip()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    const-string v1, "com.texa.carelib.care.trips.CurrentTrip#TRIP_END_INFO"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda20;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda20;

    .line 409
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeDtc()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mVehicleTroubles:Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;

    const-string v1, "com.texa.carelib.care.vehicletroubles.VehicleTroubles#PROPERTY_DTCS"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda21;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda21;

    .line 381
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeInfosForConfigurationUpdate()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/DongleModel;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->observeVinCode()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda15;-><init>(Lcom/texa/careapp/model/DongleModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 350
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->observeAccessorySerialNumber()Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda16;

    invoke-direct {v3, v0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda16;-><init>(Lcom/texa/careapp/model/DongleModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    .line 357
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->observeAccessoryInterpreterVersion()Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda17;-><init>(Lcom/texa/careapp/model/DongleModel;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 341
    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda32;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 364
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeParametersLastUpdate()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/schedulers/Timed<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->vehicleListenerObserver()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda27;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda27;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->timestamp()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda33;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeTripStartInfo()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mTripStartObservable:Lio/reactivex/Observable;

    return-object v0
.end method

.method public observeTripStopInfo()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mTripStopObservable:Lio/reactivex/Observable;

    return-object v0
.end method

.method public observeVinCode()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    invoke-interface {v0}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->getVehicleID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "observeVinCode - returning just: %s"

    .line 289
    invoke-static {v2, v1}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    const-string v1, "com.texa.carelib.care.vehicleinfo.VehicleInfo#PROPERTY_VEHICLE_ID"

    invoke-static {v0, v1}, Lcom/texa/careapp/carelib/CareObserverImpl;->observe(Lcom/texa/carelib/core/ObservableObject;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda14;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 293
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 297
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public tripStartSmart()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/care/trips/CurrentTrip;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, v1, :cond_1

    .line 508
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-direct {p0, v0}, Lcom/texa/careapp/carelib/CareObserverImpl;->isInProgress(Lcom/texa/carelib/care/trips/CurrentTrip;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/texa/careapp/carelib/CareObserverImpl;->mCurrentTrip:Lcom/texa/carelib/care/trips/CurrentTrip;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->observeTripStartInfo()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->careConnected()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda23;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 519
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 520
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 523
    invoke-virtual {p0}, Lcom/texa/careapp/carelib/CareObserverImpl;->careConnected()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda24;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 524
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/carelib/CareObserverImpl;)V

    .line 525
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 527
    invoke-static {v1, v0}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
