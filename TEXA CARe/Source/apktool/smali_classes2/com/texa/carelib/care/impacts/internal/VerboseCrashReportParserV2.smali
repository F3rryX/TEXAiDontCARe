.class Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "VerboseCrashReportParserV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/impacts/VerboseCrashReport;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCELERATION_SPEED_VECTOR_SIZE:I = 0x8

.field private static final INDEX_ACCELERATION_SPEED_VECTOR:I = 0x48

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_COEFFICIENT_U_G:I = 0xa

.field private static final INDEX_COMPLETED:I = 0x7

.field private static final INDEX_CRASH_INDEX:I = 0x2c

.field private static final INDEX_DUMMY:I = 0x13

.field private static final INDEX_INCOMPLETE_VALIDATION:I = 0x5

.field private static final INDEX_IS_THE_RIGHT_SAMPLE:I = 0x12

.field private static final INDEX_LAST_INSERTION_INDEX:I = 0x28

.field private static final INDEX_MATRIX_ORIENTATION:I = 0x36

.field private static final INDEX_MIN_PERIOD_OF_CONTINUOUS_OVER_THRESHOLD:I = 0x20

.field private static final INDEX_NUMBER_OF_SAMPLES:I = 0xe

.field private static final INDEX_OFFSET_COMPONENTS:I = 0x30

.field private static final INDEX_OVER_THRESHOLD_REGISTERED:I = 0x6

.field private static final INDEX_PEAK_POSITION:I = 0x10

.field private static final INDEX_SAMPLE_FREQUENCY:I = 0xc

.field private static final INDEX_THRESHOLD:I = 0x8

.field private static final INDEX_TIME_TO_STOP_MOVING_AFTER_THRESHOLD_HIT:I = 0x18


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;
    .locals 6

    .line 57
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->parseCoefficientUg([B)I

    move-result v0

    .line 58
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->parseNumberOfSamples([B)I

    move-result v1

    .line 59
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->parseLastInsertionIndex([B)I

    move-result v2

    .line 61
    new-instance v3, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    invoke-direct {v3}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;-><init>()V

    .line 62
    invoke-virtual {v3, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setRawData([B)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v4

    .line 63
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->parseBlockVersion([B)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setVersion(I)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setNumberOfSamples(I)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v4

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->parseOffsetComponents([BI)Lcom/texa/carelib/care/impacts/AccelerationVector;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setOffsetComponents(Lcom/texa/carelib/care/impacts/AccelerationVector;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v4

    .line 66
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->parseAccelerationVectors([BIII)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setAccelerationVectors(Ljava/util/List;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {p0, p1, v1, v2}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->parseSpeedVector([BII)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setSpeedVectors(Ljava/util/List;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->parseSampleFrequency([B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setSampleFrequency(Ljava/lang/Integer;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    .line 70
    invoke-virtual {v3}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->build()Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->parse([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object p1

    return-object p1
.end method

.method protected parseAccelerationVectors([BIII)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/AccelerationVector;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 144
    array-length v3, v0

    mul-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x48

    if-ge v3, v4, :cond_0

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    if-ltz v2, :cond_3

    .line 147
    array-length v3, v0

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, v4

    .line 154
    rem-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x48

    .line 156
    aget-byte v6, v0, v5

    int-to-short v6, v6

    add-int/lit8 v7, v5, 0x1

    .line 157
    aget-byte v7, v0, v7

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-short v6, v6

    add-int/lit8 v7, v5, 0x2

    .line 159
    aget-byte v7, v0, v7

    int-to-short v7, v7

    add-int/lit8 v9, v5, 0x3

    .line 160
    aget-byte v9, v0, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v8

    add-int/2addr v7, v9

    int-to-short v7, v7

    add-int/lit8 v9, v5, 0x4

    .line 162
    aget-byte v9, v0, v9

    int-to-short v9, v9

    add-int/lit8 v5, v5, 0x5

    .line 163
    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v8

    add-int/2addr v9, v5

    int-to-short v5, v9

    .line 165
    new-instance v15, Lcom/texa/carelib/care/impacts/AccelerationVector;

    int-to-long v9, v6

    int-to-long v11, v7

    int-to-long v13, v5

    move/from16 v5, p4

    int-to-long v6, v5

    move-object v8, v15

    move-object v0, v15

    move-wide v15, v6

    invoke-direct/range {v8 .. v16}, Lcom/texa/carelib/care/impacts/AccelerationVector;-><init>(JJJJ)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    :cond_2
    return-object v3

    .line 148
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseCoefficientUg([B)I
    .locals 1

    const/16 v0, 0xa

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->getUnsignedChar([BI)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected parseLastInsertionIndex([B)I
    .locals 1

    const/16 v0, 0x28

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 182
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseNumberOfSamples([B)I
    .locals 1

    const/16 v0, 0xe

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->getUnsignedChar([BI)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected parseOffsetComponents([BI)Lcom/texa/carelib/care/impacts/AccelerationVector;
    .locals 12

    .line 187
    array-length v0, p1

    const/16 v1, 0x36

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x30

    .line 190
    aget-byte v0, p1, v0

    int-to-short v0, v0

    const/16 v1, 0x31

    .line 191
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    const/16 v1, 0x32

    .line 193
    aget-byte v1, p1, v1

    int-to-short v1, v1

    const/16 v3, 0x33

    .line 194
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    int-to-short v1, v1

    const/16 v3, 0x34

    .line 196
    aget-byte v3, p1, v3

    int-to-short v3, v3

    const/16 v4, 0x35

    .line 197
    aget-byte p1, p1, v4

    shl-int/lit8 p1, p1, 0x8

    and-int/2addr p1, v2

    add-int/2addr v3, p1

    int-to-short p1, v3

    .line 199
    new-instance v11, Lcom/texa/carelib/care/impacts/AccelerationVector;

    int-to-long v3, v0

    int-to-long v5, v1

    int-to-long v7, p1

    int-to-long v9, p2

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/texa/carelib/care/impacts/AccelerationVector;-><init>(JJJJ)V

    return-object v11
.end method

.method protected parseSampleFrequency([B)I
    .locals 1

    const/16 v0, 0xc

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;->getUnsignedChar([BI)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected parseSpeedVector([BII)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 121
    array-length v0, p1

    mul-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x48

    if-ge v0, v1, :cond_0

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p3, :cond_3

    .line 124
    array-length v0, p1

    if-le p3, v0, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    add-int/lit8 v2, p3, 0x1

    add-int/2addr v2, v1

    .line 131
    rem-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x48

    add-int/lit8 v3, v2, 0x6

    .line 133
    aget-byte v3, p1, v3

    add-int/lit8 v2, v2, 0x7

    .line 134
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/2addr v3, v2

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 125
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
