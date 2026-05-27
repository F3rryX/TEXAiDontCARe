.class public Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;
.super Ljava/lang/Object;
.source "VehicleValuesBundleParserExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$Pair;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final DATA_DEF_SIZE:I = 0x1

.field private static final DATA_FIELD_SIZE_LENGTH:I = 0x2

.field private static final DATA_ID_LENGTH:I = 0x2

.field private static final DETAILS_LENGTH:I = 0x4

.field private static final FLOAT_VALUE_SIZE:I = 0x4

.field private static final HEADER:I = 0x0

.field private static final HEADER_LENGTH:I = 0x8

.field private static final OBD_BIT_INDEX:I = 0x4

.field private static final OCCURRENCE_COUNTER_AVAILABLE_BIT_INDEX:I = 0x5

.field private static final PARAMETER_ID_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VehicleValuesBundleParserExt"

.field private static final sDTCs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->sParameters:Ljava/util/List;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->sDTCs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGenericParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;JLcom/texa/carelib/care/vehicle/ValueDataType;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 1

    .line 212
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;-><init>()V

    .line 214
    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setID(J)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p1

    .line 215
    invoke-virtual {p1, p4, p5, p0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setData([B[BLcom/texa/carelib/care/vehicle/internal/VehicleValueParser;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p0

    .line 216
    invoke-virtual {p0, p3}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setType(Lcom/texa/carelib/care/vehicle/ValueDataType;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p0

    .line 217
    invoke-virtual {p0, p6}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setDateLastUpdate(Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    return-object v0
.end method

.method static getDTCOccurrenceCounter(I)Ljava/lang/Long;
    .locals 2

    .line 166
    invoke-static {p0}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->isDTCOccurrenceAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fffc0

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x6

    int-to-long v0, p0

    .line 167
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getDTCStatus(ZI)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 1

    and-int/lit8 p1, p1, 0xf

    .line 149
    invoke-static {p1}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->fromInt(I)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object p1

    .line 150
    sget-object v0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Undefined:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    if-ne v0, p1, :cond_0

    if-eqz p0, :cond_0

    .line 151
    sget-object p0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->UndefinedOBD:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static getDTCs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;>;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->sDTCs:Ljava/util/Map;

    return-object v0
.end method

.method public static getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->sParameters:Ljava/util/List;

    return-object v0
.end method

.method static isDTCOccurrenceAvailable(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isFromOBD(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized parse(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[BLjava/util/Date;)V
    .locals 13

    const-class v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->sDTCs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 52
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->sParameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 55
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_4

    const/4 v2, 0x4

    new-array v8, v2, [B

    .line 61
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 64
    invoke-interface {p0, v8}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->getDataType([B)Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object v6

    .line 67
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 70
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 72
    new-array v7, v3, [B

    if-lez v3, :cond_0

    .line 74
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    :cond_0
    sget-object v9, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$1;->$SwitchMap$com$texa$carelib$care$vehicle$ValueDataType:[I

    invoke-virtual {v6}, Lcom/texa/carelib/care/vehicle/ValueDataType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    const/4 v11, 0x2

    if-eq v9, v11, :cond_3

    const/4 v12, 0x3

    if-eq v9, v12, :cond_2

    if-eq v9, v2, :cond_1

    .line 99
    sget-object v2, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->TAG:Ljava/lang/String;

    const-string v7, "Data type is unknown. DataID: %1$s DataType: %2$s DataLength: %3$s --- This data will be ignored."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v1

    aput-object v6, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v11

    invoke-static {v2, v7, v8}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {v4, v5, v7, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->parseECUDTCs(J[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$Pair;

    move-result-object v2

    .line 95
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->getDTCs()Ljava/util/Map;

    move-result-object v3

    iget-object v4, v2, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object v3, p0

    move-object v6, v7

    move-object v7, v8

    move-object v8, p2

    .line 89
    invoke-static/range {v3 .. v8}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->parseStringParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;J[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v2

    .line 90
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_3
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->getParameters()Ljava/util/List;

    move-result-object v2

    move-object v3, p0

    move-object v9, p2

    invoke-static/range {v3 .. v9}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->createGenericParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;JLcom/texa/carelib/care/vehicle/ValueDataType;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static parseECUDTCs(J[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Ljava/util/Date;",
            ")",
            "Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;>;"
        }
    .end annotation

    .line 178
    new-instance p3, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$Pair;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p3, p0, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 181
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-lez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 188
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 191
    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Base64Helper;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 194
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 195
    invoke-static {v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->isFromOBD(I)Z

    move-result v4

    .line 196
    invoke-static {v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->getDTCOccurrenceCounter(I)Ljava/lang/Long;

    move-result-object v5

    .line 197
    invoke-static {v4, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->getDTCStatus(ZI)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object v1

    .line 199
    iget-object v6, p3, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt$Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    new-instance v7, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v7, v4, v1, v5, v2}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;-><init>(ZLcom/texa/carelib/care/vehicletroubles/DTCStatus;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method static parseStringParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;J[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 8

    .line 113
    invoke-interface {p0, p4, p3}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->isDateTime([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v4, Lcom/texa/carelib/care/vehicle/ValueDataType;->DATETIME:Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->createGenericParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;JLcom/texa/carelib/care/vehicle/ValueDataType;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    sget-object v3, Lcom/texa/carelib/care/vehicle/ValueDataType;->STRING:Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserExt;->createGenericParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;JLcom/texa/carelib/care/vehicle/ValueDataType;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p0

    return-object p0
.end method
