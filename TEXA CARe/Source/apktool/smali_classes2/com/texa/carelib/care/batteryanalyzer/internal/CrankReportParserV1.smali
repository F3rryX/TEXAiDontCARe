.class public Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "CrankReportParserV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/batteryanalyzer/CrankReport;",
        ">;"
    }
.end annotation


# static fields
.field protected static final BLOCK_SIZE:I = 0x136

.field private static final INDEX_AREA:I = 0x44

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_RESERVED_1:I = 0x5

.field private static final INDEX_BLOCK_RESERVED_2:I = 0xc

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_STATUS:I = 0x34

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_COEFFICIENT_A:I = 0x48

.field private static final INDEX_COEFFICIENT_B:I = 0x50

.field private static final INDEX_COEFFICIENT_C:I = 0x58

.field private static final INDEX_COEFFICIENT_M:I = 0x64

.field private static final INDEX_COEFFICIENT_Q:I = 0x68

.field private static final INDEX_COEFFICIENT_R2:I = 0x60

.field private static final INDEX_LIMIT:I = 0x6c

.field private static final INDEX_MEAN_VOLTAGE:I = 0x40

.field private static final INDEX_MINIMUM_VOLTAGE:I = 0x42

.field private static final INDEX_SAMPLES:I = 0x6e

.field private static final INDEX_SAMPLE_NUMBER:I = 0x3c

.field private static final INDEX_SAMPLE_PERIOD:I = 0x38

.field private static final INDEX_TIMESTAMP:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
    .locals 3

    .line 48
    new-instance v0, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;-><init>()V

    .line 49
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setRawData([B)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseBlockVersion([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setVersion(I)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseTimestamp([B)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseBlockStatus([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setStatus(Ljava/lang/Long;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseSamplePeriod([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setSamplePeriod(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseMeanVoltage([B)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setMeanVoltage(Ljava/lang/Short;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseMinimumVoltage([B)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setMinimumVoltage(Ljava/lang/Short;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseArea([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setArea(Ljava/lang/Integer;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseCoefficientA([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setCoefficientA(Ljava/lang/Long;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseCoefficientB([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setCoefficientB(Ljava/lang/Long;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseCoefficientC([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setCoefficientC(Ljava/lang/Long;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseCoefficientR2([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setCoefficientR2(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseCoefficientM([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setCoefficientM(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseCoefficientQ([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setCoefficientQ(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseLimit([B)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setLimit(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseSamples([B)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->setSamples(Ljava/util/List;)Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;

    .line 66
    invoke-virtual {v0}, Lcom/texa/carelib/care/batteryanalyzer/CrankReport$Builder;->build()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parse([B)Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object p1

    return-object p1
.end method

.method protected parseArea([B)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x44

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getSignedInt([BI)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockStatus([B)Ljava/lang/Long;
    .locals 1

    const/16 v0, 0x34

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseCoefficientA([B)Ljava/lang/Long;
    .locals 1

    const/16 v0, 0x48

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getSignedLong([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected parseCoefficientB([B)Ljava/lang/Long;
    .locals 1

    const/16 v0, 0x50

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getSignedLong([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected parseCoefficientC([B)Ljava/lang/Long;
    .locals 1

    const/16 v0, 0x58

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getSignedLong([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected parseCoefficientM([B)Ljava/lang/Float;
    .locals 1

    const/16 v0, 0x64

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getFloat([BI)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseCoefficientQ([B)Ljava/lang/Float;
    .locals 1

    const/16 v0, 0x68

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getFloat([BI)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseCoefficientR2([B)Ljava/lang/Float;
    .locals 1

    const/16 v0, 0x60

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getFloat([BI)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseLimit([B)Ljava/lang/Float;
    .locals 1

    const/16 v0, 0x6c

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getSignedChar([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected parseMeanVoltage([B)Ljava/lang/Short;
    .locals 1

    const/16 v0, 0x40

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getSignedChar([BI)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method protected parseMinimumVoltage([B)Ljava/lang/Short;
    .locals 1

    const/16 v0, 0x42

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getSignedChar([BI)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method protected parseSampleNumber([B)Ljava/lang/Long;
    .locals 1

    const/16 v0, 0x3c

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected parseSamplePeriod([B)Ljava/lang/Float;
    .locals 2

    const/16 v0, 0x38

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 99
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

.method protected parseSamples([B)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->parseSampleNumber([B)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 180
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    .line 181
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x6e

    .line 184
    array-length v4, p1

    add-int/lit8 v5, v3, 0x2

    if-ge v4, v5, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getSignedChar([BI)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected parseTimestamp([B)Ljava/util/Date;
    .locals 1

    const/16 v0, 0x8

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;->getTimestamp([BI)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
