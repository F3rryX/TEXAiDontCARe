.class public Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "TripStatisticsInfoParserV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/trips/TripStatisticsInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final AccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static final DATA_LENGTH:I = 0x192

.field private static final INDEX_ACCELERATION_COUNTERS:I = 0x112

.field private static final INDEX_ACCELERATION_THRESHOLD:I = 0x7

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_BRAKE_THRESHOLD:I = 0x9

.field private static final INDEX_HARD_ACCELERATION_COUNT:I = 0xb

.field private static final INDEX_HARD_BRAKE_COUNT:I = 0xd

.field private static final INDEX_RPM_COUNTERS_OVER_TEMP_THRESHOLD:I = 0xd2

.field private static final INDEX_RPM_COUNTERS_UNDER_TEMP_THRESHOLD:I = 0x92

.field private static final INDEX_SPEED_COUNTERS:I = 0x12

.field private static final INDEX_TEMPERATURE_THRESHOLD:I = 0x11

.field private static final INDEX_TRIP_IDLE_TIME:I = 0xf

.field private static final INDEX_TRIP_NUM:I = 0x5

.field public static final RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static final RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static final SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/4 v1, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x3f200000    # 0.625f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->AccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 41
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v2, -0x3fc00000    # -3.0f

    const/high16 v3, 0x437b0000    # 251.0f

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {v0, v2, v3, v4}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 42
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v2, 0x45f80000    # 7936.0f

    const/high16 v3, 0x43800000    # 256.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 43
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method getRPMOverTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "I)",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/texa/carelib/core/Range;

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMinValueX()F

    move-result v1

    int-to-float v2, p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getBinSize()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMinValueX()F

    move-result v2

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getBinSize()F

    move-result p1

    mul-float p2, p2, p1

    add-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/texa/carelib/core/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method getRPMUnderTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "I)",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/texa/carelib/core/Range;

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMinValueX()F

    move-result v1

    int-to-float v2, p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getBinSize()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMinValueX()F

    move-result v2

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getBinSize()F

    move-result p1

    mul-float p2, p2, p1

    add-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/texa/carelib/core/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method getSpeedCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "I)",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/texa/carelib/core/Range;

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMinValueX()F

    move-result v1

    int-to-float v2, p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getBinSize()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMinValueX()F

    move-result v2

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getBinSize()F

    move-result p1

    mul-float p2, p2, p1

    add-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/texa/carelib/core/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public parse([B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;
    .locals 5

    .line 54
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRawData([B)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVersion(I)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->parseTripNumber([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->parseHardAccelerationCount([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardAccelerationCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->parseHardBrakeCount([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardBrakeCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->parseTripIdleTime([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripIdleTime(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 62
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->parseSpeedCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setSpeedCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v3, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 63
    invoke-virtual {p0, v3, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->parseRPMUnderTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMUnderTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v4, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 64
    invoke-virtual {p0, v4, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->parseRPMOverTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMOverTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setSpeedCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMUnderTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    .line 68
    invoke-virtual {p1, v4}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMOverTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    .line 71
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->parse([B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseHardAccelerationCount([B)Ljava/lang/Integer;
    .locals 2

    .line 108
    array-length v0, p1

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0xb

    .line 111
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc

    .line 112
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseHardBrakeCount([B)Ljava/lang/Integer;
    .locals 2

    .line 120
    array-length v0, p1

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0xd

    .line 123
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xe

    .line 124
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method parseRPMOverTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "[B)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 171
    array-length v0, p2

    const/16 v1, 0x112

    if-ge v0, v1, :cond_0

    .line 172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 174
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->getRPMOverTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0xd2

    .line 179
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 180
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 182
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-direct {v3, v2, v4}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method parseRPMUnderTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "[B)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 193
    array-length v0, p2

    const/16 v1, 0xd2

    if-ge v0, v1, :cond_0

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 196
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->getRPMUnderTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0x92

    .line 201
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 202
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 204
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-direct {v3, v2, v4}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method parseSpeedCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "[B)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 215
    array-length v0, p2

    const/16 v1, 0x92

    if-ge v0, v1, :cond_0

    .line 216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV1;->getSpeedCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit8 v3, v1, 0x12

    .line 223
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 224
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 226
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-direct {v3, v2, v4}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected parseTripIdleTime([B)Ljava/lang/Integer;
    .locals 2

    .line 132
    array-length v0, p1

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0xf

    .line 137
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x0

    const/16 v1, 0x10

    .line 138
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseTripNumber([B)Ljava/lang/Long;
    .locals 4

    .line 94
    array-length v0, p1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    .line 99
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v2, v0

    const/4 v0, 0x6

    .line 100
    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    int-to-long v0, p1

    add-long/2addr v2, v0

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
