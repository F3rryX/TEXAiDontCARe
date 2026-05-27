.class Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "TripBeginInfoParserV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/trips/TripBeginInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final DATA_LENGTH:I = 0x34

.field static final INDEX_AVG_VOLTAGE_ENGINE_OFF:I = 0xd

.field static final INDEX_BLOCK_ID:I = 0x0

.field static final INDEX_BLOCK_SIZE:I = 0x2

.field static final INDEX_BLOCK_VERSION:I = 0x4

.field static final INDEX_CREATION_DATE:I = 0x30

.field static final INDEX_FIRMWARE_VERSION:I = 0x18

.field static final INDEX_MIN_VOLTAGE_ENGINE_OFF:I = 0xe

.field static final INDEX_ODOMETER:I = 0x9

.field static final INDEX_RELATIVE_TRIP_NUM:I = 0x16

.field static final INDEX_RESERVED:I = 0x15

.field static final INDEX_START_STOP_MODALITY:I = 0xf

.field static final INDEX_START_TIME:I = 0x10

.field static final INDEX_TIMEZONE:I = 0x14

.field static final INDEX_TRIP_NUM:I = 0x5

.field static final INDEX_VIN_CODE:I = 0x1c


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

    .line 44
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;-><init>()V

    .line 46
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setRawData([B)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 47
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setVersion(I)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->parseTripNumber([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->parseOdometer([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->parseAverageVoltageEngineOff([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setAverageVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->parseMinVoltageEngineOff([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setMinVoltageEngineOff(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->parseStartTime([B)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->parseTimeZoneOffset([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->parseRelativeTripNumber([B)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->setRelativeTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;

    .line 56
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->parse([B)Lcom/texa/carelib/care/trips/TripBeginInfo;

    move-result-object p1

    return-object p1
.end method

.method protected parseAverageVoltageEngineOff([B)Ljava/lang/Float;
    .locals 5

    .line 102
    array-length v0, p1

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    .line 103
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0xd

    .line 106
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseMinVoltageEngineOff([B)Ljava/lang/Float;
    .locals 6

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xe

    .line 122
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

    .line 128
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseOdometer([B)Ljava/lang/Float;
    .locals 2

    const/16 v0, 0x9

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 96
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseRelativeTripNumber([B)Ljava/lang/Long;
    .locals 2

    const/16 v0, 0x16

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->getUnsignedChar([BI)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected parseStartTime([B)Ljava/util/Date;
    .locals 1

    const/16 v0, 0x10

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->getTimestamp([BI)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected parseTimeZoneOffset([B)Ljava/lang/Integer;
    .locals 3

    .line 139
    array-length v0, p1

    const/4 v1, 0x0

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x14

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseTripNumber([B)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x5

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripBeginInfoParserV2;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
