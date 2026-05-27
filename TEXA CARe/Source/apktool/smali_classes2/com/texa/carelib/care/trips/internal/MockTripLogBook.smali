.class public Lcom/texa/carelib/care/trips/internal/MockTripLogBook;
.super Lcom/texa/carelib/care/trips/internal/TripLogBookBase;
.source "MockTripLogBook.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MockTripLogBook"

.field private static final TRIP_ODOMETER_LENGTH:I = 0x64

.field private static final TRIP_ODOMETER_OFFSET:I = 0x3e8


# instance fields
.field private mCachedTripsInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

.field private volatile mErasePending:Z

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile mReadPending:Z

.field private mTripsInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
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

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 238
    new-instance p1, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    sget-object p2, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->TAG:Ljava/lang/String;

    const-string v0, "mCachedTripsInfoLock"

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    .line 243
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mTripsInfo:Landroid/util/SparseArray;

    .line 40
    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->initCachedTripsInfo()V

    return-void
.end method

.method private createTrip(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/TripInfo;
    .locals 10

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v1, 0x7df

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 83
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 84
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {v7, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 86
    new-instance v0, Lcom/texa/carelib/care/trips/TripInfo;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/TripInfo;-><init>()V

    .line 87
    sget-object v1, Lcom/texa/carelib/care/trips/TripStatus;->Ended:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/trips/TripInfo;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)Lcom/texa/carelib/care/trips/TripInfo;

    .line 88
    new-instance v1, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    invoke-direct {v1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;-><init>()V

    .line 90
    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v2

    const/16 v3, 0x80

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v2

    .line 92
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v2

    .line 93
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x64

    mul-long v4, v4, v8

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v2

    const v4, 0x41166666    # 9.4f

    .line 94
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setMinVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v2

    const v4, 0x4144cccd    # 12.3f

    .line 95
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setAverageVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    const/16 v2, 0xa

    const/4 v4, 0x1

    .line 97
    invoke-virtual {v7, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 99
    new-instance v5, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    invoke-direct {v5}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;-><init>()V

    .line 101
    invoke-virtual {v5, v3}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v6

    .line 102
    invoke-virtual {v6, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v6

    .line 103
    invoke-virtual {v6, v3}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v3

    .line 104
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v3

    .line 105
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long v6, v6, v8

    long-to-float v6, v6

    const v7, 0x44898000    # 1100.0f

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v3

    const v6, 0x4164cccd    # 14.3f

    .line 106
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setMaxVoltageEngineOn(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v3

    .line 107
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setDriverID(Ljava/util/UUID;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 109
    new-instance v3, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    invoke-direct {v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;-><init>()V

    .line 111
    invoke-virtual {v3, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v6

    const/4 v7, 0x2

    .line 112
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardAccelerationCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v6

    .line 113
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripIdleTime(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardBrakeCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    .line 116
    invoke-virtual {v1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/TripInfo;->setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)Lcom/texa/carelib/care/trips/TripInfo;

    .line 117
    invoke-virtual {v5}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/TripInfo;->setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/TripInfo;

    .line 118
    invoke-virtual {v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/TripInfo;->setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/TripInfo;

    return-object v0
.end method

.method private static getTripsInfoAsList(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 224
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 226
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 228
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 229
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initCachedTripsInfo()V
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "initCachedTripsInfo"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 46
    :try_start_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfo:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->createTrip(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/TripInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfo:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-wide/16 v3, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->createTrip(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/TripInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfo:Landroid/util/SparseArray;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->createTrip(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/TripInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method


# virtual methods
.method public declared-synchronized eraseTripsInfo(Lcom/texa/carelib/core/Callback;)V
    .locals 4
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

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mErasePending:Z

    .line 144
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/trips/internal/MockTripLogBook;Lcom/texa/carelib/core/Callback;)V

    const-wide/16 v2, 0x96

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTripsInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "getTripsInfo"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mTripsInfo:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->getTripsInfoAsList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method public isErasingTripsInfo()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mErasePending:Z

    return v0
.end method

.method public isReadingTripsInfo()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mReadPending:Z

    return v0
.end method

.method public synthetic lambda$eraseTripsInfo$0$com-texa-carelib-care-trips-internal-MockTripLogBook(Lcom/texa/carelib/core/Callback;)V
    .locals 2

    .line 145
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->setEraseTripDataCallback(Lcom/texa/carelib/core/Callback;)V

    .line 146
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v0, "eraseTripsInfo"

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 148
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mErasePending:Z

    const/4 p1, 0x0

    .line 155
    invoke-virtual {p0, p0, p1}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->fireTripDataEraseCompleted(Lcom/texa/carelib/care/trips/TripLogBook;Lcom/texa/carelib/core/CareError;)V

    return-void

    :catchall_0
    move-exception p1

    .line 151
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1
.end method

.method public synthetic lambda$readTripsInfo$1$com-texa-carelib-care-trips-internal-MockTripLogBook()V
    .locals 7

    .line 175
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v1, "readTripsInfo"

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mTripsInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->getTripsInfoAsList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v0

    .line 178
    new-instance v2, Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mTripsInfo:Landroid/util/SparseArray;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 180
    :goto_0
    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfo:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mTripsInfo:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfo:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mTripsInfo:Landroid/util/SparseArray;

    invoke-static {v3}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->getTripsInfoAsList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v4, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v4, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 189
    iput-boolean v2, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mReadPending:Z

    .line 191
    new-instance v1, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.trips.TripLogBook#PROPERTY_TRIPS_INFO"

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void

    :catchall_0
    move-exception v0

    .line 186
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method

.method public onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    .line 211
    invoke-virtual {p1}, Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;->getCommunicationStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    .line 213
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, p1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->initCachedTripsInfo()V

    :cond_0
    const/4 p1, 0x0

    .line 217
    iput-boolean p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mErasePending:Z

    .line 218
    iput-boolean p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mReadPending:Z

    return-void
.end method

.method public declared-synchronized readTripsInfo(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    monitor-enter p0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->setTripDataDownloadListener(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V

    .line 171
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/trips/internal/MockTripLogBook;)V

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mReadPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 166
    :cond_0
    :try_start_1
    new-instance p1, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;

    invoke-direct {p1}, Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;-><init>()V

    throw p1

    .line 162
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected resetData(Z)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripLogBookBase;->resetData(Z)V

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    const-string v0, "resetData"

    invoke-virtual {p1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 66
    :try_start_0
    iget-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mTripsInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->getTripsInfoAsList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    .line 67
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mTripsInfo:Landroid/util/SparseArray;

    .line 68
    invoke-static {v1}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->getTripsInfoAsList(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v2, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 74
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    const-string v2, "com.texa.carelib.care.trips.TripLogBook#PROPERTY_TRIPS_INFO"

    invoke-direct {v0, p0, v2, p1, v1}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 71
    iget-object v1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mCachedTripsInfoLock:Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    invoke-virtual {v1, v0}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    .line 77
    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockTripLogBook;->mTripsInfo:Landroid/util/SparseArray;

    :goto_0
    return-void
.end method
