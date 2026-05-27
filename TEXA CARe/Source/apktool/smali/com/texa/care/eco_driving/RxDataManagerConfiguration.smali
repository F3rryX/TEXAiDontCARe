.class Lcom/texa/care/eco_driving/RxDataManagerConfiguration;
.super Lcom/texa/care/eco_driving/RxObservableObject;
.source "RxDataManagerConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RxDataManagerConfiguration"


# instance fields
.field private final mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/texa/care/eco_driving/RxObservableObject;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    .line 23
    new-instance v0, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda3;-><init>(Lcom/texa/care/eco_driving/RxDataManagerConfiguration;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-care-eco_driving-RxDataManagerConfiguration(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 24
    sget-object v0, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->TAG:Ljava/lang/String;

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

    .line 25
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->mPropertyChangeEventSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method observeAccelerationThreshold()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    const-string v0, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_ACCELERATION_THRESHOLD"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observeBrakeThreshold()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    const-string v0, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_BRAKE_THRESHOLD"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method observeTemperatureThreshold()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->mDataManagerConfiguration:Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;)V

    const-string v0, "com.texa.carelib.care.datamanagerconfiguration.DataManagerConfiguration#PROPERTY_TEMPERATURE_THRESHOLD"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxDataManagerConfiguration;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
