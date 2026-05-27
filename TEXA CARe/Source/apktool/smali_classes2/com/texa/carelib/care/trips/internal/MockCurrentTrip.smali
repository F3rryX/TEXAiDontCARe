.class public Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;
.super Lcom/texa/carelib/care/trips/internal/CurrentTripBase;
.source "MockCurrentTrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripEndedRunnable;,
        Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripInProgressRunnable;,
        Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;,
        Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;
    }
.end annotation


# static fields
.field private static final DEFAULT_IN_PROGRESS_DURATION:I = 0x4e20

.field private static final DEFAULT_SEARCHING_DELAY:I = 0xfa

.field private static final DEFAULT_SEARCHING_DURATION:I = 0x1388

.field private static final DEFAULT_SIMULATOR_DRIVER_ID:Ljava/util/UUID;

.field private static final DEFAULT_START_TRIP_AVERAGE_VOLTAGE_ENGINE_OFF:F = 12.2f

.field private static final DEFAULT_START_TRIP_MIN_VOLTAGE_ENGINE_OFF:F = 11.8f

.field private static final DEFAULT_START_TRIP_ODOMETER:F = 516.9f

.field private static final DEFAULT_STOP_TRIP_AVERAGE_VOLTAGE_ENGINE_ON:F = 14.0f

.field private static final DEFAULT_STOP_TRIP_ODOMETER:F = 597.3f

.field public static final EXTRA_DRIVER_ID:Ljava/lang/String; = "SimulatorDriverID"

.field public static final EXTRA_IN_PROGRESS_DURATION:Ljava/lang/String;

.field public static final EXTRA_SEARCHING_DELAY:Ljava/lang/String;

.field public static final EXTRA_SEARCHING_DURATION:Ljava/lang/String;

.field public static final EXTRA_START_TRIP_AVERAGE_VOLTAGE_ENGINE_OFF:Ljava/lang/String; = "StartTripAverageVoltageEngineOff"

.field public static final EXTRA_START_TRIP_MIN_VOLTAGE_ENGINE_OFF:Ljava/lang/String; = "StartTripMinVoltageEngineOff"

.field public static final EXTRA_START_TRIP_ODOMETER:Ljava/lang/String; = "StartTripOdometer"

.field public static final EXTRA_STOP_TRIP_AVERAGE_VOLTAGE_ENGINE_ON:Ljava/lang/String; = "StopTripAverageVoltageEngineOn"

.field public static final EXTRA_STOP_TRIP_ODOMETER:Ljava/lang/String; = "StopTripOdometer"

.field private static final LOAD_TRIP_INFO_DELAY:I = 0x1f4

.field private static final MOCK_TRIP_NUM:Ljava/lang/Long;

.field public static final TAG:Ljava/lang/String; = "MockCurrentTrip"


# instance fields
.field private mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

.field private final mTripBeginInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

.field private final mTripEndInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

.field private final mTripStatisticsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MockCurrentTrip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SearchingDelay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->EXTRA_SEARCHING_DELAY:Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".SearchingDuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->EXTRA_SEARCHING_DURATION:Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->EXTRA_IN_PROGRESS_DURATION:Ljava/lang/String;

    const-wide/16 v0, 0x4

    .line 285
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->MOCK_TRIP_NUM:Ljava/lang/Long;

    .line 297
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->DEFAULT_SIMULATOR_DRIVER_ID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 318
    new-instance p1, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object p2, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->TAG:Ljava/lang/String;

    const-string v0, "mTripBeginInfoLock"

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripBeginInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 319
    new-instance p1, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v0, "mTripEndInfoLock"

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripEndInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 320
    new-instance p1, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v0, "mTripStatisticsInfoLock"

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripStatisticsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripBeginInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/care/trips/TripBeginInfo;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    return-object p0
.end method

.method static synthetic access$102(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Lcom/texa/carelib/care/trips/TripBeginInfo;)Lcom/texa/carelib/care/trips/TripBeginInfo;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Long;
    .locals 1

    .line 32
    sget-object v0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->MOCK_TRIP_NUM:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripEndInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/care/trips/TripEndInfo;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    return-object p0
.end method

.method static synthetic access$402(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/TripEndInfo;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    return-object p1
.end method

.method static synthetic access$500()Ljava/util/UUID;
    .locals 1

    .line 32
    sget-object v0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->DEFAULT_SIMULATOR_DRIVER_ID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$600(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripStatisticsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;)Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    return-object p0
.end method

.method static synthetic access$702(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    return-object p1
.end method

.method private getScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private releaseScheduler()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getProfile()Lcom/texa/carelib/profile/Profile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawData()[B
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getRawData()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getTripBeginInfo()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getTripEndInfo()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripID()Ljava/math/BigInteger;
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getTripID()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    .locals 1

    .line 32
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->getTripStatisticsInfo()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$loadTripInfo$0$com-texa-carelib-care-trips-internal-MockCurrentTrip(Ljava/util/EnumSet;)V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripBeginInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "loadTripInfo"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 46
    :try_start_0
    sget-object v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Begin:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripBeginInfo:Lcom/texa/carelib/care/trips/TripBeginInfo;

    if-eqz v0, :cond_0

    .line 47
    new-instance v2, Lcom/texa/carelib/care/trips/TripBeginInfo;

    invoke-direct {v2, v0}, Lcom/texa/carelib/care/trips/TripBeginInfo;-><init>(Lcom/texa/carelib/care/trips/TripBeginInfo;)V

    invoke-virtual {p0, v2}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripBeginInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    const-wide/16 v2, 0x1f4

    .line 55
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    :catch_0
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripEndInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 61
    :try_start_2
    sget-object v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->End:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripEndInfo:Lcom/texa/carelib/care/trips/TripEndInfo;

    if-eqz v0, :cond_2

    .line 62
    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->from(Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v0

    .line 64
    sget-object v4, Lcom/texa/carelib/care/trips/TripStatus;->Ended:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 65
    invoke-static {}, Lcom/texa/carelib/core/utils/internal/Utils;->getUTCNow()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripEndInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 74
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 78
    :catch_1
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripStatisticsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 80
    :try_start_4
    sget-object v0, Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;->Statistics:Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripStatisticsInfo:Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    if-eqz p1, :cond_3

    .line 81
    invoke-static {p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->from(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripStatisticsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripStatisticsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    :catchall_1
    move-exception p1

    .line 71
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripEndInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    :catchall_2
    move-exception p1

    .line 51
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->mTripBeginInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public bridge synthetic loadTripInfo()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->loadTripInfo()V

    return-void
.end method

.method public loadTripInfo(Ljava/util/EnumSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/texa/carelib/care/trips/CurrentTrip$TripInfoType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/EnumSet;)V

    const-wide/16 v2, 0x1f4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 40
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 4

    .line 92
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    .line 94
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 96
    sget-object v0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$1;->$SwitchMap$com$texa$carelib$communication$CommunicationStatus:[I

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->releaseScheduler()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;

    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripSearchingRunnable;-><init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;->EXTRA_SEARCHING_DELAY:Ljava/lang/String;

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void
.end method

.method public bridge synthetic setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)V

    return-void
.end method

.method public bridge synthetic setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)V

    return-void
.end method

.method public bridge synthetic setTripID(Ljava/math/BigInteger;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripID(Ljava/math/BigInteger;)V

    return-void
.end method

.method public bridge synthetic setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)V

    return-void
.end method

.method public bridge synthetic setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/CurrentTripBase;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)V

    return-void
.end method
