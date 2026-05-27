.class public Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;
.super Ljava/lang/Object;
.source "CrankReportFactory.java"


# static fields
.field private static final HEADER_SIZE:I = 0x5

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field private static final SUPPORTED_BLOCK_ID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CrankReportFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    .line 130
    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRANK_REPORT_OPERATING:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/texa/carelib/core/internal/CareStructID;->CRANK_REPORT_STANDBY:Lcom/texa/carelib/core/internal/CareStructID;

    invoke-virtual {v1}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->SUPPORTED_BLOCK_ID:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create([B)Lcom/texa/carelib/care/batteryanalyzer/CrankReport;
    .locals 8

    .line 36
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->getBlockID([B)I

    move-result v0

    .line 37
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->getBlockVersion([B)I

    move-result v1

    .line 38
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->getBlockSize([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 40
    sget-object v3, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Block ID: %d"

    invoke-static {v3, v6, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v4, [Ljava/lang/Object;

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    const-string v2, "Block size: %d"

    invoke-static {v3, v2, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v4, [Ljava/lang/Object;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    const-string v4, "Block version: %d"

    invoke-static {v3, v4, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->isValidBlockType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->getParserByBlockVersion(I)Lcom/texa/carelib/profile/internal/CareStructParser;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/CareStructParser;->parse([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified data is not a crank report!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getBlockID([B)I
    .locals 3

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 65
    :cond_0
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 66
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method protected getBlockSize([B)Ljava/lang/Integer;
    .locals 3

    .line 79
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 83
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 84
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getBlockVersion([B)I
    .locals 2

    .line 97
    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x4

    .line 100
    aget-byte p1, p1, v0

    return p1
.end method

.method protected getParserByBlockVersion(I)Lcom/texa/carelib/profile/internal/CareStructParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/texa/carelib/profile/internal/CareStructParser<",
            "Lcom/texa/carelib/care/batteryanalyzer/CrankReport;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance p1, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;

    invoke-direct {p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportParserV1;-><init>()V

    return-object p1
.end method

.method protected isValidBlockType(I)Z
    .locals 1

    .line 127
    sget-object v0, Lcom/texa/carelib/care/batteryanalyzer/internal/CrankReportFactory;->SUPPORTED_BLOCK_ID:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
