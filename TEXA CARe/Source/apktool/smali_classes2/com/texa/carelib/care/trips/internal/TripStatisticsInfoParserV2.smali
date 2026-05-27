.class public Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "TripStatisticsInfoParserV2.java"


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

.field private static final INDEX_VOLTAGE_COUNTERS:I = 0x152

.field public static final RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static final RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static final SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static final VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x3f200000    # 0.625f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->AccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 42
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v1, -0x3fc00000    # -3.0f

    const/high16 v2, 0x437b0000    # 251.0f

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 43
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/4 v1, 0x0

    const/high16 v2, 0x45f80000    # 7936.0f

    const/high16 v3, 0x43800000    # 256.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 44
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 45
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method getAccelerationCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;
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

    .line 253
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

    .line 265
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

    .line 270
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

    .line 260
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

.method getVoltageCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;
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

    .line 275
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
    .locals 6

    .line 56
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRawData([B)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVersion(I)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 60
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parseTripNum([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parseHardAccelerationCount([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardAccelerationCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parseHardBrakeCount([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardBrakeCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 63
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parseTripIdleTime([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripIdleTime(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 64
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parseSpeedCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setSpeedCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v3, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 65
    invoke-virtual {p0, v3, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parseRPMUnderTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMUnderTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v4, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 66
    invoke-virtual {p0, v4, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parseRPMOverTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMOverTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v5, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 68
    invoke-virtual {p0, v5, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parseVoltageCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVoltageCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setSpeedCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMUnderTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v4}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMOverTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    .line 73
    invoke-virtual {p1, v5}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVoltageCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    .line 75
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->parse([B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    return-object p1
.end method

.method parseAccelerationCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;
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

    .line 150
    array-length v0, p2

    const/16 v1, 0x152

    if-ge v0, v1, :cond_0

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->getAccelerationCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0x112

    .line 159
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 160
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 162
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-direct {v3, v2, v4}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method parseHardAccelerationCount([B)I
    .locals 2

    .line 110
    array-length v0, p1

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0xb

    .line 113
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xc

    .line 114
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method parseHardBrakeCount([B)I
    .locals 2

    .line 121
    array-length v0, p1

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0xd

    .line 124
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xe

    .line 125
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
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

    .line 194
    array-length v0, p2

    const/16 v1, 0x112

    if-ge v0, v1, :cond_0

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 200
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->getRPMOverTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0xd2

    .line 202
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 203
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

    .line 215
    array-length v0, p2

    const/16 v1, 0xd2

    if-ge v0, v1, :cond_0

    .line 216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->getRPMUnderTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0x92

    .line 222
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 223
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 224
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

    .line 173
    array-length v0, p2

    const/16 v1, 0x92

    if-ge v0, v1, :cond_0

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 176
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->getSpeedCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit8 v3, v1, 0x12

    .line 181
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 182
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 183
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-direct {v3, v2, v4}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method parseTripIdleTime([B)I
    .locals 3

    .line 132
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xf

    .line 137
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    const/16 v1, 0x10

    .line 138
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method protected parseTripNum([B)Ljava/lang/Long;
    .locals 4

    .line 97
    array-length v0, p1

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    .line 102
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v2, v0

    const/4 v0, 0x6

    .line 103
    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x8

    const v0, 0xff00

    and-int/2addr p1, v0

    int-to-long v0, p1

    add-long/2addr v2, v0

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method parseVoltageCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;
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

    .line 235
    array-length v0, p2

    const/16 v1, 0x192

    if-ge v0, v1, :cond_0

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 238
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV2;->getVoltageCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0x152

    .line 242
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 243
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 244
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-direct {v3, v2, v4}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method
