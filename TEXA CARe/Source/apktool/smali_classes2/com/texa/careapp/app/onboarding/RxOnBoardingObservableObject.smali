.class public Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;
.super Ljava/lang/Object;
.source "RxOnBoardingObservableObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RxOnBoardingObservableObject"


# instance fields
.field private final mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

.field private final mDongleModel:Lcom/texa/careapp/model/DongleModel;

.field private final mPropertyChangeEventSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/beans/PropertyChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mVehicleIdSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/model/DongleModel;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mDongleModel:Lcom/texa/careapp/model/DongleModel;

    .line 29
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 30
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    .line 32
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mPropertyChangeEventSubject:Lio/reactivex/subjects/PublishSubject;

    .line 33
    new-instance p1, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;)V

    invoke-interface {p2, p1}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 38
    invoke-interface {p3}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->getVehicleID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p3}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->getVehicleID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mVehicleIdSubject:Lio/reactivex/subjects/BehaviorSubject;

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mVehicleIdSubject:Lio/reactivex/subjects/BehaviorSubject;

    .line 44
    :goto_0
    new-instance p1, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;)V

    invoke-interface {p3, p1}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

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

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mPropertyChangeEventSubject:Lio/reactivex/subjects/PublishSubject;

    new-instance v1, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$_observePropertyChanges$3(Ljava/lang/String;Ljava/beans/PropertyChangeEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$_observePropertyChanges$4(Ljava/lang/Object;Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 115
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 117
    :cond_1
    sget-object p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->TAG:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "Null value receveid.."

    aput-object v2, p1, v1

    invoke-static {p0, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    sget-object p1, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not obtain the new property value!"

    aput-object v3, v2, v1

    aput-object p0, v2, v0

    invoke-static {p1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_2
    :goto_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$observePropertyChanges$2(Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-interface {p0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 95
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 97
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private observePropertyChanges(Ljava/lang/String;Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;)V

    invoke-static {v0}, Lio/reactivex/Observable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p2

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->_observePropertyChanges(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 92
    invoke-static {p2, p1}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-careapp-app-onboarding-RxOnBoardingObservableObject(Ljava/beans/PropertyChangeEvent;)V
    .locals 4

    .line 34
    sget-object v0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " oldValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " newValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mPropertyChangeEventSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-careapp-app-onboarding-RxOnBoardingObservableObject(Ljava/beans/PropertyChangeEvent;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.texa.carelib.care.vehicleinfo.VehicleInfo#PROPERTY_VEHICLE_ID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    invoke-interface {p1}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->getVehicleID()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mVehicleIdSubject:Lio/reactivex/subjects/BehaviorSubject;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mVehicleIdSubject:Lio/reactivex/subjects/BehaviorSubject;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mVehicleInfo:Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;

    invoke-interface {v0}, Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;->getVehicleID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method observeInterpreterVersion()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_INTERPRETER_VERSION"

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->observePropertyChanges(Ljava/lang/String;Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observeSerialNumber()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    invoke-direct {p0, v0, v1}, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->observePropertyChanges(Ljava/lang/String;Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observeVehicleID()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/RxOnBoardingObservableObject;->mVehicleIdSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method
