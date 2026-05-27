.class public Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "TripStatisticsInfoParserV4.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/trips/TripStatisticsInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static AccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType; = null

.field public static final DATA_LENGTH:I = 0x5d4

.field private static final INDEX_ACCELERATION_COUNTERS:I = 0x114

.field private static final INDEX_ACCELERATION_THRESHOLD:I = 0x9

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_BRAKE_THRESHOLD:I = 0xb

.field private static final INDEX_HARD_ACCELERATION_COUNT:I = 0xd

.field private static final INDEX_HARD_BRAKE_COUNT:I = 0xf

.field private static final INDEX_RPM_COUNTERS_OVER_TEMP_THRESHOLD:I = 0xd4

.field private static final INDEX_RPM_COUNTERS_UNDER_TEMP_THRESHOLD:I = 0x94

.field private static final INDEX_SPEED_COUNTERS:I = 0x14

.field private static final INDEX_TEMPERATURE_THRESHOLD:I = 0x13

.field private static final INDEX_TRIP_IDLE_TIME:I = 0x11

.field private static final INDEX_TRIP_NUM:I = 0x5

.field private static final INDEX_VOLTAGE_COUNTERS:I = 0x594

.field public static RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static VehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static VehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x3f200000    # 0.625f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->AccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 43
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v1, -0x3fc00000    # -3.0f

    const/high16 v2, 0x437b0000    # 251.0f

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 44
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/4 v1, 0x0

    const/high16 v2, 0x45f80000    # 7936.0f

    const/high16 v3, 0x43800000    # 256.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 45
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 46
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v3, v4}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 48
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v0, v2, v3, v4}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->VehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 49
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const v2, 0x41a66666    # 20.8f

    const v3, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->VehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method getAccelerationAngleCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;
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
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMaxValueX()F

    move-result v0

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMinValueX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getBinSize()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 254
    rem-int/2addr p2, v0

    .line 255
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

.method getAccelerationIntensityCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;
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
    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMaxValueX()F

    move-result v0

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getMinValueX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/texa/carelib/care/trips/CountersDescriptionType;->getBinSize()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 261
    rem-int/2addr p2, v0

    .line 262
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

    .line 272
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

    .line 277
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

    .line 267
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

    .line 282
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
    .locals 4

    .line 61
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRawData([B)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVersion(I)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 65
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseTripNum([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 66
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseHardAccelerationCount([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardAccelerationCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 67
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseHardBrakeCount([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardBrakeCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseTripIdleTime([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripIdleTime(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 69
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseSpeedCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setSpeedCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 70
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseRPMUnderTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMUnderTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 71
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseRPMOverTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMOverTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 72
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseVoltageCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVoltageCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 74
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setSpeedCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 75
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMUnderTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 76
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMOverTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 77
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVoltageCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->VehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    sget-object v3, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->VehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 78
    invoke-virtual {p0, v2, v3, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parseVehicleAccelerationCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVehicleAccelerationCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    sget-object v1, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->VehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 79
    invoke-virtual {p1, v1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVehicleAccelerationAngleCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    sget-object v1, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->VehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 80
    invoke-virtual {p1, v1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVehicleAccelerationIntensityCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    .line 82
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->parse([B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseHardAccelerationCount([B)Ljava/lang/Integer;
    .locals 2

    .line 110
    array-length v0, p1

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0xd

    .line 113
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xe

    .line 114
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseHardBrakeCount([B)Ljava/lang/Integer;
    .locals 2

    .line 122
    array-length v0, p1

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0xf

    .line 125
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    .line 126
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 128
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

    .line 195
    array-length v0, p2

    const/16 v1, 0x114

    if-ge v0, v1, :cond_0

    .line 196
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->getRPMOverTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0xd4

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

    .line 216
    array-length v0, p2

    const/16 v1, 0xd4

    if-ge v0, v1, :cond_0

    .line 217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 219
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->getRPMUnderTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0x94

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

    .line 225
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

    .line 174
    array-length v0, p2

    const/16 v1, 0x94

    if-ge v0, v1, :cond_0

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 177
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->getSpeedCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit8 v3, v1, 0x14

    .line 182
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 183
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 184
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

    .line 134
    array-length v0, p1

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x11

    .line 139
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x0

    const/16 v1, 0x12

    .line 140
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseTripNum([B)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x5

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method parseVehicleAccelerationCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "Lcom/texa/carelib/care/trips/CountersDescriptionType;",
            "[B)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;",
            ">;"
        }
    .end annotation

    .line 151
    array-length v0, p3

    const/16 v1, 0x594

    if-ge v0, v1, :cond_0

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x240

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x480

    if-ge v1, v2, :cond_1

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x12

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->getAccelerationAngleCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x12

    invoke-virtual {p0, p2, v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->getAccelerationIntensityCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v3

    add-int/lit16 v4, v1, 0x114

    .line 160
    aget-byte v5, p3, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    .line 161
    aget-byte v4, p3, v4

    shl-int/lit8 v4, v4, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/2addr v5, v4

    .line 163
    new-instance v4, Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;

    invoke-direct {v4, v2, v3, v5}, Lcom/texa/carelib/care/trips/VehicleAccelerationCounter;-><init>(Lcom/texa/carelib/core/Range;Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
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

    .line 236
    array-length v0, p2

    const/16 v1, 0x5d4

    if-ge v0, v1, :cond_0

    .line 237
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 239
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 242
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV4;->getVoltageCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0x594

    .line 243
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 244
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 245
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-direct {v3, v2, v4}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method
