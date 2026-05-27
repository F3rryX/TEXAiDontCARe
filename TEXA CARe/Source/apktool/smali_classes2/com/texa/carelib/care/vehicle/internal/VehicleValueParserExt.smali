.class public Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;
.super Ljava/lang/Object;
.source "VehicleValueParserExt.java"

# interfaces
.implements Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserLegacy;

    const-string v0, "VehicleValueParserLegacy"

    sput-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkDataAvailability([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance p1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object p2, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->NoDataAvailable:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v0, "No data details available."

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_1
    new-instance p1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object p2, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->NoDataAvailable:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v0, "No data available."

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method protected checkDataLength([BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 251
    array-length v0, p1

    if-ne v0, p2, :cond_0

    return-void

    .line 252
    :cond_0
    new-instance v0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object v1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->DataRead:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "Invalid data length. Actual=%d Expected=%d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;)V

    throw v0
.end method

.method protected checkDataStatus([BB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->getDataStatus([B)B

    move-result p1

    if-ne p2, p1, :cond_0

    return-void

    .line 237
    :cond_0
    new-instance p2, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object v0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->DataRead:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    and-int/lit16 p1, p1, 0xff

    const-string v1, "Invalid data status."

    invoke-direct {p2, v0, v1, p1}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;I)V

    throw p2
.end method

.method protected checkMinDataLength([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 258
    array-length p1, p1

    if-lt p1, p2, :cond_0

    return-void

    .line 259
    :cond_0
    new-instance p1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object p2, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->DataRead:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v0, "Invalid data length."

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method protected checkValueDataType([BLcom/texa/carelib/care/vehicle/ValueDataType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->getDataType([B)Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object p1

    if-ne p2, p1, :cond_0

    return-void

    .line 245
    :cond_0
    new-instance p1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object p2, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->DataTypeMismatch:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v0, "Data type mismatch."

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public getDataStatus([B)B
    .locals 2

    if-eqz p1, :cond_1

    .line 328
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 331
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 332
    aget-byte p1, p1, v1

    and-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0x10

    add-int/2addr v0, p1

    int-to-byte p1, v0

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method getDataType(B)Lcom/texa/carelib/care/vehicle/ValueDataType;
    .locals 0

    and-int/lit8 p1, p1, 0x3e

    shr-int/lit8 p1, p1, 0x1

    .line 290
    invoke-static {p1}, Lcom/texa/carelib/care/vehicle/ValueDataType;->fromInt(I)Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object p1

    return-object p1
.end method

.method public getDataType([B)Lcom/texa/carelib/care/vehicle/ValueDataType;
    .locals 2

    if-eqz p1, :cond_1

    .line 273
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 276
    aget-byte p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->getDataType(B)Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object p1

    return-object p1

    .line 274
    :cond_1
    :goto_0
    sget-object p1, Lcom/texa/carelib/care/vehicle/ValueDataType;->UNDEF:Lcom/texa/carelib/care/vehicle/ValueDataType;

    return-object p1
.end method

.method public getDateTime([B[B)Lcom/texa/carelib/care/DateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->getTextValue([B[B)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 188
    :try_start_0
    invoke-static {p1}, Lcom/texa/carelib/care/DateTime;->parse(Ljava/lang/String;)Lcom/texa/carelib/care/DateTime;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 190
    :goto_0
    new-instance p2, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object v0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->DataRead:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "Encoding not supported"

    :goto_1
    invoke-direct {p2, v0, v1, p1}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 184
    :cond_1
    new-instance p1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object p2, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->DataRead:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v0, "Value is null or empty."

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public getEnumValue([B[B)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataAvailability([B[B)V

    const/4 v0, 0x4

    .line 132
    invoke-virtual {p0, p2, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataLength([BI)V

    .line 133
    sget-object v1, Lcom/texa/carelib/care/vehicle/ValueDataType;->ENUM:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {p0, p2, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkValueDataType([BLcom/texa/carelib/care/vehicle/ValueDataType;)V

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, p2, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataStatus([BB)V

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataLength([BI)V

    .line 138
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 141
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-nez p2, :cond_0

    .line 142
    sget-object p1, Lcom/texa/carelib/diagresources/EnumValue;->ERROR:Lcom/texa/carelib/diagresources/EnumValue;

    invoke-virtual {p1}, Lcom/texa/carelib/diagresources/EnumValue;->getId()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    float-to-long p1, p1

    :goto_0
    return-wide p1
.end method

.method public getParameterPrecision(B)I
    .locals 0

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method public getParameterPrecision([B)I
    .locals 3

    .line 300
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 305
    :cond_0
    aget-byte p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->getParameterPrecision(B)I

    move-result p1

    return p1
.end method

.method public getParameterValue([B[B)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataAvailability([B[B)V

    const/4 v0, 0x4

    .line 114
    invoke-virtual {p0, p2, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataLength([BI)V

    .line 115
    sget-object v1, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {p0, p2, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkValueDataType([BLcom/texa/carelib/care/vehicle/ValueDataType;)V

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, p2, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataStatus([BB)V

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataLength([BI)V

    .line 120
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    return p1
.end method

.method public getTextValue([B[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataAvailability([B[B)V

    const/4 v0, 0x4

    .line 160
    invoke-virtual {p0, p2, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataLength([BI)V

    .line 161
    sget-object v0, Lcom/texa/carelib/care/vehicle/ValueDataType;->STRING:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {p0, p2, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkValueDataType([BLcom/texa/carelib/care/vehicle/ValueDataType;)V

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, p2, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkDataStatus([BB)V

    const/4 p2, 0x1

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkMinDataLength([BI)V

    .line 171
    :try_start_0
    new-instance p2, Ljava/lang/String;

    array-length v1, p1

    const-string v2, "UTF-8"

    invoke-direct {p2, p1, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 174
    sget-object p2, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Encoding not supported"

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance p2, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object v0, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->DataRead:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p2, v0, v1, p1}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isDateTime([B[B)Z
    .locals 0

    .line 214
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->getDateTime([B[B)Lcom/texa/carelib/care/DateTime;
    :try_end_0
    .catch Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDataStatus([BB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParserExt;->checkMinDataLength([BI)V

    if-ltz p2, :cond_0

    const/16 v1, 0x1f

    if-gt p2, v1, :cond_0

    and-int/lit8 v1, p2, 0xf

    shl-int/2addr v1, v0

    and-int/lit16 v1, v1, 0xf0

    and-int/lit8 p2, p2, 0x10

    shr-int/2addr p2, v0

    const/4 v0, 0x0

    .line 205
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 206
    aget-byte v2, p1, v0

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    .line 208
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xfe

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 209
    aget-byte v1, p1, v0

    or-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-void

    .line 199
    :cond_0
    new-instance p1, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;

    sget-object p2, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;->NotSupported:Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;

    const-string v0, "Data status not available."

    invoke-direct {p1, p2, v0}, Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException;-><init>(Lcom/texa/carelib/care/vehicle/InvalidVehicleValueException$ErrorCode;Ljava/lang/String;)V

    throw p1
.end method
