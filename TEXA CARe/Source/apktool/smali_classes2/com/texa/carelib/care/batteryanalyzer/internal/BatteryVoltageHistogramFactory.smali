.class public Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;
.super Ljava/lang/Object;
.source "BatteryVoltageHistogramFactory.java"


# static fields
.field public static final BLOCK_ID_LOW_POWER_RECENT_HISTOGRAM:I = 0xea04

.field public static final BLOCK_ID_LOW_POWER_TOTAL_HISTOGRAM:I = 0xea05

.field public static final BLOCK_ID_OPERATING_RECENT_HISTOGRAM:I = 0xea06

.field private static final HEADER_SIZE:I = 0x5

.field private static final INDEX_BLOCK_ID:I = 0x0

.field private static final INDEX_BLOCK_SIZE:I = 0x2

.field private static final INDEX_BLOCK_VERSION:I = 0x4

.field public static final TAG:Ljava/lang/String; = "BatteryVoltageHistogramFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create([B)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
    .locals 8

    .line 39
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;->getBlockID([B)I

    move-result v0

    .line 40
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;->getBlockVersion([B)I

    move-result v1

    .line 41
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;->getBlockSize([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 43
    sget-object v3, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Block version: %d"

    invoke-static {v3, v6, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v4, v4, [Ljava/lang/Object;

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    const-string v2, "Block size: %d"

    invoke-static {v3, v2, v4}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;->isValidBlockType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramFactory;->getParserByBlockVersion(I)Lcom/texa/carelib/profile/internal/CareStructParser;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/CareStructParser;->parse([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    return-object p1

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified data is not a battery voltage histogram!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getBlockID([B)I
    .locals 3

    .line 62
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 67
    :cond_0
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 68
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method protected getBlockSize([B)Ljava/lang/Integer;
    .locals 3

    .line 81
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 85
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 86
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getBlockVersion([B)I
    .locals 2

    .line 99
    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x4

    .line 102
    aget-byte p1, p1, v0

    return p1
.end method

.method protected getParserByBlockVersion(I)Lcom/texa/carelib/profile/internal/CareStructParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/texa/carelib/profile/internal/CareStructParser<",
            "Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance p1, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;

    invoke-direct {p1}, Lcom/texa/carelib/care/batteryanalyzer/internal/BatteryVoltageHistogramParserV1;-><init>()V

    return-object p1
.end method

.method protected isValidBlockType(I)Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0xea04

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0xea05

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xea06

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 129
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
