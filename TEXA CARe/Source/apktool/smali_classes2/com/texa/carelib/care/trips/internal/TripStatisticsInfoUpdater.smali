.class Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater;
.super Ljava/lang/Object;
.source "TripStatisticsInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater$TripStatisticsInfoUpdaterException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TripStatisticsInfoUpdater"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected incrementOffset(I[BI)I
    .locals 0

    .line 46
    aget-byte p2, p2, p3

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p1, p2

    return p1
.end method

.method public declared-synchronized update([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater$TripStatisticsInfoUpdaterException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    :goto_0
    :try_start_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 27
    aget-byte v2, p2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 31
    invoke-virtual {p0, p2, v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater;->validateOffset([BI)V

    .line 32
    invoke-virtual {p0, v1, p2, v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater;->incrementOffset(I[BI)I

    move-result v1

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater;->validateOffset([BI)V

    .line 36
    invoke-virtual {p0, p1, v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater;->updateValue([BIB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateValue([BIB)V
    .locals 1

    .line 58
    aget-byte v0, p1, p2

    and-int/lit16 p3, p3, 0xff

    add-int/2addr v0, p3

    int-to-byte p3, v0

    aput-byte p3, p1, p2

    return-void
.end method

.method protected validateOffset([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater$TripStatisticsInfoUpdaterException;
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 70
    array-length v0, p1

    if-ge p2, v0, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater$TripStatisticsInfoUpdaterException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Offset out of bound exception[Data length: %d, offset=: %d]"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoUpdater$TripStatisticsInfoUpdaterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
