.class public Lcom/texa/careapp/utils/TripLogBookReader;
.super Ljava/lang/Object;
.source "TripLogBookReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TripLogBookReader"


# instance fields
.field private mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

.field private final mTripLogBookListener:Lcom/texa/carelib/care/trips/TripDataDownloadListener;

.field private mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/sync/CAReWorkerManager;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/texa/careapp/utils/TripLogBookReader$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/TripLogBookReader$1;-><init>(Lcom/texa/careapp/utils/TripLogBookReader;)V

    iput-object v0, p0, Lcom/texa/careapp/utils/TripLogBookReader;->mTripLogBookListener:Lcom/texa/carelib/care/trips/TripDataDownloadListener;

    .line 83
    iput-object p1, p0, Lcom/texa/careapp/utils/TripLogBookReader;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    .line 84
    iput-object p2, p0, Lcom/texa/careapp/utils/TripLogBookReader;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/utils/TripLogBookReader;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/TripLogBookReader;->saveTripLogBook(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private saveTripLogBook(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/texa/careapp/utils/TripLogBookReader;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getCurrentVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "non posso scaricare il trip log book, currentVehicle \u00e8 null"

    .line 114
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "tripInfoList.size()=%s"

    invoke-static {v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 125
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/care/trips/TripInfo;

    .line 126
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/texa/careapp/model/TripModel;->from(Lcom/texa/carelib/care/trips/TripInfo;Ljava/lang/String;)Lcom/texa/careapp/model/TripModel;

    move-result-object v4

    .line 129
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    const-string v5, "Salvataggio viaggio riuscito: %1$s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v1

    .line 130
    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v3, "Salvataggio viaggio fallito (row = -1): %1$s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    .line 133
    invoke-static {v3, v5}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 136
    invoke-virtual {v3}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string v4, "Salvataggio viaggio fallito: %1$s"

    .line 137
    invoke-static {v3, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 143
    :cond_3
    invoke-direct {p0}, Lcom/texa/careapp/utils/TripLogBookReader;->scheduleTripSyncTaskOneShot()V

    return v3
.end method

.method private scheduleTripSyncTaskOneShot()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/texa/careapp/utils/TripLogBookReader;->mCAReWorkerManager:Lcom/texa/careapp/sync/CAReWorkerManager;

    invoke-virtual {v0}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleTripSync()V

    return-void
.end method


# virtual methods
.method public read(Lcom/texa/carelib/care/trips/TripLogBook;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Trip log book read invoked"

    .line 88
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-interface {p1}, Lcom/texa/carelib/care/trips/TripLogBook;->isReadingTripsInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget-object p1, Lcom/texa/careapp/utils/TripLogBookReader;->TAG:Ljava/lang/String;

    const-string v0, "Already reading trips info."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/utils/TripLogBookReader;->mTripLogBookListener:Lcom/texa/carelib/care/trips/TripDataDownloadListener;

    invoke-interface {p1, v1}, Lcom/texa/carelib/care/trips/TripLogBook;->readTripsInfo(Lcom/texa/carelib/care/trips/TripDataDownloadListener;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Finish reading"

    .line 103
    invoke-static {v0, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 99
    :catch_0
    sget-object p1, Lcom/texa/careapp/utils/TripLogBookReader;->TAG:Ljava/lang/String;

    const-string v0, "readTripsInfo false"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
