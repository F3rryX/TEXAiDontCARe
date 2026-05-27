.class public Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;
.super Ljava/lang/Object;
.source "VehicleValuesBundleParserLegacy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$Pair;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final DATA_DEF_SIZE:I = 0x1

.field private static final HEADER:I = 0x0

.field private static final OBD_BIT_INDEX:I = 0x4

.field private static final PARAMETER_ID_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VehicleValuesBundleParserLegacy"

.field private static final VALUE_SIZE:I = 0x4

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

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->sParameters:Ljava/util/List;

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->sDTCs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDTCStatus(ZI)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 1

    and-int/lit8 p1, p1, 0xf

    .line 103
    invoke-static {p1}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->fromInt(I)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object p1

    .line 104
    sget-object v0, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Undefined:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    if-ne v0, p1, :cond_0

    if-eqz p0, :cond_0

    .line 105
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

    .line 33
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->sDTCs:Ljava/util/Map;

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

    .line 30
    sget-object v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->sParameters:Ljava/util/List;

    return-object v0
.end method

.method static isOBD(I)Z
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
    .locals 7

    const-class v0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->sDTCs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 43
    sget-object v1, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->sParameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 45
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 46
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_4

    new-array v2, v5, [B

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v2, v1

    .line 54
    invoke-interface {p0, v2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->getDataType([B)Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object v2

    .line 55
    sget-object v3, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$1;->$SwitchMap$com$texa$carelib$care$vehicle$ValueDataType:[I

    invoke-virtual {v2}, Lcom/texa/carelib/care/vehicle/ValueDataType;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v5, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    if-eq v3, v4, :cond_1

    .line 74
    sget-object p0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->TAG:Ljava/lang/String;

    const-string p1, "Data type is unknown. Parameters could be truncated."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    .line 69
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->parseECUDTCs(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$Pair;

    move-result-object v2

    .line 70
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->getDTCs()Ljava/util/Map;

    move-result-object v3

    iget-object v4, v2, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->parseStringParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;Ljava/nio/ByteBuffer;Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v2

    .line 65
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {p0, p1, v2, p2}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->parseFloatParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;Ljava/nio/ByteBuffer;Lcom/texa/carelib/care/vehicle/ValueDataType;Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    invoke-static {}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static parseECUDTCs(Ljava/nio/ByteBuffer;)Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCDetail;",
            ">;>;"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 121
    invoke-static {p0}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 123
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 125
    new-instance v3, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v3, v0, v1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 129
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 132
    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/Base64Helper;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 135
    invoke-static {v4}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->isOBD(I)Z

    move-result v5

    .line 136
    iget-object v6, v3, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy$Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    new-instance v7, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    invoke-static {v5, v4}, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->getDTCStatus(ZI)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object v4

    const/4 v8, 0x0

    invoke-direct {v7, v5, v4, v8, v8}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;-><init>(ZLcom/texa/carelib/care/vehicletroubles/DTCStatus;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private static parseFloatParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;Ljava/nio/ByteBuffer;Lcom/texa/carelib/care/vehicle/ValueDataType;Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 7

    .line 203
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 206
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 208
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    const/4 v6, 0x0

    if-gt v3, v5, :cond_0

    new-array v3, v4, [B

    .line 211
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 218
    new-instance p1, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-direct {p1}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;-><init>()V

    .line 220
    invoke-virtual {p1, v1, v2}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setID(J)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-byte v0, v2, v6

    .line 221
    invoke-virtual {v1, v3, v2, p0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setData([B[BLcom/texa/carelib/care/vehicle/internal/VehicleValueParser;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p0

    .line 222
    invoke-virtual {p0, p2}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setType(Lcom/texa/carelib/care/vehicle/ValueDataType;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p0

    .line 223
    invoke-virtual {p0, p3}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setDateLastUpdate(Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    return-object p1

    .line 228
    :cond_0
    sget-object p0, Lcom/texa/carelib/care/vehicle/internal/VehicleValuesBundleParserLegacy;->TAG:Ljava/lang/String;

    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "parseFloatParameter() Invalid data length!!"

    invoke-static {p0, p2, p1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static parseStringParameter(Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;Ljava/nio/ByteBuffer;Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;
    .locals 5

    .line 150
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 153
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 155
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 158
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 159
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    .line 165
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 166
    new-array v4, v3, [B

    if-lez v3, :cond_2

    .line 168
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [B

    const/4 v3, 0x0

    aput-byte v0, p1, v3

    .line 178
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;-><init>()V

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setID(J)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p2}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setDateLastUpdate(Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p2

    .line 181
    invoke-virtual {p2, v4, p1, p0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setData([B[BLcom/texa/carelib/care/vehicle/internal/VehicleValueParser;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object p2

    .line 185
    invoke-interface {p0, v4, p1}, Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;->isDateTime([B[B)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 186
    sget-object p0, Lcom/texa/carelib/care/vehicle/ValueDataType;->DATETIME:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {p2, p0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setType(Lcom/texa/carelib/care/vehicle/ValueDataType;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    goto :goto_2

    .line 189
    :cond_3
    sget-object p0, Lcom/texa/carelib/care/vehicle/ValueDataType;->STRING:Lcom/texa/carelib/care/vehicle/ValueDataType;

    invoke-virtual {p2, p0}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->setType(Lcom/texa/carelib/care/vehicle/ValueDataType;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    :goto_2
    return-object p2
.end method
