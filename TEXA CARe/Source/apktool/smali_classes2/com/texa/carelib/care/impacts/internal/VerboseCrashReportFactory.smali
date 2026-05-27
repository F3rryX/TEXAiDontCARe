.class public Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;
.super Ljava/lang/Object;
.source "VerboseCrashReportFactory.java"


# static fields
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

.field public static final TAG:Ljava/lang/String; = "VerboseCrashReportFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    sget-object v0, Lcom/texa/carelib/core/internal/CareStructID;->CRASH_REPORT_VERBOSE:Lcom/texa/carelib/core/internal/CareStructID;

    .line 152
    invoke-virtual {v0}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->SUPPORTED_BLOCK_ID:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getBlockID([B)I
    .locals 3

    .line 60
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 65
    :cond_0
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 66
    aget-byte p0, p0, v1

    shl-int/lit8 p0, p0, 0x8

    const v1, 0xff00

    and-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method protected static getBlockSize([B)Ljava/lang/Integer;
    .locals 3

    .line 80
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    .line 84
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 85
    aget-byte p0, p0, v1

    shl-int/lit8 p0, p0, 0x8

    const v1, 0xff00

    and-int/2addr p0, v1

    add-int/2addr v0, p0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected static getBlockVersion([B)I
    .locals 2

    .line 99
    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x4

    .line 102
    aget-byte p0, p0, v0

    return p0
.end method

.method public static isVerboseCrashReportBlock(I)Z
    .locals 1

    .line 114
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->SUPPORTED_BLOCK_ID:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isVerboseCrashReportBlock([B)Z
    .locals 0

    .line 127
    invoke-static {p0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->getBlockID([B)I

    move-result p0

    invoke-static {p0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->isVerboseCrashReportBlock(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public create([B)Lcom/texa/carelib/care/impacts/VerboseCrashReport;
    .locals 8

    .line 35
    invoke-static {p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->getBlockID([B)I

    move-result v0

    .line 36
    invoke-static {p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->getBlockVersion([B)I

    move-result v1

    .line 37
    invoke-static {p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->getBlockSize([B)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 39
    sget-object v3, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Block ID: %d"

    invoke-static {v3, v6, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v4, [Ljava/lang/Object;

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    const-string v2, "Block size: %d"

    invoke-static {v3, v2, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v4, [Ljava/lang/Object;

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    const-string v5, "Block version: %d"

    invoke-static {v3, v5, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {v0}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->isVerboseCrashReportBlock(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportFactory;->getParserByBlockVersion(I)Lcom/texa/carelib/profile/internal/CareStructParser;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/CareStructParser;->parse([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/impacts/VerboseCrashReport;

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v7

    const-string v0, "Invalid block ID: %04X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getParserByBlockVersion(I)Lcom/texa/carelib/profile/internal/CareStructParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/texa/carelib/profile/internal/CareStructParser<",
            "Lcom/texa/carelib/care/impacts/VerboseCrashReport;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 142
    new-instance p1, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;

    invoke-direct {p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV1;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 145
    new-instance p1, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;

    invoke-direct {p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV2;-><init>()V

    return-object p1

    .line 148
    :cond_1
    new-instance p1, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV3;

    invoke-direct {p1}, Lcom/texa/carelib/care/impacts/internal/VerboseCrashReportParserV3;-><init>()V

    return-object p1
.end method
