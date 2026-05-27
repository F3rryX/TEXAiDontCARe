.class Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "TripBeginInfoParserV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/trips/TripBeginInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final DATA_LENGTH:I = 0x14

.field static final INDEX_AVG_VOLTAGE_ENGINE_OFF:I = 0xb

.field static final INDEX_BLOCK_ID:I = 0x0

.field static final INDEX_BLOCK_SIZE:I = 0x2

.field static final INDEX_BLOCK_VERSION:I = 0x4

.field static final INDEX_MIN_VOLTAGE_ENGINE_OFF:I = 0xc

.field static final INDEX_ODOMETER:I = 0x7

.field static final INDEX_RESERVED:I = 0x13

.field static final INDEX_START_STOP_MODALITY:I = 0xd

.field static final INDEX_START_TIME:I = 0xe

.field static final INDEX_TIMEZONE:I = 0x12

.field static final INDEX_TRIP_NUM:I = 0x5


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/trips/TripBeginInfo;
    .locals 3

    .line 41
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setRawData([B)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setVersion(I)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 44
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->parseTripNumber([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->parseOdometer([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->parseAverageVoltageEngineOff([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setAverageVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 47
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->parseMinVoltageEngineOff([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setMinVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->parseStartTime([B)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->parseTimeZoneOffset([B)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    .line 51
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->parse([B)Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object p1

    return-object p1
.end method

.method protected parseAverageVoltageEngineOff([B)Ljava/lang/Float;
    .locals 6

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xb

    .line 97
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    return-object v1

    .line 103
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseMinVoltageEngineOff([B)Ljava/lang/Float;
    .locals 6

    .line 109
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xc

    .line 113
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    return-object v1

    .line 119
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseOdometer([B)Ljava/lang/Float;
    .locals 2

    const/4 v0, 0x7

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseStartTime([B)Ljava/util/Date;
    .locals 1

    const/16 v0, 0xe

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->getTimestamp([BI)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected parseTimeZoneOffset([B)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x12

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseTripNumber([B)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x5

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV1;->getUnsignedChar([BI)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
