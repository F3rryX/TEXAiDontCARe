.class public Lcom/texa/carelib/care/logger/internal/MockCareLogger;
.super Lcom/texa/carelib/profile/ProfileSubModule;
.source "MockCareLogger.java"

# interfaces
.implements Lcom/texa/carelib/care/logger/CareLogger;


# static fields
.field private static final TAG:Ljava/lang/String; = "MockCareLogger"


# instance fields
.field private final mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

.field private mOutputStream:Ljava/io/OutputStream;

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


# direct methods
.method public static synthetic $r8$lambda$KgFQNTUwZJdnSyVkfBwHu4K9XpI(Lcom/texa/carelib/care/logger/internal/MockCareLogger;)V
    .locals 0

    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->generateLog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/texa/carelib/profile/ProfileSubModule;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 44
    iput-object p2, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-void
.end method

.method private generateLog()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log event at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 97
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    sget-object v1, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not write the CARe log."

    invoke-static {v1, v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mFeatureVerifier:Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    return-object v0
.end method

.method private getScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private releaseScheduler()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    return-void
.end method


# virtual methods
.method public beginLogUpdate(Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mOutputStream:Ljava/io/OutputStream;

    .line 63
    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/care/logger/internal/MockCareLogger$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/carelib/care/logger/internal/MockCareLogger$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/logger/internal/MockCareLogger;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 60
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/OperationAlreadyRunningException;

    invoke-direct {p1}, Lcom/texa/carelib/core/OperationAlreadyRunningException;-><init>()V

    throw p1

    .line 56
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public endLogUpdate()V
    .locals 3

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mOutputStream:Ljava/io/OutputStream;

    .line 70
    iget-object v1, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 71
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 72
    iput-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mScheduleFutureLogEvents:Ljava/util/concurrent/ScheduledFuture;

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->releaseScheduler()V

    return-void
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 81
    sget-object v0, Lcom/texa/carelib/care/logger/internal/MockCareLogger$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

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

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/logger/internal/MockCareLogger;->endLogUpdate()V

    :goto_0
    return-void
.end method
