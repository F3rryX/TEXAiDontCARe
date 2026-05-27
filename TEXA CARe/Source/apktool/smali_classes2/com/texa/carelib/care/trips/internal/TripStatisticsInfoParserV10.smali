.class public Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "TripStatisticsInfoParserV10.java"


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

.field public static final DATA_LENGTH:I = 0x644

.field private static final INDEX_ACCELERATION_COUNTERS:I = 0x5c4

.field private static final INDEX_ACCELERATION_THRESHOLD:I = 0x9

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_BRAKE_THRESHOLD:I = 0xb

.field private static final INDEX_FINAL_ROTATION_MATRIX:I = 0x14

.field private static final INDEX_HARD_ACCELERATION_COUNT:I = 0xd

.field private static final INDEX_HARD_BRAKE_COUNT:I = 0xf

.field private static final INDEX_RPM_COUNTERS_OVER_TEMP_THRESHOLD:I = 0x104

.field private static final INDEX_RPM_COUNTERS_UNDER_TEMP_THRESHOLD:I = 0xc4

.field private static final INDEX_SPEED_COUNTERS:I = 0x44

.field private static final INDEX_TEMPERATURE_THRESHOLD:I = 0x13

.field private static final INDEX_TRIP_IDLE_TIME:I = 0x11

.field private static final INDEX_TRIP_NUM:I = 0x5

.field private static final INDEX_VEHICLE_ACCELERATION_COUNTERS:I = 0x144

.field private static final INDEX_VOLTAGE_COUNTERS:I = 0x604

.field public static RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static VehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static VehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

.field public static VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x3f200000    # 0.625f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->AccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 49
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v1, -0x3fc00000    # -3.0f

    const/high16 v2, 0x437b0000    # 251.0f

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 50
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/4 v1, 0x0

    const/high16 v2, 0x45f80000    # 7936.0f

    const/high16 v3, 0x43800000    # 256.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 51
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 52
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v3, v4}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 54
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v0, v2, v3, v4}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->VehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 55
    new-instance v0, Lcom/texa/carelib/care/trips/CountersDescriptionType;

    const v2, 0x41a66666    # 20.8f

    const v3, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/trips/CountersDescriptionType;-><init>(FFF)V

    sput-object v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->VehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method

.method private static varargs isAllEqualTo([B)Z
    .locals 2

    .line 100
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 101
    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 103
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
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

    .line 329
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

    .line 330
    rem-int/2addr p2, v0

    .line 331
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

    .line 324
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

    .line 336
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

    .line 337
    rem-int/2addr p2, v0

    .line 338
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

    .line 348
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

    .line 353
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

    .line 343
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

    .line 358
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

    .line 67
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRawData([B)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 70
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVersion(I)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseTripNum([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseHardAccelerationCount([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardAccelerationCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseHardBrakeCount([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setHardBrakeCount(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseTripIdleTime([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setTripIdleTime(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseRotationMatrixFinal([B)Lcom/texa/carelib/care/attitude/RotationMatrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRotationMatrixFinal(Lcom/texa/carelib/care/attitude/RotationMatrix;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 77
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseSpeedCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setSpeedCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->SpeedCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 78
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setSpeedCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 80
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseRPMUnderTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMUnderTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->RPMUnderTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 81
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMUnderTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 83
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseRPMOverTempThresholdCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMOverTempThresholdCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->RPMOverTempThresholdCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 84
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setRPMOverTempThresholdCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->VehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    sget-object v3, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->VehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 86
    invoke-virtual {p0, v2, v3, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseVehicleAccelerationCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVehicleAccelerationCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->VehicleAccelerationAngleCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 87
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVehicleAccelerationAngleCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->VehicleAccelerationIntensityCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 88
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVehicleAccelerationIntensityCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->AccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 90
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseAccelerationCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setAccelerationCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->AccelerationCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 91
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setAccelerationCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object v1

    sget-object v2, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 93
    invoke-virtual {p0, v2, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseVoltageCounters(Lcom/texa/carelib/care/trips/CountersDescriptionType;[B)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVoltageCounters(Ljava/util/List;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    move-result-object p1

    sget-object v1, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->VoltageCountersInfo:Lcom/texa/carelib/care/trips/CountersDescriptionType;

    .line 94
    invoke-virtual {p1, v1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->setVoltageCountersInfo(Lcom/texa/carelib/care/trips/CountersDescriptionType;)Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;

    .line 96
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripStatisticsInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parse([B)Lcom/texa/carelib/care/trips/TripStatisticsInfo;

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

    .line 200
    array-length v0, p2

    const/16 v1, 0x604

    if-ge v0, v1, :cond_0

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getAccelerationCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0x5c4

    .line 208
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 209
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 210
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

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseHardAccelerationCount([B)Ljava/lang/Integer;
    .locals 2

    .line 159
    array-length v0, p1

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0xd

    .line 162
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xe

    .line 163
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseHardBrakeCount([B)Ljava/lang/Integer;
    .locals 2

    .line 171
    array-length v0, p1

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0xf

    .line 174
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    .line 175
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 177
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

    .line 266
    array-length v0, p2

    const/16 v1, 0x144

    if-ge v0, v1, :cond_0

    .line 267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 269
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 272
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getRPMOverTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0x104

    .line 273
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 274
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 275
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

    .line 287
    array-length v0, p2

    const/16 v1, 0x104

    if-ge v0, v1, :cond_0

    .line 288
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 290
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 293
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getRPMUnderTempThresholdCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0xc4

    .line 294
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 295
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 296
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-direct {v3, v2, v4}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected parseRotationMatrix([BI)Lcom/texa/carelib/care/attitude/RotationMatrix;
    .locals 4

    .line 113
    array-length v0, p1

    add-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x24

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x9

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, p2

    .line 119
    invoke-virtual {p0, p1, v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getFloat([BI)Ljava/lang/Float;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x24

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getSignedInt([BI)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x4

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getTimestamp([BI)Ljava/util/Date;

    move-result-object p1

    .line 131
    new-instance p2, Lcom/texa/carelib/care/attitude/RotationMatrix;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p2, v1, p1, v0}, Lcom/texa/carelib/care/attitude/RotationMatrix;-><init>([FLjava/util/Date;I)V

    return-object p2

    .line 127
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Parse error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseRotationMatrixFinal([B)Lcom/texa/carelib/care/attitude/RotationMatrix;
    .locals 1

    const/16 v0, 0x14

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->parseRotationMatrix([BI)Lcom/texa/carelib/care/attitude/RotationMatrix;

    move-result-object p1

    return-object p1
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

    .line 245
    array-length v0, p2

    const/16 v1, 0xc4

    if-ge v0, v1, :cond_0

    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 248
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getSpeedCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit8 v3, v1, 0x44

    .line 253
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 254
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 255
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

    .line 183
    array-length v0, p1

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x11

    .line 188
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x0

    const/16 v1, 0x12

    .line 189
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseTripNum([B)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x5

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getUnsignedInt([BI)Ljava/lang/Long;

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

    .line 222
    array-length v0, p3

    const/16 v1, 0x5c4

    if-ge v0, v1, :cond_0

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 225
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x240

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x480

    if-ge v1, v2, :cond_1

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x12

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getAccelerationAngleCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    .line 229
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x12

    invoke-virtual {p0, p2, v3}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getAccelerationIntensityCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v3

    add-int/lit16 v4, v1, 0x144

    .line 231
    aget-byte v5, p3, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    .line 232
    aget-byte v4, p3, v4

    shl-int/lit8 v4, v4, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    add-int/2addr v5, v4

    .line 234
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

    .line 307
    array-length v0, p2

    const/16 v1, 0x644

    if-ge v0, v1, :cond_0

    .line 308
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 310
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 313
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/trips/internal/TripStatisticsInfoParserV10;->getVoltageCountersRange(Lcom/texa/carelib/care/trips/CountersDescriptionType;I)Lcom/texa/carelib/core/Range;

    move-result-object v2

    add-int/lit16 v3, v1, 0x604

    .line 314
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x1

    .line 315
    aget-byte v3, p2, v3

    shl-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    add-int/2addr v4, v3

    .line 316
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-direct {v3, v2, v4}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method
