.class public Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "BatteryVoltageHistogramParserV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BLOCK_SIZE:I = 0x8c

.field private static final INDEX_BEAM_LIST:I = 0x3c

.field private static final INDEX_BEAM_WIDTH:I = 0x34

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_RESERVED_1:I = 0x5

.field private static final INDEX_BLOCK_RESERVED_2:I = 0xc

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_SMOOTH_FACTOR:I = 0x38

.field private static final INDEX_TIMESTAMP:I = 0x8

.field private static final MAX_VOLTAGE:Ljava/lang/Float;

.field private static final MIN_VOLTAGE:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    .line 124
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->MIN_VOLTAGE:Ljava/lang/Float;

    const/high16 v0, 0x41800000    # 16.0f

    .line 125
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->MAX_VOLTAGE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method

.method private getVoltageRange(FFI)Lcom/texa/carelib/core/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFI)",
            "Lcom/texa/carelib/core/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/texa/carelib/core/Range;

    int-to-float v1, p3

    mul-float v1, v1, p2

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-int/lit8 p3, p3, 0x1

    int-to-float p3, p3

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/texa/carelib/core/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
    .locals 4

    .line 44
    new-instance v0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->parseBeamWidth([B)Ljava/lang/Float;

    move-result-object v1

    .line 48
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setData([B)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->parseBlockVersion([B)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setVersion(I)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->parseTimestamp([B)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setBeamWidth(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->parseSmoothFactor([B)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setSmoothFactor(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0, p1, v1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->parseBeamList([BLjava/lang/Float;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->setBeamList(Ljava/util/List;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->build()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->parse([B)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object p1

    return-object p1
.end method

.method protected parseBeamList([BLjava/lang/Float;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Float;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;"
        }
    .end annotation

    .line 93
    array-length v0, p1

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 101
    :cond_1
    sget-object v0, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->MAX_VOLTAGE:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v2, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->MIN_VOLTAGE:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 104
    new-instance v5, Lcom/texa/carelib/core/CounterInfo;

    sget-object v6, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->MIN_VOLTAGE:Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {p0, v6, v7, v4}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->getVoltageRange(FFI)Lcom/texa/carelib/core/Range;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 108
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    .line 110
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->getUnsignedInt(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    long-to-float v1, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    .line 112
    sget-object v3, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->MIN_VOLTAGE:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 113
    new-instance v3, Lcom/texa/carelib/core/CounterInfo;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/core/CounterInfo;

    invoke-virtual {v4}, Lcom/texa/carelib/core/CounterInfo;->getRange()Lcom/texa/carelib/core/Range;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/texa/carelib/core/CounterInfo;-><init>(Lcom/texa/carelib/core/Range;I)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method protected parseBeamWidth([B)Ljava/lang/Float;
    .locals 2

    const/16 v0, 0x34

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseSmoothFactor([B)Ljava/lang/Float;
    .locals 1

    const/16 v0, 0x38

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->getFloat([BI)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseTimestamp([B)Ljava/util/Date;
    .locals 1

    const/16 v0, 0x8

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;->getTimestamp([BI)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
