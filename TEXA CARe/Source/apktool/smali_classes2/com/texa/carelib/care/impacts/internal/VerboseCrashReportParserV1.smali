.class Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "VerboseCrashReportParserV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/impacts/VerboseCrashReport;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCELERATION_COEFFICIENT:I = 0x2dc

.field private static final ACCELERATION_VECTOR_SIZE:I = 0x6

.field private static final INDEX_BLOCK_ACCELERATION_VECTOR:I = 0x2e

.field private static final INDEX_BLOCK_CONFIGURATION_PARAMETERS:I = 0x8

.field private static final INDEX_BLOCK_CRASH_INDEX:I = 0x24

.field private static final INDEX_BLOCK_DUMMY:I = 0x6

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_INCOMPLETE_VALIDATION:I = 0x5

.field private static final INDEX_BLOCK_LAST_INSERTION_INDEX:I = 0x20

.field private static final INDEX_BLOCK_OFFSET_COMPONENTS:I = 0x28

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_SPEED_VECTOR:I = 0x98e

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final NUMBER_OF_SAMPLES:I = 0x190

.field private static final SPEED_VECTOR_SIZE:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method

.method private parseAccelerationVectors([B)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/impacts/AccelerationVector;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 120
    array-length v1, v0

    const/16 v2, 0x98e

    if-ge v1, v2, :cond_0

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;->parseLastInsertionIndex([B)I

    move-result v1

    if-ltz v1, :cond_3

    .line 125
    array-length v2, v0

    if-le v1, v2, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x190

    if-ge v3, v4, :cond_2

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v5, v3

    .line 132
    rem-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x2e

    .line 134
    aget-byte v4, v0, v5

    int-to-short v4, v4

    add-int/lit8 v6, v5, 0x1

    .line 135
    aget-byte v6, v0, v6

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    add-int/2addr v4, v6

    int-to-short v4, v4

    add-int/lit8 v6, v5, 0x2

    .line 137
    aget-byte v6, v0, v6

    int-to-short v6, v6

    add-int/lit8 v8, v5, 0x3

    .line 138
    aget-byte v8, v0, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v7

    add-int/2addr v6, v8

    int-to-short v6, v6

    add-int/lit8 v8, v5, 0x4

    .line 140
    aget-byte v8, v0, v8

    int-to-short v8, v8

    add-int/lit8 v5, v5, 0x5

    .line 141
    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v7

    add-int/2addr v8, v5

    int-to-short v5, v8

    .line 143
    new-instance v14, Lcom/texa/carelib/care/impacts/AccelerationVector;

    int-to-long v8, v4

    int-to-long v10, v6

    int-to-long v12, v5

    const-wide/16 v4, 0x2dc

    move-object v7, v14

    move-object v6, v14

    move-wide v14, v4

    invoke-direct/range {v7 .. v15}, Lcom/texa/carelib/care/impacts/AccelerationVector;-><init>(JJJJ)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    .line 126
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;
    .locals 3

    .line 49
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setRawData([B)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setVersion(I)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v1

    const/16 v2, 0x190

    .line 53
    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setNumberOfSamples(I)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;->parseSpeedVector([B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setSpeedVectors(Ljava/util/List;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v1

    .line 55
    invoke-direct {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;->parseAccelerationVectors([B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setAccelerationVectors(Ljava/util/List;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;->parseOffsetComponents([B)Lcom/texa/carelib/care/impacts/AccelerationVector;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->setOffsetComponents(Lcom/texa/carelib/care/impacts/AccelerationVector;)Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;

    .line 58
    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportBuilder;->build()Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;->parse([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseLastInsertionIndex([B)I
    .locals 1

    const/16 v0, 0x20

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseOffsetComponents([B)Lcom/texa/carelib/care/impacts/AccelerationVector;
    .locals 12

    .line 151
    array-length v0, p1

    const/16 v1, 0x2e

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x28

    .line 154
    aget-byte v0, p1, v0

    int-to-short v0, v0

    const/16 v1, 0x29

    .line 155
    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    const/16 v1, 0x2a

    .line 157
    aget-byte v1, p1, v1

    int-to-short v1, v1

    const/16 v3, 0x2b

    .line 158
    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    and-int/2addr v3, v2

    add-int/2addr v1, v3

    int-to-short v1, v1

    const/16 v3, 0x2c

    .line 160
    aget-byte v3, p1, v3

    int-to-short v3, v3

    const/16 v4, 0x2d

    .line 161
    aget-byte p1, p1, v4

    shl-int/lit8 p1, p1, 0x8

    and-int/2addr p1, v2

    add-int/2addr v3, p1

    int-to-short p1, v3

    .line 163
    new-instance v11, Lcom/texa/carelib/care/impacts/AccelerationVector;

    int-to-long v3, v0

    int-to-long v5, v1

    int-to-long v7, p1

    const-wide/16 v9, 0x2dc

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/texa/carelib/care/impacts/AccelerationVector;-><init>(JJJJ)V

    return-object v11
.end method

.method protected parseSpeedVector([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 79
    array-length v0, p1

    const/16 v1, 0xcae

    if-ge v0, v1, :cond_0

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;->parseLastInsertionIndex([B)I

    move-result v0

    if-ltz v0, :cond_3

    .line 84
    array-length v1, p1

    if-le v0, v1, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x190

    if-ge v2, v3, :cond_2

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v2

    .line 91
    rem-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit16 v4, v4, 0x98e

    .line 93
    aget-byte v3, p1, v4

    add-int/lit8 v4, v4, 0x1

    .line 94
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 85
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
