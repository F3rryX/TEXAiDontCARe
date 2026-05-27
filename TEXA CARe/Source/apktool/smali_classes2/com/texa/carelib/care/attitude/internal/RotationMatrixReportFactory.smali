.class public Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;
.super Ljava/lang/Object;
.source "RotationMatrixReportFactory.java"


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

.field public static final TAG:Ljava/lang/String; = "RotationMatrixReportFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    sget-object v0, Lcom/texa/carelib/core/internal/CareStructID;->ROTATION_MATRIX:Lcom/texa/carelib/core/internal/CareStructID;

    .line 134
    invoke-virtual {v0}, Lcom/texa/carelib/core/internal/CareStructID;->getID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;->SUPPORTED_BLOCK_ID:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getBlockID([B)I
    .locals 3

    .line 76
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 81
    :cond_0
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 82
    aget-byte p0, p0, v1

    shl-int/lit8 p0, p0, 0x8

    const v1, 0xff00

    and-int/2addr p0, v1

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public create([B)Lcom/texa/carelib/care/attitude/RotationMatrixReport;
    .locals 7

    .line 36
    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;->getBlockID([B)I

    move-result v0

    .line 40
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;->getBlockVersion([B)I

    move-result v1

    .line 41
    invoke-virtual {p0, p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;->getBlockSize([B)I

    move-result v2

    .line 43
    sget-object v3, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v2, "Block size: %d"

    invoke-static {v3, v2, v5}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v4, [Ljava/lang/Object;

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    const-string v5, "Block version: %d"

    invoke-static {v3, v5, v2}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;->isRotationMatrixInfoBlock(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0, v1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;->getParserByBlockVersion(I)Lcom/texa/carelib/profile/internal/CareStructParser;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/CareStructParser;->parse([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/attitude/RotationMatrixReport;

    return-object p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "Invalid block ID: %04X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getBlockSize([B)I
    .locals 3

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 100
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    const/4 v1, 0x3

    .line 101
    aget-byte p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method protected getBlockVersion([B)I
    .locals 2

    .line 115
    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x4

    .line 118
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method protected getParserByBlockVersion(I)Lcom/texa/carelib/profile/internal/CareStructParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/texa/carelib/profile/internal/CareStructParser<",
            "Lcom/texa/carelib/care/attitude/RotationMatrixReport;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance p1, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;

    invoke-direct {p1}, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportParserV1;-><init>()V

    return-object p1
.end method

.method protected isRotationMatrixInfoBlock(I)Z
    .locals 1

    .line 130
    sget-object v0, Lcom/texa/carelib/care/attitude/internal/RotationMatrixReportFactory;->SUPPORTED_BLOCK_ID:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
