.class public Lcom/texa/care/eco_driving/RxAccessory;
.super Lcom/texa/care/eco_driving/RxObservableObject;
.source "RxAccessory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RxAccessory"


# instance fields
.field private final mAccessory:Lcom/texa/carelib/care/accessory/Accessory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/texa/care/eco_driving/RxObservableObject;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    .line 28
    new-instance v0, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda4;-><init>(Lcom/texa/care/eco_driving/RxAccessory;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/care/accessory/Accessory;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method static synthetic lambda$setDiagnosisMode$1(Lio/reactivex/CompletableEmitter;Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Lcom/texa/carelib/care/accessory/events/SetDiagnosisModeCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    invoke-interface {p0, p1}, Lio/reactivex/CompletableEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-care-eco_driving-RxAccessory(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 29
    sget-object v0, Lcom/texa/care/eco_driving/RxAccessory;->TAG:Ljava/lang/String;

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

    .line 30
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mPropertyChangeEventSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$setDiagnosisMode$2$com-texa-care-eco_driving-RxAccessory(ILio/reactivex/CompletableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda2;-><init>(Lio/reactivex/CompletableEmitter;)V

    invoke-interface {v0, p1, v1}, Lcom/texa/carelib/care/accessory/Accessory;->setDiagnosisMode(ILcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-interface {p2, p1}, Lio/reactivex/CompletableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setDiagnosisMode$3$com-texa-care-eco_driving-RxAccessory(I)Lio/reactivex/CompletableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda3;-><init>(Lcom/texa/care/eco_driving/RxAccessory;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public observeCurrentDate()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_CURRENT_DATE"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeDiagnosisMode()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda6;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_DIAGNOSIS_MODE"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeHardwareRevision()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/utils/Version;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda7;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_HARDWARE_REVISION"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeHostAuthentication()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_IS_AUTHENTICATED"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeInterpreterVersion()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda8;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_INTERPRETER_VERSION"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeLastPlugEventDate()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda9;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_PLUG_DATE"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeLastUnplugEventDate()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda10;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_LAST_UNPLUG_DATE"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeMACAddress()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda11;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_MAC_ADDRESS"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeSerialNumber()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda13;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_SERIAL_NUMBER"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public observeStatus()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda14;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_STATUS"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public obseveRunningApp()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/core/AppType;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory;->mAccessory:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda12;-><init>(Lcom/texa/carelib/care/accessory/Accessory;)V

    const-string v0, "com.texa.carelib.care.accessory.Accessory#PROPERTY_RUNNING_APP"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxAccessory;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setDiagnosisMode(I)Lio/reactivex/Completable;
    .locals 1

    .line 92
    new-instance v0, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda5;-><init>(Lcom/texa/care/eco_driving/RxAccessory;I)V

    invoke-static {v0}, Lio/reactivex/Completable;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
