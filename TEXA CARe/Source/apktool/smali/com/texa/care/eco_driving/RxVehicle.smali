.class public Lcom/texa/care/eco_driving/RxVehicle;
.super Ljava/lang/Object;
.source "RxVehicle.java"


# instance fields
.field private mParametersUpdatedSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSupportedParametersIDsSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSupportedParametersSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Ljava/util/Set<",
            "Lcom/texa/carelib/care/vehicle/ValueInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/vehicle/Vehicle;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/texa/care/eco_driving/RxVehicle;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    .line 40
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/RxVehicle;->mParametersUpdatedSubject:Lio/reactivex/subjects/PublishSubject;

    .line 41
    invoke-interface {p1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/RxVehicle;->toSetOfValueInfo(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/RxVehicle;->mSupportedParametersSubject:Lio/reactivex/subjects/Subject;

    .line 42
    invoke-interface {p1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/RxVehicle;->mSupportedParametersIDsSubject:Lio/reactivex/subjects/Subject;

    .line 44
    new-instance v0, Lcom/texa/care/eco_driving/RxVehicle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxVehicle$$ExternalSyntheticLambda0;-><init>(Lcom/texa/care/eco_driving/RxVehicle;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 51
    new-instance v0, Lcom/texa/care/eco_driving/RxVehicle$1;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxVehicle$1;-><init>(Lcom/texa/care/eco_driving/RxVehicle;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->addVehicleListener(Lcom/texa/carelib/care/vehicle/VehicleListener;)Lcom/texa/carelib/care/vehicle/VehicleListener;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/care/eco_driving/RxVehicle;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/texa/care/eco_driving/RxVehicle;->mParametersUpdatedSubject:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private toSetOfValueInfo(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/texa/carelib/care/vehicle/ValueInfo;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 82
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/texa/care/eco_driving/RxVehicle;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-interface {v2, v1}, Lcom/texa/carelib/care/vehicle/Vehicle;->getValueInfo(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/ValueInfo;

    move-result-object v1

    .line 85
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-care-eco_driving-RxVehicle(Ljava/beans/PropertyChangeEvent;)V
    .locals 1

    .line 45
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.texa.carelib.care.vehicle.Vehicle#PROPERTY_SUPPORTED_DATA_IDS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/texa/care/eco_driving/RxVehicle;->mSupportedParametersIDsSubject:Lio/reactivex/subjects/Subject;

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxVehicle;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-interface {v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 47
    iget-object p1, p0, Lcom/texa/care/eco_driving/RxVehicle;->mSupportedParametersSubject:Lio/reactivex/subjects/Subject;

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxVehicle;->mVehicle:Lcom/texa/carelib/care/vehicle/Vehicle;

    invoke-interface {v0}, Lcom/texa/carelib/care/vehicle/Vehicle;->getSupportedDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/care/eco_driving/RxVehicle;->toSetOfValueInfo(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public observeParameterUpdates()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxVehicle;->mParametersUpdatedSubject:Lio/reactivex/subjects/PublishSubject;

    return-object v0
.end method

.method public observeSupportedParameters()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/Set<",
            "Lcom/texa/carelib/care/vehicle/ValueInfo;",
            ">;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxVehicle;->mSupportedParametersSubject:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public observeSupportedParametersIDs()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxVehicle;->mSupportedParametersIDsSubject:Lio/reactivex/subjects/Subject;

    return-object v0
.end method
