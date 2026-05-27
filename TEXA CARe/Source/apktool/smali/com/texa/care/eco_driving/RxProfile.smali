.class public Lcom/texa/care/eco_driving/RxProfile;
.super Lcom/texa/care/eco_driving/RxObservableObject;
.source "RxProfile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RxProfile"


# instance fields
.field private mAuthenticationErrorSubject:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfile:Lcom/texa/carelib/profile/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/texa/care/eco_driving/RxObservableObject;-><init>()V

    .line 25
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/care/eco_driving/RxProfile;->mAuthenticationErrorSubject:Lio/reactivex/subjects/Subject;

    .line 28
    iput-object p1, p0, Lcom/texa/care/eco_driving/RxProfile;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 29
    new-instance v0, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda2;-><init>(Lcom/texa/care/eco_driving/RxProfile;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/profile/Profile;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 33
    new-instance v0, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda1;-><init>(Lcom/texa/care/eco_driving/RxProfile;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/profile/Profile;->addProfileListener(Lcom/texa/carelib/profile/ProfileListener;)Lcom/texa/carelib/profile/ProfileListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-care-eco_driving-RxProfile(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/texa/care/eco_driving/RxProfile;->TAG:Ljava/lang/String;

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

    .line 31
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxProfile;->mPropertyChangeEventSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$new$1$com-texa-care-eco_driving-RxProfile(Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxProfile;->mAuthenticationErrorSubject:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public observeAuthenticationError()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxProfile;->mAuthenticationErrorSubject:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public observeProfileUpdates()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/beans/PropertyChangeEvent;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxProfile;->mPropertyChangeEventSubject:Lio/reactivex/subjects/Subject;

    return-object v0
.end method

.method public ready()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/texa/care/eco_driving/RxProfile;->mProfile:Lcom/texa/carelib/profile/Profile;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/profile/Profile;)V

    const-string v0, "com.texa.carelib.profile.Profile#PROPERTY_READY"

    invoke-virtual {p0, v0, v1}, Lcom/texa/care/eco_driving/RxProfile;->observePropertyChanges(Ljava/lang/String;Lcom/texa/care/eco_driving/RxObservableObject$Supplier;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
