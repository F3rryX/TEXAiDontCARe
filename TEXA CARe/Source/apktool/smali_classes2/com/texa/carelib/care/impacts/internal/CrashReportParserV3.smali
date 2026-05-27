.class public Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;
.super Lcom/texa/carelib/profile/internal/CareStructParser;
.source "CrashReportParserV3.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/carelib/profile/internal/CareStructParser<",
        "Lcom/texa/carelib/care/impacts/CrashReport;",
        ">;"
    }
.end annotation


# static fields
.field public static final DATA_LENGTH:I = 0x1c

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final INDEX_CLIENT_DEVICE_CONNECTED:I = 0xd

.field private static final INDEX_COEFFICIENT_U_G:I = 0x12

.field private static final INDEX_DETECTED:I = 0xe

.field private static final INDEX_INTENSITY:I = 0x10

.field private static final INDEX_STATUS:I = 0x14

.field private static final INDEX_TIMESTAMP:I = 0x9

.field private static final INDEX_TRIP_NUM:I = 0x5

.field private static final INDEX_VERBOSE_REPORT_POINTER:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/CareStructParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse([B)Lcom/texa/carelib/care/impacts/CrashReport;
    .locals 4

    .line 43
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    invoke-direct {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;-><init>()V

    .line 44
    invoke-virtual {v0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setRawData([B)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->parseBlockVersion([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setVersion(Ljava/lang/Integer;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->parseCrashID([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setCrashID(J)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 47
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->parseTimestamp([B)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->parseCrashReportStatus([B)Lcom/texa/carelib/care/impacts/CrashReportStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setCrashReportStatus(Lcom/texa/carelib/care/impacts/CrashReportStatus;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 49
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->parseIsClientDeviceConnected([B)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setIsClientDeviceConnected(Ljava/lang/Boolean;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->parseTripNumber([B)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setTripNumber(Ljava/lang/Long;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->parseCoefficientUg([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->parseIntensity([BLjava/lang/Integer;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->setIntensity(Ljava/lang/Long;)Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;

    .line 52
    invoke-virtual {v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportBuilder;->build()Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse([B)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->parse([B)Lcom/texa/carelib/care/impacts/CrashReport;

    move-result-object p1

    return-object p1
.end method

.method protected parseBlockVersion([B)I
    .locals 1

    const/4 v0, 0x4

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->getUnsignedByte([BI)Ljava/lang/Short;

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

.method protected parseCoefficientUg([B)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x12

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->getUnsignedChar([BI)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected parseCrashID([B)J
    .locals 2

    const/16 v0, 0x9

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 95
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReport;->CRASH_ID_UNDEF:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected parseCrashReportStatus([B)Lcom/texa/carelib/care/impacts/CrashReportStatus;
    .locals 5

    const/16 v0, 0x14

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 126
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->Valid:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p1

    :cond_0
    const-wide/16 v0, 0x3

    .line 127
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 128
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->ValidSimulated:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p1

    :cond_1
    const-wide/16 v0, 0x4

    .line 129
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 130
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->NotValidatedOverThreshold:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p1

    .line 133
    :cond_2
    sget-object p1, Lcom/texa/carelib/care/impacts/CrashReportStatus;->NotSupported:Lcom/texa/carelib/care/impacts/CrashReportStatus;

    return-object p1
.end method

.method protected parseIntensity([BLjava/lang/Integer;)Ljava/lang/Long;
    .locals 2

    const/16 v0, 0x10

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->getUnsignedChar([BI)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    mul-long v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected parseIsClientDeviceConnected([B)Ljava/lang/Boolean;
    .locals 2

    .line 80
    array-length v0, p1

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0xd

    .line 83
    aget-byte p1, p1, v0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected parseTimestamp([B)Ljava/util/Date;
    .locals 1

    const/16 v0, 0x9

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->getTimestamp([BI)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected parseTripNumber([B)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x5

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/impacts/internal/CrashReportParserV3;->getUnsignedInt([BI)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
