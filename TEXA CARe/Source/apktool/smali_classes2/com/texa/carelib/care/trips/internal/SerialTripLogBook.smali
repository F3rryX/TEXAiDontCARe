.class public Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;
.super Lcom/texa/carelib/care/trips/internal/TripLogBookBase;
.source "SerialTripLogBook.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialTripLogBook"


# instance fields
.field private final mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

.field private mStatus:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

.field private mTripsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mTripsInfo:Ljava/util/List;

    .line 64
    instance-of p2, p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz p2, :cond_0

    .line 65
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    const/16 p2, 0x34

    const/4 v0, 0x1

    .line 66
    invoke-interface {p1, v0, p2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    const/16 p2, 0x64

    .line 68
    invoke-interface {p1, v0, p2}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->enableCommandSubscription(ZI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    .line 73
    :goto_0
    sget-object p1, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->Idle:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mStatus:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    return-void
.end method

.method static synthetic access$200(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;)Lcom/texa/carelib/profile/internal/SerialProfileProxy;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    return-object p0
.end method


# virtual methods
.method public clearTrips(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 181
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mTripsInfo:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mTripsInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mTripsInfo:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "com.texa.carelib.care.trips.TripLogBook#PROPERTY_TRIPS_INFO"

    invoke-direct {v0, p0, v2, p1, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mTripsInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public eraseTripsInfo(Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/trips/events/TripDataErasedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#eraseTripsInfo()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/core/Callback;)V

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const p1, 0x493e0

    .line 126
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setTimeout(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    const/16 p1, 0x32

    .line 127
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setPriority(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    .line 128
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->build()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->execute(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)V

    return-void

    .line 104
    :cond_0
    new-instance p1, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;

    invoke-direct {p1}, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;-><init>()V

    throw p1

    .line 100
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public getTripsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mTripsInfo:Ljava/util/List;

    return-object v0
.end method

.method isCommandSupported(I)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->getCommandVerifier()Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;->isCommandSupported(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isErasingTripsInfo()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mStatus:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->isErasingTripInfo()Z

    move-result v0

    return v0
.end method

.method public isReadingTripsInfo()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mStatus:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->isReadingTripInfo()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$eraseTripsInfo$0$com-texa-carelib-care-trips-internal-SerialTripLogBook(Lcom/texa/carelib/core/Callback;)V
    .locals 3

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->canReadLogBook()Z

    move-result v0
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Cannot erase trip log book at this moment."

    if-eqz v0, :cond_1

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mStatus:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->canReadTrips()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->setEraseTripDataCallback(Lcom/texa/carelib/core/Callback;)V

    .line 118
    sget-object p1, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->EraseTrips:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->setStatus(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;)V

    .line 120
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0x35

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {p1, v1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    invoke-direct {p1, v1}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 122
    sget-object v0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not erase trip log book at this moment."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$1$com-texa-carelib-care-trips-internal-SerialTripLogBook()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p0, v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->fireDownloadTripDataProgressChanged(Lcom/texa/carelib/care/trips/TripLogBook;F)V

    return-void
.end method

.method public synthetic lambda$readTripsInfo$2$com-texa-carelib-care-trips-internal-SerialTripLogBook(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V
    .locals 4

    .line 142
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->setTripDataDownloadListener(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object p1

    invoke-interface {p1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->canReadLogBook()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mStatus:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->canReadTrips()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    sget-object p1, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->DownloadTrips:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->setStatus(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;)V

    .line 153
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object p1

    new-instance v0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;)V

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 156
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0x34

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    const-string v0, "Could not read the trip log book at this moment."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Could not read the trip log book at this moment. Is the authentication with the dongle established successfully?"

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 158
    sget-object v0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ""

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v2, 0x1

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p0, v0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->terminateTripDataDownload(Lcom/texa/carelib/care/trips/TripLogBook;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    throw p1
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mStatus:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {p1, p0, p2, p3}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->onMessageReceived(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method public readTripsInfo(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#readTripsInfo()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    const p1, 0x36ee80

    .line 166
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setTimeout(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    const/16 p1, 0x32

    .line 167
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->setPriority(I)Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;

    .line 168
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask$Builder;->build()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->execute(Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;)V

    return-void

    .line 138
    :cond_0
    new-instance p1, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;

    invoke-direct {p1}, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;-><init>()V

    throw p1

    .line 134
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method protected resetData(Z)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->resetData(Z)V

    .line 175
    sget-object v0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->Idle:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->setStatus(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->clearTrips(Z)V

    return-void
.end method

.method sendMessage(Lcom/texa/carelib/communication/Message;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_0
    return-void
.end method

.method setStatus(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mStatus:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    return-void
.end method

.method setTripInfos(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mTripsInfo:Ljava/util/List;

    .line 192
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->mTripsInfo:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 194
    new-instance p2, Ljava/beans/PropertyChangeEvent;

    const-string v1, "com.texa.carelib.care.trips.TripLogBook#PROPERTY_TRIPS_INFO"

    invoke-direct {p2, p0, v1, v0, p1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_0
    return-void
.end method

.method terminateEraseTrips(Lcom/texa/carelib/core/CareError;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->clearTrips(Z)V

    .line 218
    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->fireTripDataEraseCompleted(Lcom/texa/carelib/care/trips/TripLogBook;Lcom/texa/carelib/core/CareError;)V

    .line 219
    sget-object p1, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;->Idle:Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/SerialTripLogBook;->setStatus(Lcom/texa/carelib/care/trips/internal/SerialTripLogBook$Status;)V

    .line 220
    invoke-static {}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->getInstance()Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->executeNext()Lcom/texa/carelib/profile/taskexecutor/SynchronizedTask;

    return-void
.end method
