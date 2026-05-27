.class public Lcom/texa/carelib/care/impacts/internal/CrashReportParserV1;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "CrashReportParserV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/impacts/CrashReport;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCELERATION_COEFFICIENT:I = 0x2dc

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_DETECTED:I = 0xc

.field private static final INDEX_DUMMY:I = 0x5

.field private static final INDEX_INTENSITY:I = 0xe

.field private static final INDEX_STATUS:I = 0x10

.field private static final INDEX_TIMESTAMP:I = 0x8

.field private static final INDEX_VERBOSE_REPORT_CONTENT:I = 0x18

.field private static final INDEX_VERBOSE_REPORT_POINTER:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 4

    .line 46
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;-><init>()V

    .line 47
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setRawData([B)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV1;->parseBlockVersion([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setVersion(Ljava/lang/Integer;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV1;->parseCrashID([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setCrashID(J)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV1;->parseTimestamp([B)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV1;->parseCrashReportStatus([B)Lcom/texa/carelib/care/impacts/CrashReportStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setCrashReportStatus(Lcom/texa/carelib/care/impacts/CrashReportStatus;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV1;->parseIntensity([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setIntensity(Ljava/lang/Long;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    .line 54
    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->build()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV1;->parse([B)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV1;->getUnsignedByte([BI)Ljava/lang/Short;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method protected parseCrashID([B)Ljava/lang/Long;
    .locals 2

    .line 157
    array-length v0, p1

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 158
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReport;->CRASH_ID_UNDEF:Ljava/lang/Long;

    return-object p1

    :cond_0
    const/16 v0, 0x8

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV1;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected parseCrashReportStatus([B)Lcom/texa/carelib/care/impacts/CrashReportStatus;
    .locals 7

    .line 100
    array-length v0, p1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 101
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->Undefined:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p1

    :cond_0
    const-wide/16 v0, 0x0

    const/16 v2, 0x10

    .line 105
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v3, v0

    const/16 v0, 0x11

    .line 106
    aget-byte v0, p1, v0

    int-to-long v0, v0

    const/16 v5, 0x8

    shl-long/2addr v0, v5

    const-wide/32 v5, 0xff00

    and-long/2addr v0, v5

    add-long/2addr v3, v0

    const/16 v0, 0x12

    .line 107
    aget-byte v0, p1, v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    const-wide/32 v5, 0xff0000

    and-long/2addr v0, v5

    add-long/2addr v3, v0

    const/16 v0, 0x13

    .line 108
    aget-byte p1, p1, v0

    int-to-long v0, p1

    const/16 p1, 0x18

    shl-long/2addr v0, p1

    const-wide/32 v5, -0x1000000

    and-long/2addr v0, v5

    add-long/2addr v3, v0

    const-wide/16 v0, 0x1

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    .line 111
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->Valid:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p1

    :cond_1
    const-wide/16 v0, 0x3

    cmp-long p1, v0, v3

    if-nez p1, :cond_2

    .line 113
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->ValidSimulated:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p1

    :cond_2
    const-wide/16 v0, 0x4

    cmp-long p1, v0, v3

    if-nez p1, :cond_3

    .line 115
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->NotValidatedOverThreshold:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p1

    .line 117
    :cond_3
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->NotSupported:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p1
.end method

.method protected parseIntensity([B)J
    .locals 6

    .line 81
    array-length v0, p1

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/16 v0, 0xe

    .line 84
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0xf

    .line 85
    aget-byte p1, p1, v2

    int-to-long v2, p1

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2dc

    mul-long v0, v0, v2

    return-wide v0
.end method

.method protected parseTimestamp([B)Ljava/util/Date;
    .locals 8

    .line 128
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    const/16 v0, 0x8

    .line 133
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v4, v2

    const/16 v2, 0x9

    .line 134
    aget-byte v2, p1, v2

    int-to-long v2, v2

    shl-long/2addr v2, v0

    const-wide/32 v6, 0xff00

    and-long/2addr v2, v6

    add-long/2addr v4, v2

    const/16 v0, 0xa

    .line 135
    aget-byte v0, p1, v0

    int-to-long v2, v0

    const/16 v0, 0x10

    shl-long/2addr v2, v0

    const-wide/32 v6, 0xff0000

    and-long/2addr v2, v6

    add-long/2addr v4, v2

    const/16 v0, 0xb

    .line 136
    aget-byte p1, p1, v0

    int-to-long v2, p1

    const/16 p1, 0x18

    shl-long/2addr v2, p1

    const-wide/32 v6, -0x1000000

    and-long/2addr v2, v6

    add-long/2addr v4, v2

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    mul-long v4, v4, v2

    .line 139
    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0x7df

    if-ge v0, v2, :cond_1

    return-object v1

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
