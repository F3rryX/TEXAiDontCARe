.class Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "TripEndInfoParserV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/trips/TripEndInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final DATA_LENGTH:I = 0x28

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_DRIVER_ID:I = 0x12

.field private static final INDEX_END_TIME:I = 0x22

.field private static final INDEX_IMPACT_COUNT:I = 0x11

.field private static final INDEX_MAX_VOLTAGE_ENGINE_ON:I = 0xd

.field private static final INDEX_MIL_STATUS:I = 0xf

.field private static final INDEX_ODOMETER:I = 0x9

.field private static final INDEX_ODOMETER_ESTIMATION_METHOD:I = 0xe

.field private static final INDEX_RESERVED:I = 0x27

.field private static final INDEX_TIMEZONE:I = 0x26

.field private static final INDEX_TRIP_END_CAUSE:I = 0x10

.field private static final INDEX_TRIP_NUM:I = 0x5


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/trips/TripEndInfo;
    .locals 3

    .line 46
    new-instance v0, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;-><init>()V

    .line 48
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setRawData([B)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setVersion(I)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseTripNumber([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseOdometer([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setOdometer(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseMaxVoltageEngineOn([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setMaxVoltageEngineOn(Ljava/lang/Float;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseOdometerEstimationMethod([B)Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setOdometerEstimationMethod(Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseMILStatus([B)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setIsMILLampDetected(Ljava/lang/Boolean;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseTripEndCause([B)Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTripEndCause(Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseNumberOfImpactDetected([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setNumOfImpactDetected(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseDriverID([B)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setDriverID(Ljava/util/UUID;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseEndTime([B)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parseTimeZoneOffset([B)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->setTimeZoneOffset(Ljava/lang/Integer;)Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;

    .line 60
    invoke-virtual {v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoBuilder;->build()Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->parse([B)Lcom/texa/carelib/care/trips/TripEndInfo;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseDriverID([B)Ljava/util/UUID;
    .locals 7

    .line 172
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x12

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    if-nez v5, :cond_2

    .line 179
    aget-byte v5, p1, v4

    const/16 v6, 0xff

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 185
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    invoke-static {v2}, Lcom/texa/carelib/core/utils/UUIDHelper;->fromByteArray([B)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method protected parseEndTime([B)Ljava/util/Date;
    .locals 1

    const/16 v0, 0x22

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->getTimestamp([BI)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected parseMILStatus([B)Ljava/lang/Boolean;
    .locals 2

    .line 112
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v0, 0xf

    .line 113
    aget-byte p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected parseMaxVoltageEngineOn([B)Ljava/lang/Float;
    .locals 6

    .line 99
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xd

    .line 102
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method protected parseNumberOfImpactDetected([B)Ljava/lang/Integer;
    .locals 2

    .line 163
    array-length v0, p1

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x11

    .line 166
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseOdometer([B)Ljava/lang/Float;
    .locals 2

    const/16 v0, 0x9

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseOdometerEstimationMethod([B)Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;
    .locals 2

    .line 121
    array-length v0, p1

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2

    const/16 v0, 0xe

    .line 122
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object p1, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Diagnostic:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    return-object p1

    .line 127
    :cond_1
    sget-object p1, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Estimated:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    return-object p1

    .line 133
    :cond_2
    :goto_0
    sget-object p1, Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;->Undef:Lcom/texa/carelib/care/trips/TripEndInfo$OdometerEstimationMethod;

    return-object p1
.end method

.method protected parseTimeZoneOffset([B)Ljava/lang/Integer;
    .locals 2

    .line 200
    array-length v0, p1

    const/16 v1, 0x27

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x26

    .line 203
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseTripEndCause([B)Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;
    .locals 2

    .line 139
    array-length v0, p1

    const/16 v1, 0x11

    if-lt v0, v1, :cond_5

    const/16 v0, 0x10

    .line 140
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    sget-object p1, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->LowBatteryVoltage:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object p1

    .line 151
    :cond_1
    sget-object p1, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->CommunicationLost:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object p1

    .line 149
    :cond_2
    sget-object p1, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->LowRPM:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object p1

    .line 147
    :cond_3
    sget-object p1, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->ExternalCommand:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object p1

    .line 145
    :cond_4
    sget-object p1, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->Undef:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object p1

    .line 157
    :cond_5
    :goto_0
    sget-object p1, Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;->Undef:Lcom/texa/carelib/care/trips/TripEndInfo$TripEndCause;

    return-object p1
.end method

.method protected parseTripNumber([B)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x5

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/trips/internal/TripEndInfoParserV2;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
