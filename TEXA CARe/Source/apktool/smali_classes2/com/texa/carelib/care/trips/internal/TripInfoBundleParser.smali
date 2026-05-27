.class public Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;
.super Ljava/lang/Object;
.source "TripInfoBundleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$StructParser;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TripInfoBundleParser"


# instance fields
.field private final mParserHandler:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$StructParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0naHy6BZyERz5Gs_vMpYIoQou28(Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;Ljava/util/Map;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->parseBlockTripStatisticsInfo(Ljava/util/Map;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$EeDHI7jUnWLdwOMm4kTBeLWtG3c(Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;Ljava/util/Map;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->parseBlockTripEndInfo(Ljava/util/Map;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$nRZvqhtMkVBENAHFZcUIU9epSh8(Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;Ljava/util/Map;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->parseBlockTripBeginInfo(Ljava/util/Map;[B)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->mParserHandler:Landroid/util/LongSparseArray;

    .line 35
    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->TRIP_BEGIN_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 36
    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->TRIP_END_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 37
    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->TRIP_STATISTICS_INFO:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v1

    int-to-long v1, v1

    new-instance v3, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method private findNextBlock(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 111
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 112
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->getBlockID(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 115
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->getBlockSize(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 117
    invoke-virtual {p0, v2}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->isValidBlockID(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    .line 118
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private getBlockID(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 198
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 204
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private getBlockSize(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 210
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private parseBlockTripBeginInfo(Ljava/util/Map;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;[B)V"
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoFactory;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoFactory;-><init>()V

    .line 155
    invoke-virtual {v0, p2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoFactory;->create([B)Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 158
    sget-object p1, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Could not create a valid TripBeginInfo object from the input data!"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 162
    :cond_0
    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripBeginInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 165
    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "Received TripBeginInfo for trip: %d"

    invoke-static {v2, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Lcom/texa/carelib/care/trips/TripInfo;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/TripInfo;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/trips/TripStatus;->Ended:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/trips/TripInfo;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)Lcom/texa/carelib/care/trips/TripInfo;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/trips/TripInfo;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/trips/TripInfo;->setTripBeginInfo(Lcom/texa/carelib/care/trips/TripBeginInfo;)Lcom/texa/carelib/care/trips/TripInfo;

    :cond_2
    return-void
.end method

.method private parseBlockTripEndInfo(Ljava/util/Map;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;[B)V"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripEndInfoFactory;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoFactory;-><init>()V

    .line 133
    invoke-virtual {v0, p2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoFactory;->create([B)Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 136
    sget-object p1, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Could not create a valid TripEndInfo object from the input data!"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 140
    :cond_0
    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripEndInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "Received TripEndInfo for trip: %d"

    invoke-static {v2, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Lcom/texa/carelib/care/trips/TripInfo;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/TripInfo;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/trips/TripStatus;->Ended:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/trips/TripInfo;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)Lcom/texa/carelib/care/trips/TripInfo;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/trips/TripInfo;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/trips/TripInfo;->setTripEndInfo(Lcom/texa/carelib/care/trips/TripEndInfo;)Lcom/texa/carelib/care/trips/TripInfo;

    :cond_2
    return-void
.end method

.method private parseBlockTripStatisticsInfo(Ljava/util/Map;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;[B)V"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoFactory;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoFactory;-><init>()V

    .line 177
    invoke-virtual {v0, p2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoFactory;->create([B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 180
    sget-object p1, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Could not create a valid TripStatisticsInfo object from the input data!"

    invoke-static {p1, v0, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 184
    :cond_0
    invoke-virtual {p2}, Lcom/texa/carelib/care/trips/TripStatisticsInfo;->getTripNumber()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 186
    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v0, "Received TripStatisticsInfo for trip: %d"

    invoke-static {v2, v0, v3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Lcom/texa/carelib/care/trips/TripInfo;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/TripInfo;-><init>()V

    sget-object v2, Lcom/texa/carelib/care/trips/TripStatus;->Ended:Lcom/texa/carelib/care/trips/TripStatus;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/care/trips/TripInfo;->setTripStatus(Lcom/texa/carelib/care/trips/TripStatus;)Lcom/texa/carelib/care/trips/TripInfo;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/trips/TripInfo;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/care/trips/TripInfo;->setTripStatisticsInfo(Lcom/texa/carelib/care/trips/TripStatisticsInfo;)Lcom/texa/carelib/care/trips/TripInfo;

    :cond_2
    return-void
.end method


# virtual methods
.method getTripInfo(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    const/4 v1, 0x0

    .line 63
    :try_start_0
    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->TAG:Ljava/lang/String;

    const-string v3, "Position: %d/%d. Remaining: %d"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-static {v2, v3, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->getBlockID(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 66
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->getBlockSize(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 68
    invoke-virtual {p0, v3}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->isValidBlockID(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_4

    .line 69
    :cond_2
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->findNextBlock(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 70
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-ge v3, v5, :cond_3

    goto :goto_1

    .line 76
    :cond_3
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->getBlockID(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 78
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->getBlockSize(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 81
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v6, v5, :cond_5

    goto :goto_1

    .line 87
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v6, v6, [B

    .line 88
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string v9, "Found blockID: 0x%s(%s) Size:%d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v1

    invoke-static {v3}, Lcom/texa/carelib/core/internal/CareStructID;->getBlockName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v9, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->mParserHandler:Landroid/util/LongSparseArray;

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 94
    iget-object v2, p0, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->mParserHandler:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$StructParser;

    invoke-interface {v2, v0, v6}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser$StructParser;->parse(Ljava/util/Map;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 97
    sget-object v3, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Trip data parse error."

    invoke-static {v3, v2, v4, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_6
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-object v0
.end method

.method public getTripInfoList(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/TripInfo;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->getTripInfo(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected isValidBlockID(I)Z
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/TripInfoBundleParser;->mParserHandler:Landroid/util/LongSparseArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
