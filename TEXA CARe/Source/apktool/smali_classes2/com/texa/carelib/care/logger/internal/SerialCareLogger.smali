.class public Lcom/texa/carelib/care/logger/internal/SerialCareLogger;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "SerialCareLogger.java"

# interfaces
.implements Lcom/texa/carelib/care/logger/CareLogger;
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialCareLogger"


# instance fields
.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;


# direct methods
.method public static synthetic $r8$lambda$k2zNQUU15mSQ2n9NCx4hhqLVc6o(Lcom/texa/carelib/care/logger/internal/SerialCareLogger;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->sendGetLogRequest()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 49
    iput-object p2, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    .line 51
    instance-of p2, p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz p2, :cond_0

    .line 52
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    iput-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    .line 57
    :goto_0
    new-instance p1, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object p2, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->TAG:Ljava/lang/String;

    const-string v0, "OutputStreamLock"

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    return-void
.end method

.method private getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method private getScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private onCommandGetLogReceived(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    if-nez p2, :cond_6

    .line 137
    iget-object p2, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v0, "beginLogUpdate"

    invoke-virtual {p2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    const-wide/16 v1, 0x7d0

    .line 139
    :try_start_0
    iget-object p2, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStream:Ljava/io/OutputStream;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_0

    .line 141
    iget-object p2, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 142
    iget-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStream:Ljava/io/OutputStream;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/care/logger/internal/SerialCareLogger$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/logger/internal/SerialCareLogger;)V

    :goto_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 147
    :try_start_1
    sget-object p2, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->TAG:Ljava/lang/String;

    const-string v3, "Could not forward "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2, p1, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    iget-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStream:Ljava/io/OutputStream;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 151
    :cond_3
    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance p2, Lcom/texa/carelib/care/logger/internal/SerialCareLogger$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/logger/internal/SerialCareLogger;)V

    goto :goto_0

    .line 150
    :goto_1
    iget-object p2, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStream:Ljava/io/OutputStream;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_5

    .line 151
    :cond_4
    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    new-instance v3, Lcom/texa/carelib/care/logger/internal/SerialCareLogger$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/logger/internal/SerialCareLogger;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v3, v1, v2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    .line 154
    :cond_5
    iget-object p2, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method private sendGetLogRequest()V
    .locals 2

    .line 126
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method private sendMessage(Lcom/texa/carelib/communication/Message;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public beginLogUpdate(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "beginLogUpdate"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object p1, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 83
    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->sendGetLogRequest()V

    return-void

    .line 75
    :cond_0
    :try_start_1
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {p1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 80
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    .line 69
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public endLogUpdate()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "endLogUpdate"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 90
    :try_start_0
    iput-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 96
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 93
    iget-object v2, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mOutputStreamLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 104
    sget-object v0, Lcom/texa/carelib/care/logger/internal/SerialCareLogger$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->endLogUpdate()V

    :goto_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 1

    .line 117
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    const/16 v0, 0x76

    if-ne v0, p1, :cond_0

    .line 118
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/care/logger/internal/SerialCareLogger;->onCommandGetLogReceived(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_0
    return-void
.end method
