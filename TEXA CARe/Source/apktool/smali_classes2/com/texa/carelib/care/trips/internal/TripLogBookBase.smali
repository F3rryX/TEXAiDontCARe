.class public abstract Lcom/texa/carelib/care/trips/internal/TripLogBookBase;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "TripLogBookBase.java"

# interfaces
.implements Lcom/texa/carelib/care/trips/TripLogBook;


# static fields
.field public static final TAG:Ljava/lang/String; = "TripLogBookBase"


# instance fields
.field private mEraseTripDataCallback:Lcom/texa/carelib/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/trips/events/TripDataErasedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private mTripDataDownloadListener:Lcom/texa/carelib/care/trips/TripDataDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 36
    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-void
.end method


# virtual methods
.method fireDownloadTripDataProgressChanged(Lcom/texa/carelib/care/trips/TripLogBook;F)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/trips/internal/TripLogBookBase;Lcom/texa/carelib/care/trips/TripLogBook;F)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;)V

    return-void
.end method

.method fireTripDataEraseCompleted(Lcom/texa/carelib/care/trips/TripLogBook;Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 78
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/trips/internal/TripLogBookBase;Lcom/texa/carelib/care/trips/TripLogBook;Lcom/texa/carelib/core/CareError;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mProfile:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public synthetic lambda$fireDownloadTripDataProgressChanged$2$com-texa-carelib-care-trips-internal-TripLogBookBase(Lcom/texa/carelib/care/trips/TripLogBook;F)V
    .locals 1

    .line 101
    new-instance v0, Lcom/texa/carelib/care/trips/events/TripDataDownloadProgressChangedEvent;

    invoke-direct {v0, p1, p2}, Lcom/texa/carelib/care/trips/events/TripDataDownloadProgressChangedEvent;-><init>(Ljava/lang/Object;F)V

    .line 102
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mTripDataDownloadListener:Lcom/texa/carelib/care/trips/TripDataDownloadListener;

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/trips/TripDataDownloadListener;->onTripDataDownloadProgressChanged(Lcom/texa/carelib/care/trips/events/TripDataDownloadProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$fireTripDataEraseCompleted$0$com-texa-carelib-care-trips-internal-TripLogBookBase(Lcom/texa/carelib/care/trips/TripLogBook;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/texa/carelib/care/trips/events/TripDataErasedEvent;

    invoke-direct {v0, p1, p2}, Lcom/texa/carelib/care/trips/events/TripDataErasedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 81
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mEraseTripDataCallback:Lcom/texa/carelib/core/Callback;

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->setEraseTripDataCallback(Lcom/texa/carelib/core/Callback;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$terminateTripDataDownload$1$com-texa-carelib-care-trips-internal-TripLogBookBase(Lcom/texa/carelib/care/trips/TripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 90
    new-instance v0, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    .line 91
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mTripDataDownloadListener:Lcom/texa/carelib/care/trips/TripDataDownloadListener;

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1, v0}, Lcom/texa/carelib/care/trips/TripDataDownloadListener;->onTripDataDownloadCompleted(Lcom/texa/carelib/care/trips/events/TripDataDownloadCompletedEvent;)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->setTripDataDownloadListener(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V

    :cond_0
    return-void
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->resetData(Z)V

    :goto_0
    return-void
.end method

.method resetData(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->setTripDataDownloadListener(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->setEraseTripDataCallback(Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

.method setEraseTripDataCallback(Lcom/texa/carelib/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/trips/events/TripDataErasedEvent;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mEraseTripDataCallback:Lcom/texa/carelib/core/Callback;

    return-void
.end method

.method protected setTripDataDownloadListener(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->mTripDataDownloadListener:Lcom/texa/carelib/care/trips/TripDataDownloadListener;

    return-void
.end method

.method terminateTripDataDownload(Lcom/texa/carelib/care/trips/TripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/TripLogBook;",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/care/trips/internal/TripLogBookBase;Lcom/texa/carelib/care/trips/TripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x0

    invoke-interface {v0, v1, p2, p3, p1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
