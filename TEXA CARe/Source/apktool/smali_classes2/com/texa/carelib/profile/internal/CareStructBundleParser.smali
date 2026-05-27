.class abstract Lcom/texa/carelib/profile/internal/CareStructBundleParser;
.super Ljava/lang/Object;
.source "CareStructBundleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CareStructBundleParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected findNextBlock(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 137
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 138
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->getBlockID(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 141
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->getBlockSize(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 143
    invoke-static {v2}, Lcom/texa/carelib/core/internal/CareStructID;->isValidBlockID(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    .line 144
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected getBlockID(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method protected getBlockSize(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    .line 119
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    const v1, 0xff00

    and-int/2addr p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract onDataBlockFound(Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;)V
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 7

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    const/4 v1, 0x1

    .line 43
    :try_start_0
    sget-object v2, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->TAG:Ljava/lang/String;

    const-string v3, "Position: %d/%d. Remaining:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->getBlockID(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 46
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->getBlockSize(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_2

    .line 49
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->findNextBlock(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->getBlockID(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 58
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->getBlockSize(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 61
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_3

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    .line 68
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 70
    new-instance v4, Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;

    invoke-direct {v4, p0, v2, v3}, Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;-><init>(Lcom/texa/carelib/profile/internal/CareStructBundleParser;I[B)V

    invoke-virtual {p0, v4}, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->onDataBlockFound(Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    sget-object v2, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "An error is occurred while parsing block data."

    invoke-static {v2, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public parse([B)V
    .locals 1

    .line 28
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/CareStructBundleParser;->parse(Ljava/nio/ByteBuffer;)V

    return-void
.end method
