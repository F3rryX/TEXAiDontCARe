.class public Lcom/texa/care/eco_driving/RxCommunication;
.super Lcom/texa/care/eco_driving/RxObservableObject;
.source "RxCommunication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCommunication:Lcom/texa/carelib/communication/Communication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/texa/care/eco_driving/RxCurrentTrip;

    const-string v0, "RxCurrentTrip"

    sput-object v0, Lcom/texa/care/eco_driving/RxCommunication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/Communication;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/texa/care/eco_driving/RxObservableObject;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/care/eco_driving/RxCommunication;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 24
    new-instance v0, Lcom/texa/care/eco_driving/RxCommunication$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxCommunication$$ExternalSyntheticLambda1;-><init>(Lcom/texa/care/eco_driving/RxCommunication;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-care-eco_driving-RxCommunication(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 25
    sget-object v0, Lcom/texa/care/eco_driving/RxCommunication;->TAG:Ljava/lang/String;

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

    .line 26
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCommunication;->mPropertyChangeEventSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public observeCommunicationStatus()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/communication/CommunicationStatus;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxCommunication;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxCommunication$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxCommunication$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/communication/Communication;)V

    const-string v0, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxCommunication;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
